/********************
* Filename:     noc_router.v
* Description:  NOC Router Architecture with minimal functionality that contains the data path of 5 port(North, East, West, South, Local) 
                Input port FIFO buffer along with Control Path of LBDR and the arbiter. 
                Each Input port buffer has got LBDR routing module and the arbiter sends the grant coming from one of the LBDR 
                based on Round-Robin scheduling to the port decoder which asserts the respective read enable along with the 
                select lines to select the output port for the crossbar switch. 
                Active high control signals. Reset signal is active high synchronous reset
*
* $Revision: 36 $
* $Id: noc_router.v 36 2016-02-20 16:43:26Z ranga $
* $Date: 2016-02-20 18:43:26 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "../../include/parameters.v"
`include "../common/fifo_onehot.v"
`include "../common/init_read.v"
`include "../common/output_buffer.v"
`include "router_3_state_defines.v"

module noc_router_3 (clk, rst,
                  Rxy, // Cx, cur_addr,
                  L_RX, L_DRTS, L_CTS, L_TX, L_RTS, L_DCTS,
                  N_RX, N_DRTS, N_CTS, N_TX, N_RTS, N_DCTS,
                  W_RX, W_DRTS, W_CTS, W_TX, W_RTS, W_DCTS,
                  );
                
  input                      clk, rst;
  input [7:0]                Rxy;                                                              // Routing bits set during reset                    
 // input [3:0]                Cx;                                                               // Connectivity bits set during reset        
 // input [`AXIS-1 : 0]        cur_addr;                                                         // currrent address of the router set during reset  
  input [`DATA_WIDTH-1 : 0]  L_RX, N_RX, W_RX;                                     // Incoming data from PREVIOUS router (or NI)
  input                      L_DRTS, N_DRTS, W_DRTS;                           // Incoming DRTS (Detect Request to Send) signal from PREVIOUS router (or NI)
  input                      L_DCTS, N_DCTS, W_DCTS;                           // Incoming DCTS (Detect Clear to Send) signal from NEXT router (or NI)
  
  output [`DATA_WIDTH-1 : 0] L_TX, N_TX, W_TX;                                     // Outgoing data to NEXT router(NI)
  output                     L_CTS, N_CTS, W_CTS;                                // Outgoing CTS (Clear to Send) signal to PREVIOUS router (or NI)
  output                     L_RTS, N_RTS, W_RTS;                                // Outgoing RTS (Request to Send) signal to NEXT router (or NI) 

  // Declaring the local variables
  wire                   rst_active_low; // NB: reset is avtive low!
  wire                   Nrd_en, Wrd_en, Lrd_en;                                               // read enable for FIFO buffer
  wire [`DATA_WIDTH-1:0] Nfifo_data_out, Wfifo_data_out, Lfifo_data_out;       // data output from input FIFO buffer
  wire                   Nempty, Wempty, Lempty;                                               // empty signal from FIFO buffer to LBDR
  wire                   Nfifo_ready_out, Wfifo_ready_out, Lfifo_ready_out;  // FIFO ready signal send to flowcontrol
  wire [2:0]             Nflit_type, Wflit_type, Lflit_type;                                     // flit id type from FIFO buffer to LBDR and ARBITER
  wire [`AXIS-1 : 0]     Ndst_addr, Wdst_addr, Ldst_addr;                                // destination address from FIFO buffer to LBDR and ARBITER
  wire [11: 0]           Nlength, Wlength, Llength;              // packet length sent to arbiter
  
  wire Ninit_rd, Winit_rd, Linit_rd;        //Send the initial read enable signal to FIFO
  
  wire NNport, NWport, NLport;                // Output port signals from N_LBDR
  wire WNport, WWport, WLport;                // Output port signals from W_LBDR
  wire LNport, LWport, LLport;                // Output port signals from L_LBDR
  
  wire NLfc_ready_out, NNfc_ready_out, NWfc_ready_out; // Ready signal coming out of NFLOWCONTROL once it has detected the output port to which data has to be sent
  wire WLfc_ready_out, WNfc_ready_out, WWfc_ready_out; // Ready signal coming out of WFLOWCONTROL once it has detected the output port to which data has to be sent
  wire LLfc_ready_out, LNfc_ready_out, LWfc_ready_out; // Ready signal coming out of LFLOWCONTROL once it has detected the output port to which data has to be sent
  
  wire [3:0]  Nnextstate, Wnextstate, Lnextstate;         		// Next state details from respective ARBITER
  wire        NLgrant, NNgrant, NWgrant;                        // Grant signal based on nextstate from Narbiter
  wire        WLgrant, WNgrant, WWgrant;                        // Grant signal based on nextstate from Warbiter
  wire        LLgrant, LNgrant, LWgrant;                        // Grant signal based on nextstate from Larbiter
  
  wire [2:0]             Nsel_in, Wsel_in, Lsel_in;                                                                              // XBAR select signals
  wire [`DATA_WIDTH-1:0] Ndata_out_with_parity, Wdata_out_with_parity, Ldata_out_with_parity;        // Output data from XBAR to OUTPUT BUFFER
  wire                   Nvalidout, Wvalidout, Lvalidout;        // Valid signal from XBAR to OUTPUT BUFFER
  
  reg [`AXIS-1 : 0]      cur_addr = 8'b0011;
  reg [3 : 0 ]			 Cx = 4'b0101;


  assign L_CTS = Lfifo_ready_out;
  assign N_CTS = Nfifo_ready_out;
  assign W_CTS = Wfifo_ready_out;
 
  // Reset is active low !
  assign rst_active_low = ~rst;
 
  // Connecting the grant signal to the respective FIFOs rd_en
  assign Nrd_en = Ninit_rd || NNgrant || WNgrant || LNgrant;
  assign Wrd_en = Winit_rd || NWgrant || WWgrant || LWgrant;
  assign Lrd_en = Linit_rd || NLgrant || WLgrant || LLgrant;
  
  // Extract packet type, address & length from FIFO data out
  assign Nflit_type = Nfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Wflit_type = Wfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Lflit_type = Lfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  
  assign Ndst_addr = Nfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Wdst_addr = Wfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Ldst_addr = Lfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  
  assign Nlength = Nfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Wlength = Wfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Llength = Lfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  
  // assigning the grant and select signals from the outputs of arbiters
  assign NLgrant = Nnextstate[1];
  assign NNgrant = Nnextstate[2];
  assign NWgrant = Nnextstate[3];
  assign Nsel_in = Nnextstate[3:1];
  
  assign WLgrant = Wnextstate[1];
  assign WNgrant = Wnextstate[2];
  assign WWgrant = Wnextstate[3];
  assign Wsel_in = Wnextstate[3:1];
  
  assign LLgrant = Lnextstate[1];
  assign LNgrant = Lnextstate[2];
  assign LWgrant = Lnextstate[3];
  assign Lsel_in = Lnextstate[3:1];

  // Module Instantiations
  // FIFO
  fifo_onehot L_FIFO (clk, rst_active_low, L_DRTS, Lrd_en, L_RX,  Lfifo_data_out, Lempty, Lfifo_ready_out);
  fifo_onehot N_FIFO (clk, rst_active_low, N_DRTS, Nrd_en, N_RX,  Nfifo_data_out, Nempty, Nfifo_ready_out);
  fifo_onehot W_FIFO (clk, rst_active_low, W_DRTS, Wrd_en, W_RX,  Wfifo_data_out, Wempty, Wfifo_ready_out);
  
  // INIT_READ
  init_read L_INIT (clk, rst_active_low, Lempty, Lflit_type, Linit_rd);
  init_read N_INIT (clk, rst_active_low, Nempty, Nflit_type, Ninit_rd);
  init_read W_INIT (clk, rst_active_low, Wempty, Wflit_type, Winit_rd);
  
  // LBDR
  LBDR L_LBDR (clk, rst_active_low, Lempty, Rxy, Cx, Lflit_type, Ldst_addr, cur_addr, LNport, LWport, LLport);
  LBDR N_LBDR (clk, rst_active_low, Nempty, Rxy, Cx, Nflit_type, Ndst_addr, cur_addr, NNport, NWport, NLport);
  LBDR W_LBDR (clk, rst_active_low, Wempty, Rxy, Cx, Wflit_type, Wdst_addr, cur_addr, WNport, WWport, WLport);
  
  // FLOWCONTROL
  flowcontrol L_FC (rst_active_low, LNport, LWport, LLport, L_DCTS, N_DCTS, W_DCTS, LLfc_ready_out, LNfc_ready_out, LWfc_ready_out);
  flowcontrol N_FC (rst_active_low, NNport, NWport, NLport, L_DCTS, N_DCTS, W_DCTS, NLfc_ready_out, NNfc_ready_out, NWfc_ready_out);
  flowcontrol W_FC (rst_active_low, WNport, WWport, WLport, L_DCTS, N_DCTS, W_DCTS, WLfc_ready_out, WNfc_ready_out, WWfc_ready_out);
  
  // ARBITER
  arbiter L_ARBITER (clk, rst_active_low, Lflit_type, Nflit_type, Wflit_type, Llength, Nlength, Wlength, LLfc_ready_out, NLfc_ready_out, WLfc_ready_out, Lnextstate);
  arbiter N_ARBITER (clk, rst_active_low, Lflit_type, Nflit_type, Wflit_type, Llength, Nlength, Wlength, LNfc_ready_out, NNfc_ready_out, WNfc_ready_out, Nnextstate);
  arbiter W_ARBITER (clk, rst_active_low, Lflit_type, Nflit_type, Wflit_type, Llength, Nlength, Wlength, LWfc_ready_out, NWfc_ready_out, WWfc_ready_out, Wnextstate);
  
  // CROSSBAR SWITCH
  xbar L_XBAR (Lsel_in, Nfifo_data_out, Wfifo_data_out, Lfifo_data_out, Ldata_out_with_parity, Lvalidout);
  xbar N_XBAR (Nsel_in, Nfifo_data_out, Wfifo_data_out, Lfifo_data_out, Ndata_out_with_parity, Nvalidout);
  xbar W_XBAR (Wsel_in, Nfifo_data_out, Wfifo_data_out, Lfifo_data_out, Wdata_out_with_parity, Wvalidout);
  
  // OUTPUT BUFFER
  output_buffer L_OUTPUT_BUFFER (clk, rst_active_low, (L_DCTS && Lvalidout), Ldata_out_with_parity, L_TX, L_RTS);
  output_buffer N_OUTPUT_BUFFER (clk, rst_active_low, (N_DCTS && Nvalidout), Ndata_out_with_parity, N_TX, N_RTS);
  output_buffer W_OUTPUT_BUFFER (clk, rst_active_low, (W_DCTS && Wvalidout), Wdata_out_with_parity, W_TX, W_RTS);
 
endmodule
