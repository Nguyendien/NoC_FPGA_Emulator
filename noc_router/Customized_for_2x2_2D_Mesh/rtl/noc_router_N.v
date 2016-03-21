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

module noc_router_N(clk, rst,
                  Rxy, Cx, cur_addr,
                  L_RX, L_DRTS, L_CTS, L_TX, L_RTS, L_DCTS,
                  E_RX, E_DRTS, E_CTS, E_TX, E_RTS, E_DCTS,
                  W_RX, W_DRTS, W_CTS, W_TX, W_RTS, W_DCTS,
                  S_RX, S_DRTS, S_CTS, S_TX, S_RTS, S_DCTS
                );
                
  input                      clk, rst;
  input [7:0]                Rxy;                                                              // Routing bits set during reset                    
  input [3:0]                Cx;                                                               // Connectivity bits set during reset        
  input [`AXIS-1 : 0]        cur_addr;                                                         // currrent address of the router set during reset  
  input [`DATA_WIDTH-1 : 0]  L_RX, E_RX, W_RX, S_RX;                                     // Incoming data from PREVIOUS router (or NI)
  input                      L_DRTS, E_DRTS, W_DRTS, S_DRTS;                           // Incoming DRTS (Detect Request to Send) signal from PREVIOUS router (or NI)
  input                      L_DCTS, E_DCTS, W_DCTS, S_DCTS;                           // Incoming DCTS (Detect Clear to Send) signal from NEXT router (or NI)
  
  output [`DATA_WIDTH-1 : 0] L_TX, E_TX, W_TX, S_TX;                                     // Outgoing data to NEXT router(NI)
  output                     L_CTS, E_CTS, W_CTS, S_CTS;                                // Outgoing CTS (Clear to Send) signal to PREVIOUS router (or NI)
  output                     L_RTS, E_RTS, W_RTS, S_RTS;                                // Outgoing RTS (Request to Send) signal to NEXT router (or NI) 

  // Declaring the local variables
  wire                   rst_active_low; // NB: reset is active low!
  wire                   Erd_en, Wrd_en, Srd_en, Lrd_en;                                               // read enable for FIFO buffer
  wire [`DATA_WIDTH-1:0] Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out;       // data output from input FIFO buffer
  wire                   Eempty, Wempty, Sempty, Lempty;                                               // empty signal from FIFO buffer to LBDR
  wire                   Efifo_ready_out, Wfifo_ready_out, Sfifo_ready_out, Lfifo_ready_out;  // FIFO ready signal send to flowcontrol
  wire [2:0]             Nflit_id, Eflit_id, Wflit_id, Sflit_id, Lflit_id;                                     // flit id type from FIFO buffer to LBDR and ARBITER
  wire [`AXIS-1 : 0]     Edst_addr, Wdst_addr, Sdst_addr, Ldst_addr;                                // destination address from FIFO buffer to LBDR and ARBITER
  wire [11: 0]           Nlength, Elength, Wlength, Slength, Llength;              // packet length sent to arbiter
  
  wire Einit_rd, Winit_rd, Sinit_rd, Linit_rd;        //Send the initial read enable signal to FIFO
  
  wire EEport, EWport, ESport, ELport;                // Output port signals from E_LBDR
  wire WEport, WWport, WSport, WLport;                // Output port signals from W_LBDR
  wire SEport, SWport, SSport, SLport;                // Output port signals from S_LBDR
  wire LEport, LWport, LSport, LLport;                // Output port signals from L_LBDR
  
  wire NLfc_ready_out, NNfc_ready_out, NEfc_ready_out, NWfc_ready_out, NSfc_ready_out; // Ready signal coming out of NFLOWCONTROL once it has detected the output port to which data has to be sent
  wire ELfc_ready_out, ENfc_ready_out, EEfc_ready_out, EWfc_ready_out, ESfc_ready_out; // Ready signal coming out of EFLOWCONTROL once it has detected the output port to which data has to be sent
  wire WLfc_ready_out, WNfc_ready_out, WEfc_ready_out, WWfc_ready_out, WSfc_ready_out; // Ready signal coming out of WFLOWCONTROL once it has detected the output port to which data has to be sent
  wire SLfc_ready_out, SNfc_ready_out, SEfc_ready_out, SWfc_ready_out, SSfc_ready_out; // Ready signal coming out of SFLOWCONTROL once it has detected the output port to which data has to be sent
  wire LLfc_ready_out, LNfc_ready_out, LEfc_ready_out, LWfc_ready_out, LSfc_ready_out; // Ready signal coming out of LFLOWCONTROL once it has detected the output port to which data has to be sent
  
  wire [5:0]  Nnextstate, Enextstate, Wnextstate, Snextstate, Lnextstate;         //Next state details from respective ARBITER
  wire        ELgrant, EEgrant, EWgrant, ESgrant;                        // Grant signal based on nextstate from Earbiter
  wire        WLgrant, WEgrant, WWgrant, WSgrant;                        // Grant signal based on nextstate from Warbiter
  wire        SLgrant, SEgrant, SWgrant, SSgrant;                        // Grant signal based on nextstate from Sarbiter
  wire        LLgrant, LEgrant, LWgrant, LSgrant;                        // Grant signal based on nextstate from Larbiter
  
  wire [4:0]             Esel_in, Wsel_in, Ssel_in, Lsel_in;                                                                              // XBAR select signals
  wire [`DATA_WIDTH-1:0] Edata_out_with_parity, Wdata_out_with_parity, Sdata_out_with_parity, Ldata_out_with_parity;        // Output data from XBAR to OUTPUT BUFFER
  wire                   Evalidout, Wvalidout, Svalidout, Lvalidout;        // Valid signal from XBAR to OUTPUT BUFFER
  
  assign L_CTS = Lfifo_ready_out;
  assign E_CTS = Efifo_ready_out;
  assign W_CTS = Wfifo_ready_out;
  assign S_CTS = Sfifo_ready_out;
 
  // Reset is active low !
  assign rst_active_low = ~rst;
 
  // Connecting the grant signal to the respective FIFOs rd_en
  assign Erd_en = Einit_rd || EEgrant || WEgrant || SEgrant || LEgrant;
  assign Wrd_en = Winit_rd || EWgrant || WWgrant || SWgrant || LWgrant;
  assign Srd_en = Sinit_rd || ESgrant || WSgrant || SSgrant || LSgrant;
  assign Lrd_en = Linit_rd || ELgrant || WLgrant || SLgrant || LLgrant;
  
  // Extract packet type, address & length from FIFO data out
  assign Nflit_id = Nfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Eflit_id = Efifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Wflit_id = Wfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Sflit_id = Sfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Lflit_id = Lfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  
  assign Edst_addr = Efifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Wdst_addr = Wfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Sdst_addr = Sfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Ldst_addr = Lfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  
  assign Elength = Efifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Wlength = Wfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Slength = Sfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Llength = Lfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  
  // assigning the grant and select signals from the outputs of arbiters
    
  assign ELgrant = Enextstate[1];
  assign EEgrant = Enextstate[3];
  assign EWgrant = Enextstate[4];
  assign ESgrant = Enextstate[5];
  assign Esel_in = Enextstate[5:1];
  
  assign WLgrant = Wnextstate[1];
  assign WEgrant = Wnextstate[3];
  assign WWgrant = Wnextstate[4];
  assign WSgrant = Wnextstate[5];
  assign Wsel_in = Wnextstate[5:1];
  
  assign SLgrant = Snextstate[1];
  assign SEgrant = Snextstate[3];
  assign SWgrant = Snextstate[4];
  assign SSgrant = Snextstate[5];
  assign Ssel_in = Snextstate[5:1];
  
  assign LLgrant = Lnextstate[1];
  assign LEgrant = Lnextstate[3];
  assign LWgrant = Lnextstate[4];
  assign LSgrant = Lnextstate[5];
  assign Lsel_in = Lnextstate[5:1];

  // Module Instantiations
  // FIFO
  fifo_onehot L_FIFO (clk, rst_active_low, L_DRTS, Lrd_en, L_RX,  Lfifo_data_out, Lempty, Lfifo_ready_out);
  fifo_onehot E_FIFO (clk, rst_active_low, E_DRTS, Erd_en, E_RX,  Efifo_data_out, Eempty, Efifo_ready_out);
  fifo_onehot W_FIFO (clk, rst_active_low, W_DRTS, Wrd_en, W_RX,  Wfifo_data_out, Wempty, Wfifo_ready_out);
  fifo_onehot S_FIFO (clk, rst_active_low, S_DRTS, Srd_en, S_RX,  Sfifo_data_out, Sempty, Sfifo_ready_out);
  
  // INIT_READ
  init_read L_INIT (clk, rst_active_low, Lempty, Lflit_id, Linit_rd);
  init_read E_INIT (clk, rst_active_low, Eempty, Eflit_id, Einit_rd);
  init_read W_INIT (clk, rst_active_low, Wempty, Wflit_id, Winit_rd);
  init_read S_INIT (clk, rst_active_low, Sempty, Sflit_id, Sinit_rd);
  
  // LBDR
  LBDR L_LBDR (clk, rst_active_low, Lempty, Rxy, Cx, Lflit_id, Ldst_addr, cur_addr, LNport, LEport, LWport, LSport, LLport);
  LBDR E_LBDR (clk, rst_active_low, Eempty, Rxy, Cx, Eflit_id, Edst_addr, cur_addr, ENport, EEport, EWport, ESport, ELport);
  LBDR W_LBDR (clk, rst_active_low, Wempty, Rxy, Cx, Wflit_id, Wdst_addr, cur_addr, WNport, WEport, WWport, WSport, WLport);
  LBDR S_LBDR (clk, rst_active_low, Sempty, Rxy, Cx, Sflit_id, Sdst_addr, cur_addr, SNport, SEport, SWport, SSport, SLport);
  
  // FLOWCONTROL
  flowcontrol L_FC (rst_active_low, LNport, LEport, LWport, LSport, LLport, L_DCTS, 1'b0, E_DCTS, W_DCTS, S_DCTS, LLfc_ready_out, LNfc_ready_out, LEfc_ready_out, LWfc_ready_out, LSfc_ready_out);
  flowcontrol E_FC (rst_active_low, ENport, EEport, EWport, ESport, ELport, L_DCTS, 1'b0, E_DCTS, W_DCTS, S_DCTS, ELfc_ready_out, ENfc_ready_out, EEfc_ready_out, EWfc_ready_out, ESfc_ready_out);
  flowcontrol W_FC (rst_active_low, WNport, WEport, WWport, WSport, WLport, L_DCTS, 1'b0, E_DCTS, W_DCTS, S_DCTS, WLfc_ready_out, WNfc_ready_out, WEfc_ready_out, WWfc_ready_out, WSfc_ready_out);
  flowcontrol S_FC (rst_active_low, SNport, SEport, SWport, SSport, SLport, L_DCTS, 1'b0, E_DCTS, W_DCTS, S_DCTS, SLfc_ready_out, SNfc_ready_out, SEfc_ready_out, SWfc_ready_out, SSfc_ready_out);
  
  // ARBITER
  arbiter L_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LLfc_ready_out, NLfc_ready_out, ELfc_ready_out, WLfc_ready_out, SLfc_ready_out, Lnextstate);
  arbiter E_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LEfc_ready_out, NEfc_ready_out, EEfc_ready_out, WEfc_ready_out, SEfc_ready_out, Enextstate);
  arbiter W_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LWfc_ready_out, NWfc_ready_out, EWfc_ready_out, WWfc_ready_out, SWfc_ready_out, Wnextstate);
  arbiter S_ARBITER (clk, rst_active_low, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LSfc_ready_out, NSfc_ready_out, ESfc_ready_out, WSfc_ready_out, SSfc_ready_out, Snextstate);
  
  // CROSSBAR SWITCH
  xbar L_XBAR (Lsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Ldata_out_with_parity, Lvalidout);
  xbar E_XBAR (Esel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Edata_out_with_parity, Evalidout);
  xbar W_XBAR (Wsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Wdata_out_with_parity, Wvalidout);
  xbar S_XBAR (Ssel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Sdata_out_with_parity, Svalidout);
  
  // OUTPUT BUFFER
  output_buffer L_OUTPUT_BUFFER (clk, rst_active_low, (L_DCTS && Lvalidout), Ldata_out_with_parity, L_TX, L_RTS);
  output_buffer E_OUTPUT_BUFFER (clk, rst_active_low, (E_DCTS && Evalidout), Edata_out_with_parity, E_TX, E_RTS);
  output_buffer W_OUTPUT_BUFFER (clk, rst_active_low, (W_DCTS && Wvalidout), Wdata_out_with_parity, W_TX, W_RTS);
  output_buffer S_OUTPUT_BUFFER (clk, rst_active_low, (S_DCTS && Svalidout), Sdata_out_with_parity, S_TX, S_RTS);
 
endmodule
