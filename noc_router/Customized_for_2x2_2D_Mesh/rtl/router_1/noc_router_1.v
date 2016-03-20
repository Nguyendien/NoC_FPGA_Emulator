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
`include "router_1_state_defines.v"

module noc_router_1 (clk, rst,
                  Rxy, // Cx, cur_addr,
                  L_RX, L_DRTS, L_CTS, L_TX, L_RTS, L_DCTS,
                  W_RX, W_DRTS, W_CTS, W_TX, W_RTS, W_DCTS,
                  S_RX, S_DRTS, S_CTS, S_TX, S_RTS, S_DCTS
                  );
                
  input                      clk, rst;
  input [7:0]                Rxy;                                                              // Routing bits set during reset                    
 // input [3:0]                Cx;                                                               // Connectivity bits set during reset        
 // input [`AXIS-1 : 0]        cur_addr;                                                         // currrent address of the router set during reset  
  input [`DATA_WIDTH-1 : 0]  L_RX, W_RX, S_RX;                                     // Incoming data from PREVIOUS router (or NI)
  input                      L_DRTS, W_DRTS, S_DRTS;                           // Incoming DRTS (Detect Request to Send) signal from PREVIOUS router (or NI)
  input                      L_DCTS, W_DCTS, S_DCTS;                           // Incoming DCTS (Detect Clear to Send) signal from NEXT router (or NI)
  
  output [`DATA_WIDTH-1 : 0] L_TX, W_TX, S_TX;                                     // Outgoing data to NEXT router(NI)
  output                     L_CTS, W_CTS, S_CTS;                                // Outgoing CTS (Clear to Send) signal to PREVIOUS router (or NI)
  output                     L_RTS, W_RTS, S_RTS;                                // Outgoing RTS (Request to Send) signal to NEXT router (or NI) 

  // Declaring the local variables
  wire                   rst_active_low; // NB: reset is avtive low!
  wire                   Wrd_en, Srd_en, Lrd_en;                                               // read enable for FIFO buffer
  wire [`DATA_WIDTH-1:0] Wfifo_data_out, Sfifo_data_out, Lfifo_data_out;       // data output from input FIFO buffer
  wire                   Wempty, Sempty, Lempty;                                               // empty signal from FIFO buffer to LBDR
  wire                   Wfifo_ready_out, Sfifo_ready_out, Lfifo_ready_out;  // FIFO ready signal send to flowcontrol
  wire [2:0]             Wflit_type, Sflit_type, Lflit_type;                                     // flit id type from FIFO buffer to LBDR and ARBITER
  wire [`AXIS-1 : 0]     Wdst_addr, Sdst_addr, Ldst_addr;                                // destination address from FIFO buffer to LBDR and ARBITER
  wire [11: 0]           Wlength, Slength, Llength;              // packet length sent to arbiter
  
  wire Winit_rd, Sinit_rd, Linit_rd;        //Send the initial read enable signal to FIFO
  
  wire WWport, WSport, WLport;                // Output port signals from W_LBDR
  wire SWport, SSport, SLport;                // Output port signals from S_LBDR
  wire LWport, LSport, LLport;                // Output port signals from L_LBDR
  
  wire WLfc_ready_out, WWfc_ready_out, WSfc_ready_out; // Ready signal coming out of WFLOWCONTROL once it has detected the output port to which data has to be sent
  wire SLfc_ready_out, SWfc_ready_out, SSfc_ready_out; // Ready signal coming out of SFLOWCONTROL once it has detected the output port to which data has to be sent
  wire LLfc_ready_out, LWfc_ready_out, LSfc_ready_out; // Ready signal coming out of LFLOWCONTROL once it has detected the output port to which data has to be sent
  
  wire [3:0]  Wnextstate, Snextstate, Lnextstate;         //Next state details from respective ARBITER
  wire        WLgrant, WWgrant, WSgrant;                        // Grant signal based on nextstate from Warbiter
  wire        SLgrant, SWgrant, SSgrant;                        // Grant signal based on nextstate from Sarbiter
  wire        LLgrant, LWgrant, LSgrant;                        // Grant signal based on nextstate from Larbiter
  
  wire [2:0]             Wsel_in, Ssel_in, Lsel_in;                                                                              // XBAR select signals
  wire [`DATA_WIDTH-1:0] Wdata_out_with_parity, Sdata_out_with_parity, Ldata_out_with_parity;        // Output data from XBAR to OUTPUT BUFFER
  wire                   Wvalidout, Svalidout, Lvalidout;        // Valid signal from XBAR to OUTPUT BUFFER
  
  reg [`AXIS-1 : 0]      cur_addr = 8'b0001;
  reg [3 : 0 ]			 Cx = 4'b1100;
  
  assign L_CTS = Lfifo_ready_out;
  assign W_CTS = Wfifo_ready_out;
  assign S_CTS = Sfifo_ready_out;
 
  // Reset is active low !
  assign rst_active_low = ~rst;
 
  // Connecting the grant signal to the respective FIFOs rd_en
  assign Wrd_en = Winit_rd || WWgrant || SWgrant || LWgrant;
  assign Srd_en = Sinit_rd || WSgrant || SSgrant || LSgrant;
  assign Lrd_en = Linit_rd || WLgrant || SLgrant || LLgrant;
  
  // Extract packet type, address & length from FIFO data out
  assign Wflit_type = Wfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Sflit_type = Sfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Lflit_type = Lfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  
  assign Wdst_addr = Wfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Sdst_addr = Sfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Ldst_addr = Lfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  
  assign Wlength = Wfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Slength = Sfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Llength = Lfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  
  // assigning the grant and select signals from the outputs of arbiters  
  assign WLgrant = Wnextstate[1];
  assign WWgrant = Wnextstate[2];
  assign WSgrant = Wnextstate[3];
  assign Wsel_in = Wnextstate[3:1];
  
  assign SLgrant = Snextstate[1];
  assign SWgrant = Snextstate[2];
  assign SSgrant = Snextstate[3];
  assign Ssel_in = Snextstate[3:1];
  
  assign LLgrant = Lnextstate[1];
  assign LWgrant = Lnextstate[2];
  assign LSgrant = Lnextstate[3];
  assign Lsel_in = Lnextstate[3:1];

  // Module Instantiations
  // FIFO
  fifo_onehot L_FIFO (clk, rst_active_low, L_DRTS, Lrd_en, L_RX,  Lfifo_data_out, Lempty, Lfifo_ready_out);
  fifo_onehot W_FIFO (clk, rst_active_low, W_DRTS, Wrd_en, W_RX,  Wfifo_data_out, Wempty, Wfifo_ready_out);
  fifo_onehot S_FIFO (clk, rst_active_low, S_DRTS, Srd_en, S_RX,  Sfifo_data_out, Sempty, Sfifo_ready_out);
  
  // INIT_READ
  init_read L_INIT (clk, rst_active_low, Lempty, Lflit_type, Linit_rd);
  init_read W_INIT (clk, rst_active_low, Wempty, Wflit_type, Winit_rd);
  init_read S_INIT (clk, rst_active_low, Sempty, Sflit_type, Sinit_rd);
  
  // LBDR
  LBDR L_LBDR (clk, rst_active_low, Lempty, Rxy, Cx, Lflit_type, Ldst_addr, cur_addr, LWport, LSport, LLport);
  LBDR W_LBDR (clk, rst_active_low, Wempty, Rxy, Cx, Wflit_type, Wdst_addr, cur_addr, WWport, WSport, WLport);
  LBDR S_LBDR (clk, rst_active_low, Sempty, Rxy, Cx, Sflit_type, Sdst_addr, cur_addr, SWport, SSport, SLport);
  
  // FLOWCONTROL
  flowcontrol L_FC (rst_active_low, LWport, LSport, LLport, L_DCTS, W_DCTS, S_DCTS, LLfc_ready_out, LWfc_ready_out, LSfc_ready_out);
  flowcontrol W_FC (rst_active_low, WWport, WSport, WLport, L_DCTS, W_DCTS, S_DCTS, WLfc_ready_out, WWfc_ready_out, WSfc_ready_out);
  flowcontrol S_FC (rst_active_low, SWport, SSport, SLport, L_DCTS, W_DCTS, S_DCTS, SLfc_ready_out, SWfc_ready_out, SSfc_ready_out);
  
  // ARBITER
  arbiter L_ARBITER (clk, rst_active_low, Lflit_type, Wflit_type, Sflit_type, Llength, Wlength, Slength, LLfc_ready_out, WLfc_ready_out, SLfc_ready_out, Lnextstate);
  arbiter W_ARBITER (clk, rst_active_low, Lflit_type, Wflit_type, Sflit_type, Llength, Wlength, Slength, LWfc_ready_out, WWfc_ready_out, SWfc_ready_out, Wnextstate);
  arbiter S_ARBITER (clk, rst_active_low, Lflit_type, Wflit_type, Sflit_type, Llength, Wlength, Slength, LSfc_ready_out, WSfc_ready_out, SSfc_ready_out, Snextstate);
  
  // CROSSBAR SWITCH
  xbar L_XBAR (Lsel_in, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Ldata_out_with_parity, Lvalidout);
  xbar W_XBAR (Wsel_in, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Wdata_out_with_parity, Wvalidout);
  xbar S_XBAR (Ssel_in, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Sdata_out_with_parity, Svalidout);
  
  // OUTPUT BUFFER
  output_buffer L_OUTPUT_BUFFER (clk, rst_active_low, (L_DCTS && Lvalidout), Ldata_out_with_parity, L_TX, L_RTS);
  output_buffer W_OUTPUT_BUFFER (clk, rst_active_low, (W_DCTS && Wvalidout), Wdata_out_with_parity, W_TX, W_RTS);
  output_buffer S_OUTPUT_BUFFER (clk, rst_active_low, (S_DCTS && Svalidout), Sdata_out_with_parity, S_TX, S_RTS);
 
endmodule
