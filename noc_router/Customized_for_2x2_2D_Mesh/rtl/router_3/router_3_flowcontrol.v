/********************
* Filename:     flowcontrol.v
* Description:  Flow control mechanism is established between the INPUT and OUTPUT FIFO so that input FIFO does not receive any further data 
                for the particular output direction if it is not ready to accept data
*
* $Revision: 38 $
* $Id: flowcontrol.v 38 2016-02-20 17:24:53Z ranga $
* $Date: 2016-02-20 19:24:53 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/

module flowcontrol(rst, 
                    Nport, Wport, Lport, 
                    Lready_in, Nready_in, Wready_in, 
                    Lready_out, Nready_out, Wready_out
                  );
  
  input       rst;
  input       Nport, Wport, Lport;
  input       Lready_in, Nready_in, Wready_in;
  
  output reg  Lready_out, Nready_out, Wready_out;                // Ready signal sent from LBDR to Arbiter
    
  // Ready_out is asserted whenever the selected output port and the corresponding output FIFO is also ready enough
  always @(rst, Lready_in, Nready_in, Wready_in, Lport, Nport, Wport, Lready_out, Nready_out, Wready_out) begin
    if (rst) begin
      Lready_out <= 1'b0;
      Nready_out <= 1'b0;
      Wready_out <= 1'b0;
    end
    else begin
      Lready_out <= Lready_in && Lport;
      Nready_out <= Nready_in && Nport;
      Wready_out <= Wready_in && Wport;
    end
  end
  
endmodule