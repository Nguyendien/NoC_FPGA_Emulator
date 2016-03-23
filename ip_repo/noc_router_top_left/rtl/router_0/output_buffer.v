/********************
* Filename:     output_buffer.v
* Description:  Based on the ready_in signal from the next router(or NI), its buffer the data with the valid signal
*
* $Revision: 25 $
* $Id: output_buffer.v 25 2015-11-21 13:19:20Z ranga $
* $Date: 2015-11-21 15:19:20 +0200 (Sat, 21 Nov 2015) $
* $Author: ranga $
*********************/
`include "../../include/parameters.v"

module output_buffer(clk, rst, 
                      enable, // ready_in signal from next router
                      data_in, 
                      data_out,
                      valid
                    );
                    
  input                      clk, rst;
  input                      enable;
  input [`DATA_WIDTH-1 : 0]  data_in;        // 32 bits with parity
  
  output reg [`DATA_WIDTH-1 : 0] data_out;         // 32 bits with parity (goes to parity checker)
  output reg                    valid;
  
  always @ (posedge clk) begin 
    if (rst) begin
      data_out <= 0;
      valid    <= 0;
    end
    else if (enable) begin
      data_out <= data_in;
      valid    <= 1;
    end
    else begin
      valid <= 0;
    end
  end

endmodule
