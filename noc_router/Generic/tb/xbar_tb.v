/********************
* Filename:    xbar_tb.v
* Description: Testbench of 5 : 1 multiplexer to select one of the reg data through select lines from the arbiter and assigning it to the wire port
*
* $Revision: 32 $
* $Id: xbar_tb.v 32 2016-02-05 18:19:58Z ranga $
* $Date: 2016-02-05 20:19:58 +0200 (Fri, 05 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"
`include "../include/state_defines.v"

module xbar_tb;
  
  // Declaring the port variables for DUT
  reg [4 : 0]             sel_in;
  reg [`DATA_WIDTH-1 : 0] N_datain, E_datain, W_datain, S_datain, L_datain;
  
  wire [`DATA_WIDTH-1 : 0] dataout;
  
  // Instantiate CROSSBAR SWITCH DUT
  xbar DUT (sel_in, N_datain, E_datain, W_datain, S_datain, L_datain, dataout);
  
  initial begin : SIM
    integer i;
    repeat(3) begin
      for(i = 0; i < 6; i = i + 1) begin
        sel_in = (1 << i);
        N_datain = {$random};
        E_datain = {$random};
        W_datain = {$random};
        S_datain = {$random};
        L_datain = {$random};
        #10;
      end
    end
    #10;
    $finish;
  end

endmodule
