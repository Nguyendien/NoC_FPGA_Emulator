/********************
* Filename:     xbar.v
* Description:  5 : 1 multiplexer to select one of the input data through select lines from the arbiter and assigning it to the output port
*
* $Revision: 34 $
* $Id: xbar.v 34 2016-02-15 21:43:28Z ranga $
* $Date: 2016-02-15 23:43:28 +0200 (Mon, 15 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"
`include "../include/state_defines.v"

module xbar(sel_in, N_datain, E_datain, W_datain, S_datain, L_datain, dataout);
  
  input [4 : 0]             sel_in;
  input [`DATA_WIDTH-1 : 0] N_datain, E_datain, W_datain, S_datain, L_datain;
  
  output reg [`DATA_WIDTH-1 : 0] dataout;
  
  always @ (sel_in, N_datain, E_datain, W_datain, S_datain, L_datain) begin
    case (sel_in)
      `N_PORT : begin
        dataout  = N_datain;
      end
      `E_PORT : begin
        dataout  = E_datain;
      end
      `W_PORT : begin
        dataout  = W_datain;
      end
      `S_PORT : begin
        dataout  = S_datain;
      end
      `L_PORT : begin
        dataout  = L_datain;
      end
      default : begin
        dataout  = 'd0;
      end
    endcase
  end
  
endmodule
