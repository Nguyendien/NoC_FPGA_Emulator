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
                    Nport, Eport, Wport, Sport, Lport, 
                    Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, 
                    Lready_out, Nready_out, Eready_out, Wready_out, Sready_out
                  );
  
  input       rst;
  input       Nport, Eport, Wport, Sport, Lport;
  input       Lready_in, Nready_in, Eready_in, Wready_in, Sready_in;
  
  output reg  Lready_out, Nready_out, Eready_out, Wready_out, Sready_out;                // Ready signal send to Arbiter, Previous router
  
  // Declaring the local variables
  wire        Lready, Nready, Eready, Wready, Sready;
  
  assign Lready = Lready_in && Lport;
  assign Nready = Nready_in && Nport;
  assign Eready = Eready_in && Eport;
  assign Wready = Wready_in && Wport;
  assign Sready = Sready_in && Sport;
  
  // Ready_out is asserted whenever the selected output port and the corresponding output FIFO is also ready enough
  always @(rst, Lready, Nready, Eready, Wready, Sready, Lready_out, Nready_out, Eready_out, Wready_out, Sready_out) begin
    if (rst) begin
      Lready_out <= 1'b0;
      Nready_out <= 1'b0;
      Eready_out <= 1'b0;
      Wready_out <= 1'b0;
      Sready_out <= 1'b0;
    end
    else begin
      case(1'b1)
        Lready : begin
          Lready_out <= 1'b1;
          Nready_out <= 1'b0;
          Eready_out <= 1'b0;
          Wready_out <= 1'b0;
          Sready_out <= 1'b0;
        end
        Nready : begin
          Lready_out <= 1'b0;
          Nready_out <= 1'b1;
          Eready_out <= 1'b0;
          Wready_out <= 1'b0;
          Sready_out <= 1'b0;
        end
        Eready : begin
          Lready_out <= 1'b0;
          Nready_out <= 1'b0;
          Eready_out <= 1'b1;
          Wready_out <= 1'b0;
          Sready_out <= 1'b0;
        end
        Wready : begin
          Lready_out <= 1'b0;
          Nready_out <= 1'b0;
          Eready_out <= 1'b0;
          Wready_out <= 1'b1;
          Sready_out <= 1'b0;
        end
        Sready : begin
          Lready_out <= 1'b0;
          Nready_out <= 1'b0;
          Eready_out <= 1'b0;
          Wready_out <= 1'b0;
          Sready_out <= 1'b1;
        end
        default: begin
          Lready_out <= 1'b0;
          Nready_out <= 1'b0;
          Eready_out <= 1'b0;
          Wready_out <= 1'b0;
          Sready_out <= 1'b0;
        end
      endcase
    end
  end
  
endmodule