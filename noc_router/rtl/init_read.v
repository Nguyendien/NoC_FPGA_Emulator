/********************
* Filename:     init_read.v
* Description:  To send the read_en signal to FIFO after reset and also after processing 1 whole packet
*
* $Revision: 28 $
* $Id: init_read.v 28 2015-12-05 12:38:57Z ranga $
* $Date: 2015-12-05 14:38:57 +0200 (Sat, 05 Dec 2015) $
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
      if (init_rd && ~empty) begin
        init_rd <= 0;
      end
      if(flit_id == `TAIL) begin
        init_rd <= 1;
      end
    end
  end

endmodule