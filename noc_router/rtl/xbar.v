/********************
* Filename:     xbar.v
* Description:  5 : 1 multiplexer to select one of the input data through select lines from the arbiter and assigning it to the output port
*
* $Revision: 25 $
* $Id: xbar.v 25 2015-11-21 13:19:20Z ranga $
* $Date: 2015-11-21 15:19:20 +0200 (Sat, 21 Nov 2015) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"
`include "../include/state_defines.v"

module xbar(sel_in, N_datain, E_datain, W_datain, S_datain, L_datain, dataout);
  
  input [4 : 0]             sel_in;
  input [`DATA_WIDTH-1 : 0] N_datain, E_datain, W_datain, S_datain, L_datain;
  
  output reg [`DATA_WIDTH-1 : 0] dataout;
  
  always @ (sel_in, N_datain, E_datain, W_datain, S_datain, L_datain, dataout) begin
    case (sel_in)
      `N_PORT : dataout = N_datain;
      `E_PORT : dataout = E_datain;
      `W_PORT : dataout = W_datain;
      `S_PORT : dataout = S_datain;
      `L_PORT : dataout = L_datain;
      default : dataout = 0;
    endcase
  end
  
endmodule
