/********************
* Filename:     noc_router.v
* Description:  NOC Router Architecture with minimal functionality that contains the data path of 5 port(North, East, West, South, Local) 
                Input port FIFO buffer along with Control Path of LBDR and the arbiter. 
                Each Input port buffer has got LBDR routing module and the arbiter sends the grant coming from one of the LBDR 
                based on Round-Robin scheduling to the port decoder which asserts the respective read enable along with the 
                select lines to select the output port for the crossbar switch. 
                Active high control signals. Reset signal is active high synchronous reset
*
* $Revision: 28 $
* $Id: noc_router.v 28 2015-12-05 12:38:57Z ranga $
* $Date: 2015-12-05 14:38:57 +0200 (Sat, 05 Dec 2015) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"
`include "../include/state_defines.v"

module noc_router(clk, rst,
                  Rxy, Cx, cur_addr,
                  Ldata_in, Lvalid_in, Lready_out, Ldata_out, Lvalid_out, Lready_in,
                  Ndata_in, Nvalid_in, Nready_out, Ndata_out, Nvalid_out, Nready_in,
                  Edata_in, Evalid_in, Eready_out, Edata_out, Evalid_out, Eready_in,
                  Wdata_in, Wvalid_in, Wready_out, Wdata_out, Wvalid_out, Wready_in,
                  Sdata_in, Svalid_in, Sready_out, Sdata_out, Svalid_out, Sready_in/*,
                  Lparity_err, Nparity_err, Eparity_err, Wparity_err, Sparity_err*/
                );
                
  input                      clk, rst;
  input [7:0]                Rxy;                                                              // Routing bits set during reset                    
  input [3:0]                Cx;                                                               // Connectivity bits set during reset        
  input [3:0]                cur_addr;                                                         // currrent address of the router set during reset  
  input [`DATA_WIDTH-1 : 0]  Ldata_in, Ndata_in, Edata_in, Wdata_in, Sdata_in;                 // Incoming data from PREVIOUS router(NI)
  input                      Lvalid_in, Nvalid_in, Evalid_in, Wvalid_in, Svalid_in;            // Incoming valid signal from PREVIOUS router(NI)
  input                      Lready_in, Nready_in, Eready_in, Wready_in, Sready_in;            // Incoming ready signal from NEXT router(NI)
  
  output [`DATA_WIDTH-1 : 0] Ldata_out, Ndata_out, Edata_out, Wdata_out, Sdata_out;            // Outgoing data to NEXT router(NI)
  output                     Lready_out, Nready_out, Eready_out, Wready_out, Sready_out;       // Outgoing ready signal to PREVIOUS router(NI)
  output                     Lvalid_out, Nvalid_out, Evalid_out, Wvalid_out, Svalid_out;       // Outgoing valid signal to NEXT router(NI)
  //output                     Lparity_err, Nparity_err, Eparity_err, Wparity_err, Sparity_err;  // Parity error checker along with data_out
  
  // Declaring the local variables
  wire                   Nrd_en, Erd_en, Wrd_en, Srd_en, Lrd_en;                                               // read enable for FIFO buffer
  wire [`DATA_WIDTH-1:0] Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out;       // data output from input FIFO buffer
  wire                   Nempty, Eempty, Wempty, Sempty, Lempty;                                               // empty signal from FIFO buffer to LBDR
  wire                   Nfifo_ready_out, Efifo_ready_out, Wfifo_ready_out, Sfifo_ready_out, Lfifo_ready_out;  // FIFO ready signal send to flowcontrol
  wire [2:0]             Nflit_id, Eflit_id, Wflit_id, Sflit_id, Lflit_id;                                     // flit id type from FIFO buffer to LBDR and ARBITER
  wire [3:0]             Ndst_addr, Edst_addr, Wdst_addr, Sdst_addr, Ldst_addr;                                // destination address from FIFO buffer to LBDR and ARBITER
  wire [11: 0]           Nlength, Elength, Wlength, Slength, Llength;              // packet length sent to arbiter
  
  wire Ninit_rd, Einit_rd, Winit_rd, Sinit_rd, Linit_rd;        //Send the initial read enable signal to FIFO
  
  wire NNport, NEport, NWport, NSport, NLport;                // Output port signals from N_LBDR
  wire ENport, EEport, EWport, ESport, ELport;                // Output port signals from E_LBDR
  wire WNport, WEport, WWport, WSport, WLport;                // Output port signals from W_LBDR
  wire SNport, SEport, SWport, SSport, SLport;                // Output port signals from S_LBDR
  wire LNport, LEport, LWport, LSport, LLport;                // Output port signals from L_LBDR
  
  wire NLfc_ready_out, NNfc_ready_out, NEfc_ready_out, NWfc_ready_out, NSfc_ready_out; // Ready signal coming out of NFLOWCONTROL once it has detected the output port to which data has to be sent
  wire ELfc_ready_out, ENfc_ready_out, EEfc_ready_out, EWfc_ready_out, ESfc_ready_out; // Ready signal coming out of EFLOWCONTROL once it has detected the output port to which data has to be sent
  wire WLfc_ready_out, WNfc_ready_out, WEfc_ready_out, WWfc_ready_out, WSfc_ready_out; // Ready signal coming out of WFLOWCONTROL once it has detected the output port to which data has to be sent
  wire SLfc_ready_out, SNfc_ready_out, SEfc_ready_out, SWfc_ready_out, SSfc_ready_out; // Ready signal coming out of SFLOWCONTROL once it has detected the output port to which data has to be sent
  wire LLfc_ready_out, LNfc_ready_out, LEfc_ready_out, LWfc_ready_out, LSfc_ready_out; // Ready signal coming out of LFLOWCONTROL once it has detected the output port to which data has to be sent
  
  wire [5:0]  Nnextstate, Enextstate, Wnextstate, Snextstate, Lnextstate;         //Next state details from respective ARBITER
  wire        NLgrant, NNgrant, NEgrant, NWgrant, NSgrant;                        // Grant signal based on nextstate from Narbiter
  wire        ELgrant, ENgrant, EEgrant, EWgrant, ESgrant;                        // Grant signal based on nextstate from Earbiter
  wire        WLgrant, WNgrant, WEgrant, WWgrant, WSgrant;                        // Grant signal based on nextstate from Warbiter
  wire        SLgrant, SNgrant, SEgrant, SWgrant, SSgrant;                        // Grant signal based on nextstate from Sarbiter
  wire        LLgrant, LNgrant, LEgrant, LWgrant, LSgrant;                        // Grant signal based on nextstate from Larbiter
  
  wire [4:0]             Nsel_in, Esel_in, Wsel_in, Ssel_in, Lsel_in;                                                                              // XBAR select signals
  wire [`DATA_WIDTH-1:0] Ndata_out_with_parity, Edata_out_with_parity, Wdata_out_with_parity, Sdata_out_with_parity, Ldata_out_with_parity;        // Output data from XBAR to OUTPUT BUFFER
  
  assign Lready_out = Lfifo_ready_out;
  assign Nready_out = Nfifo_ready_out;
  assign Eready_out = Efifo_ready_out;
  assign Wready_out = Wfifo_ready_out;
  assign Sready_out = Sfifo_ready_out;
 
  // Connecting the grant signal to the respective FIFOs rd_en
  assign Nrd_en = Ninit_rd || NNgrant || ENgrant || WNgrant || SNgrant || LNgrant;
  assign Erd_en = Einit_rd || NEgrant || EEgrant || WEgrant || SEgrant || LEgrant;
  assign Wrd_en = Winit_rd || NWgrant || EWgrant || WWgrant || SWgrant || LWgrant;
  assign Srd_en = Sinit_rd || NSgrant || ESgrant || WSgrant || SSgrant || LSgrant;
  assign Lrd_en = Linit_rd || NLgrant || ELgrant || WLgrant || SLgrant || LLgrant;
  
  // Extract packet type, address & length from FIFO data out
  assign Nflit_id = Nfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Eflit_id = Efifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Wflit_id = Wfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Sflit_id = Sfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  assign Lflit_id = Lfifo_data_out[(`DATA_WIDTH-3) +: 3];     // [31:29]
  
  assign Ndst_addr = Nfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Edst_addr = Efifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Wdst_addr = Wfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Sdst_addr = Sfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  assign Ldst_addr = Lfifo_data_out[(`DATA_WIDTH-19) +: 4];    // [16:13]
  
  assign Nlength = Nfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Elength = Efifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Wlength = Wfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Slength = Sfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  assign Llength = Lfifo_data_out[(`DATA_WIDTH-15) +: 12]-1;   // [17:28]
  
  // assigning the grant and select signals from the outputs of arbiters
  assign NLgrant = Nnextstate[1];
  assign NNgrant = Nnextstate[2];
  assign NEgrant = Nnextstate[3];
  assign NWgrant = Nnextstate[4];
  assign NSgrant = Nnextstate[5];
  assign Nsel_in = Nnextstate[5:1];
  
  assign ELgrant = Enextstate[1];
  assign ENgrant = Enextstate[2];
  assign EEgrant = Enextstate[3];
  assign EWgrant = Enextstate[4];
  assign ESgrant = Enextstate[5];
  assign Esel_in = Enextstate[5:1];
  
  assign WLgrant = Wnextstate[1];
  assign WNgrant = Wnextstate[2];
  assign WEgrant = Wnextstate[3];
  assign WWgrant = Wnextstate[4];
  assign WSgrant = Wnextstate[5];
  assign Wsel_in = Wnextstate[5:1];
  
  assign SLgrant = Snextstate[1];
  assign SNgrant = Snextstate[2];
  assign SEgrant = Snextstate[3];
  assign SWgrant = Snextstate[4];
  assign SSgrant = Snextstate[5];
  assign Ssel_in = Snextstate[5:1];
  
  assign LLgrant = Lnextstate[1];
  assign LNgrant = Lnextstate[2];
  assign LEgrant = Lnextstate[3];
  assign LWgrant = Lnextstate[4];
  assign LSgrant = Lnextstate[5];
  assign Lsel_in = Lnextstate[5:1];

  // Module Instantiations
  // FIFO
  fifo_onehot L_FIFO (clk, rst, Lvalid_in, Lrd_en, Ldata_in,  Lfifo_data_out, Lempty, Lfifo_ready_out);
  fifo_onehot N_FIFO (clk, rst, Nvalid_in, Nrd_en, Ndata_in,  Nfifo_data_out, Nempty, Nfifo_ready_out);
  fifo_onehot E_FIFO (clk, rst, Evalid_in, Erd_en, Edata_in,  Efifo_data_out, Eempty, Efifo_ready_out);
  fifo_onehot W_FIFO (clk, rst, Wvalid_in, Wrd_en, Wdata_in,  Wfifo_data_out, Wempty, Wfifo_ready_out);
  fifo_onehot S_FIFO (clk, rst, Svalid_in, Srd_en, Sdata_in,  Sfifo_data_out, Sempty, Sfifo_ready_out);
  
  // INIT_READ
  init_read L_INIT (clk, rst, Lempty, Lflit_id, Linit_rd);
  init_read N_INIT (clk, rst, Nempty, Nflit_id, Ninit_rd);
  init_read E_INIT (clk, rst, Eempty, Eflit_id, Einit_rd);
  init_read W_INIT (clk, rst, Wempty, Wflit_id, Winit_rd);
  init_read S_INIT (clk, rst, Sempty, Sflit_id, Sinit_rd);
  
  // LBDR
  LBDR L_LBDR (clk, rst, Lempty, Rxy, Cx, Lflit_id, Ldst_addr, cur_addr, LNport, LEport, LWport, LSport, LLport);
  LBDR N_LBDR (clk, rst, Nempty, Rxy, Cx, Nflit_id, Ndst_addr, cur_addr, NNport, NEport, NWport, NSport, NLport);
  LBDR E_LBDR (clk, rst, Eempty, Rxy, Cx, Eflit_id, Edst_addr, cur_addr, ENport, EEport, EWport, ESport, ELport);
  LBDR W_LBDR (clk, rst, Wempty, Rxy, Cx, Wflit_id, Wdst_addr, cur_addr, WNport, WEport, WWport, WSport, WLport);
  LBDR S_LBDR (clk, rst, Sempty, Rxy, Cx, Sflit_id, Sdst_addr, cur_addr, SNport, SEport, SWport, SSport, SLport);
  
  // FLOWCONTROL
  flowcontrol L_FC (rst, LNport, LEport, LWport, LSport, LLport, Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, LLfc_ready_out, LNfc_ready_out, LEfc_ready_out, LWfc_ready_out, LSfc_ready_out);
  flowcontrol N_FC (rst, NNport, NEport, NWport, NSport, NLport, Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, NLfc_ready_out, NNfc_ready_out, NEfc_ready_out, NWfc_ready_out, NSfc_ready_out);
  flowcontrol E_FC (rst, ENport, EEport, EWport, ESport, ELport, Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, ELfc_ready_out, ENfc_ready_out, EEfc_ready_out, EWfc_ready_out, ESfc_ready_out);
  flowcontrol W_FC (rst, WNport, WEport, WWport, WSport, WLport, Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, WLfc_ready_out, WNfc_ready_out, WEfc_ready_out, WWfc_ready_out, WSfc_ready_out);
  flowcontrol S_FC (rst, SNport, SEport, SWport, SSport, SLport, Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, SLfc_ready_out, SNfc_ready_out, SEfc_ready_out, SWfc_ready_out, SSfc_ready_out);
  
  // ARBITER
  arbiter L_ARBITER (clk, rst, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LLfc_ready_out, NLfc_ready_out, ELfc_ready_out, WLfc_ready_out, SLfc_ready_out, Lnextstate);
  arbiter N_ARBITER (clk, rst, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LNfc_ready_out, NNfc_ready_out, ENfc_ready_out, WNfc_ready_out, SNfc_ready_out, Nnextstate);
  arbiter E_ARBITER (clk, rst, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LEfc_ready_out, NEfc_ready_out, EEfc_ready_out, WEfc_ready_out, SEfc_ready_out, Enextstate);
  arbiter W_ARBITER (clk, rst, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LWfc_ready_out, NWfc_ready_out, EWfc_ready_out, WWfc_ready_out, SWfc_ready_out, Wnextstate);
  arbiter S_ARBITER (clk, rst, Lflit_id, Nflit_id, Eflit_id, Wflit_id, Sflit_id, Llength, Nlength, Elength, Wlength, Slength, LSfc_ready_out, NSfc_ready_out, ESfc_ready_out, WSfc_ready_out, SSfc_ready_out, Snextstate);
  
  // CROSSBAR SWITCH
  xbar L_XBAR (Lsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Ldata_out_with_parity);
  xbar N_XBAR (Nsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Ndata_out_with_parity);
  xbar E_XBAR (Esel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Edata_out_with_parity);
  xbar W_XBAR (Wsel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Wdata_out_with_parity);
  xbar S_XBAR (Ssel_in, Nfifo_data_out, Efifo_data_out, Wfifo_data_out, Sfifo_data_out, Lfifo_data_out, Sdata_out_with_parity);
  
  // OUTPUT BUFFER
  output_buffer L_OUTPUT_BUFFER (clk, rst, Lready_in, Ldata_out_with_parity, Ldata_out, Lvalid_out);
  output_buffer N_OUTPUT_BUFFER (clk, rst, Nready_in, Ndata_out_with_parity, Ndata_out, Nvalid_out);
  output_buffer E_OUTPUT_BUFFER (clk, rst, Eready_in, Edata_out_with_parity, Edata_out, Evalid_out);
  output_buffer W_OUTPUT_BUFFER (clk, rst, Wready_in, Wdata_out_with_parity, Wdata_out, Wvalid_out);
  output_buffer S_OUTPUT_BUFFER (clk, rst, Sready_in, Sdata_out_with_parity, Sdata_out, Svalid_out);
 
  // PARITY CHECKER
  //parity_checkers PARITY_CHK0 (Nbuffer_data_out, Ebuffer_data_out, Wbuffer_data_out, Sbuffer_data_out, Lbuffer_data_out, Nparity_err, Eparity_err, Wparity_err, Sparity_err, Lparity_err);
  
endmodule