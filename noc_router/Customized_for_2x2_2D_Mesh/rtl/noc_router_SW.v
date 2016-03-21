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
`include "../include/parameters.v"
`include "../include/state_defines.v"

module noc_router_SW(clk, rst,
                  Rxy, Cx, cur_addr,
                  L_RX, L_DRTS, L_CTS, L_TX, L_RTS, L_DCTS,
				  N_RX, N_DRTS, N_CTS, N_TX, N_RTS, N_DCTS,
                  E_RX, E_DRTS, E_CTS, E_TX, E_RTS, E_DCTS,
                );
                
  input                      clk, rst;
  input [7:0]                Rxy;                                                              // Routing bits set during reset                    
  input [3:0]                Cx;                                                               // Connectivity bits set during reset        
  input [`AXIS-1 : 0]        cur_addr;                                                         // currrent address of the router set during reset  
  input [`DATA_WIDTH-1 : 0]  N_RX, L_RX, E_RX;                                     // Incoming data from PREVIOUS router (or NI)
  input                      N_DRTS, L_DRTS, E_DRTS;                           // Incoming DRTS (Detect Request to Send) signal from PREVIOUS router (or NI)
  input                      N_DCTS, L_DCTS, E_DCTS;                           // Incoming DCTS (Detect Clear to Send) signal from NEXT router (or NI)
  
  output [`DATA_WIDTH-1 : 0] N_TX, L_TX, E_TX;                                     // Outgoing data to NEXT router(NI)
  output                     N_CTS, L_CTS, E_CTS;                                // Outgoing CTS (Clear to Send) signal to PREVIOUS router (or NI)
  output                     N_RTS, L_RTS, E_RTS;                                // Outgoing RTS (Request to Send) signal to NEXT router (or NI) 

  // Declaring the local variables
  wire                   rst_active_low; // NB: reset is active low!
  wire                   Nrd_en, Erd_en, Lrd_en;                                               // read enable for FIFO buffer
  wire [`DATA_WIDTH-1:0] Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out;       // data output from input FIFO buffer
  wire                   Nempty, Eempty, Lempty;                                               // empty signal from FIFO buffer to LBDR
  wire                   Nfifo_ready_out, Efifo_ready_out, Lfifo_ready_out;  // FIFO ready signal send to flowcontrol
  wire [2:0]             Nflit_id, Eflit_id, Wflit_id, Sflit_id, Lflit_id;                                     // flit id type from FIFO buffer to LBDR and ARBITER
  wire [`AXIS-1 : 0]     Ndst_addr, Edst_addr, Ldst_addr;                                // destination address from FIFO buffer to LBDR and ARBITER
  wire [11: 0]           Nlength, Elength, Wlength, Slength, Llength;              // packet length sent to arbiter
  
  wire Ninit_rd, Einit_rd, Linit_rd;        //Send the initial read enable signal to FIFO
  
  wire NNport, NEport, NWport, NSport, NLport;                // Output port signals from N_LBDR
  wire ENport, EEport, EWport, ESport, ELport;                // Output port signals from E_LBDR
  wire LNport, LEport, LWport, LSport, LLport;                // Output port signals from L_LBDR
  
  wire NLfc_ready_out, NNfc_ready_out, NEfc_ready_out, NWfc_ready_out, NSfc_ready_out; // Ready signal coming out of NFLOWCONTROL once it has detected the output port to which data has to be sent
  wire ELfc_ready_out, ENfc_ready_out, EEfc_ready_out, EWfc_ready_out, ESfc_ready_out; // Ready signal coming out of EFLOWCONTROL once it has detected the output port to which data has to be sent
  wire WLfc_ready_out, WNfc_ready_out, WEfc_ready_out, WWfc_ready_out, WSfc_ready_out; // Ready signal coming out of WFLOWCONTROL once it has detected the output port to which data has to be sent
  wire SLfc_ready_out, SNfc_ready_out, SEfc_ready_out, SWfc_ready_out, SSfc_ready_out; // Ready signal coming out of SFLOWCONTROL once it has detected the output port to which data has to be sent
  wire LLfc_ready_out, LNfc_ready_out, LEfc_ready_out, LWfc_ready_out, LSfc_ready_out; // Ready signal coming out of LFLOWCONTROL once it has detected the output port to which data has to be sent
  
  wire [5:0]  Nnextstate, Enextstate, Wnextstate, Snextstate, Lnextstate;         //Next state details from respective ARBITER
  wire        NLgrant, NNgrant, NEgrant;                        // Grant signal based on nextstate from Narbiter
  wire        ELgrant, ENgrant, EEgrant;                        // Grant signal based on nextstate from Earbiter
  wire        LLgrant, LNgrant, LEgrant;                        // Grant signal based on nextstate from Larbiter
  
  wire [4:0]             Nsel_in, Esel_in, Lsel_in;                                                                              // XBAR select signals
  wire [`DATA_WIDTH-1:0] Ndata_out_with_parity, Edata_out_with_parity, Ldata_out_with_parity;        // Output data from XBAR to OUTPUT BUFFER
  wire                   Nvalidout, Evalidout, Lvalidout;        // Valid signal from XBAR to OUTPUT BUFFER
  
  assign L_CTS = Lfifo_ready_out;
  assign N_CTS = Nfifo_ready_out;
  assign E_CTS = Efifo_ready_out;
 
  // Reset is active low !
  assign rst_active_low = ~rst;
 
  // Connecting the grant signal to the respective FIFOs rd_en
  assign Nrd_en = Ninit_rd || NNgrant || ENgrant || LNgrant;
  assign Erd_en = Einit_rd || NEgrant || EEgrant || LEgrant;
  assign Lrd_en = Linit_rd || NLgrant || ELgrant || LLgrant;
  
  // Extract packet type, address & length from FIFO data out
  assign Nflit_id = Nfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Eflit_id = Efifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Wflit_id = Wfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Sflit_id = Sfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Lflit_id = Lfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  
  assign Ndst_addr = Nfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Edst_addr = Efifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Ldst_addr = Lfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  
  assign Nlength = Nfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Elength = Efifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Llength = Lfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  
  // assigning the grant and select signals from the outputs of arbiters
  assign NLgrant = Nnextstate[1];
  assign NNgrant = Nnextstate[2];
  assign NEgrant = Nnextstate[3];
  assign Nsel_in = Nnextstate[5:1];
  
  assign ELgrant = Enextstate[1];
  assign ENgrant = Enextstate[2];
  assign EEgrant = Enextstate[3];
  assign Esel_in = Enextstate[5:1];
  
  assign LLgrant = Lnextstate[1];
  assign LNgrant = Lnextstate[2];
  assign LEgrant = Lnextstate[3];
  assign Lsel_in = Lnextstate[5:1];

  // Module Instantiations
  // FIFO
  fifo_onehot L_FIFO (clk, rst_active_low, L_DRTS, Lrd_en, L_RX,  Lfifo_data_out, Lempty, Lfifo_ready_out);
  fifo_onehot N_FIFO (clk, rst_active_low, N_DRTS, Nrd_en, N_RX,  Nfifo_data_out, Nempty, Nfifo_ready_out);
  fifo_onehot E_FIFO (clk, rst_active_low, E_DRTS, Erd_en, E_RX,  Efifo_data_out, Eempty, Efifo_ready_out);
  
  // INIT_READ
  init_read L_INIT (clk, rst_active_low, Lempty, Lflit_id, Linit_rd);
  init_read N_INIT (clk, rst_active_low, Nempty, Nflit_id, Ninit_rd);
  init_read E_INIT (clk, rst_active_low, Eempty, Eflit_id, Einit_rd);
  
  // LBDR
  LBDR L_LBDR (clk, rst_active_low, Lempty, Rxy, Cx, Lflit_id, Ldst_addr, cur_addr, LNport, LEport, LWport, LSport, LLport);
  LBDR N_LBDR (clk, rst_active_low, Nempty, Rxy, Cx, Nflit_id, Ndst_addr, cur_addr, NNport, NEport, NWport, NSport, NLport);
  LBDR E_LBDR (clk, rst_active_low, Eempty, Rxy, Cx, Eflit_id, Edst_addr, cur_addr, ENport, EEport, EWport, ESport, ELport);
  
  // FLOWCONTROL
  flowcontrol L_FC (rst_active_low, LNport, LEport, LWport, LSport, LLport, L_DCTS, N_DCTS, E_DCTS, 1'b0, 1'b0, LLfc_ready_out, LNfc_ready_out, LEfc_ready_out, LWfc_ready_out, LSfc_ready_out);
  flowcontrol N_FC (rst_active_low, NNport, NEport, NWport, NSport, NLport, L_DCTS, N_DCTS, E_DCTS, 1'b0, 1'b0, NLfc_ready_out, NNfc_ready_out, NEfc_ready_out, NWfc_ready_out, NSfc_ready_out);
  flowcontrol E_FC (rst_active_low, ENport, EEport, EWport, ESport, ELport, L_DCTS, N_DCTS, E_DCTS, 1'b0, 1'b0, ELfc_ready_out, ENfc_ready_out, EEfc_ready_out, EWfc_ready_out, ESfc_ready_out);
  
  // ARBITER
  arbiter L_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LLfc_ready_out, NLfc_ready_out, ELfc_ready_out, WLfc_ready_out, SLfc_ready_out, Lnextstate);
  arbiter N_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LNfc_ready_out, NNfc_ready_out, ENfc_ready_out, WNfc_ready_out, SNfc_ready_out, Nnextstate);
  arbiter E_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LEfc_ready_out, NEfc_ready_out, EEfc_ready_out, WEfc_ready_out, SEfc_ready_out, Enextstate);
  
  // CROSSBAR SWITCH
  xbar L_XBAR (Lsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Ldata_out_with_parity, Lvalidout);
  xbar N_XBAR (Nsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Ndata_out_with_parity, Nvalidout);
  xbar E_XBAR (Esel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Edata_out_with_parity, Evalidout);
  
  // OUTPUT BUFFER
  output_buffer L_OUTPUT_BUFFER (clk, rst_active_low, (L_DCTS && Lvalidout), Ldata_out_with_parity, L_TX, L_RTS);
  output_buffer N_OUTPUT_BUFFER (clk, rst_active_low, (N_DCTS && Nvalidout), Ndata_out_with_parity, N_TX, N_RTS);
  output_buffer E_OUTPUT_BUFFER (clk, rst_active_low, (E_DCTS && Evalidout), Edata_out_with_parity, E_TX, E_RTS);
 
endmodule
