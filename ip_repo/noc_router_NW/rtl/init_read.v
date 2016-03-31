/********************
* Filename:     init_read.v
* Description:  To send the read_en signal to FIFO after reset and also after processing 1 whole packet
*
* $Revision: 39 $
* $Id: init_read.v 39 2016-02-20 19:11:39Z ranga $
* $Date: 2016-02-20 21:11:39 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"

module init_read(clk, rst, empty, flit_id, init_rd);
  
  input clk, rst;
  input empty;
  input [2 : 0] flit_id;        // One-hot encoded [001 - Header, 010 - Payload, 100 - Tail]
  
  output reg init_rd;
  
  always @(posedge clk) begin
    if(rst) begin
      init_rd <= 1;
    end
    else begin
      if(init_rd == 1) begin
        if(empty == 0) begin
          init_rd <= 0;
        end
      end
      else if (flit_id == `TAIL) begin
        init_rd <= 1;
      end
    end
  end

endmodule