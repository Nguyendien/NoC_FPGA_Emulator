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
                    Eport, Sport, Lport, 
                    Lready_in, Eready_in, Sready_in, 
                    Lready_out, Eready_out, Sready_out
                  );
  
  input       rst;
  input       Eport, Sport, Lport;
  input       Lready_in, Eready_in, Sready_in;
  
  output reg  Lready_out, Eready_out, Sready_out;                // Ready signal sent from LBDR to Arbiter
    
  // Ready_out is asserted whenever the selected output port and the corresponding output FIFO is also ready enough
  always @(rst, Lready_in, Eready_in, Sready_in, Lport, Eport, Sport, Lready_out, Eready_out, Sready_out) begin
    if (rst) begin
      Lready_out <= 1'b0;
      Eready_out <= 1'b0;
      Sready_out <= 1'b0;
    end
    else begin
      Lready_out <= Lready_in && Lport;
      Eready_out <= Eready_in && Eport;
      Sready_out <= Sready_in && Sport;
    end
  end
  
endmodule