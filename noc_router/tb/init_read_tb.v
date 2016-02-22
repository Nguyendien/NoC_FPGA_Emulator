/********************
* Filename:     init_read_tb.v
* Description:  Test Bench of INIT_READ module which send the read_en signal to FIFO after reset and also after processing 1 whole packet
*
* $Revision: 39 $
* $Id: init_read_tb.v 39 2016-02-20 19:11:39Z ranga $
* $Date: 2016-02-20 21:11:39 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"

module init_read_tb;
  
  // Declaring the port variables for DUT
  reg         clk, rst;
  reg         empty;
  reg [2 : 0] flit_id;        
  
  wire init_rd;
  
  // Instantiate INIT_READ DUT
  init_read DUT (clk, rst, empty, flit_id, init_rd);
  
  // Specify the CYCLE parameter
  parameter CYCLE = 10;
  
  // Generating Clock of period 10ns
  initial begin
    clk = 0;
    forever
      #(CYCLE/2) clk = ~clk;
  end
  
  // Task to generate reset
  task reset;
    begin
      rst     = 1;
      empty   = 1;
      flit_id = 0;
      repeat(2)
        @(negedge clk);
      $display("TIME:%0t HARD_RESET:: init_read:%0b", $time, init_rd);
      rst = 0;
    end
  endtask
  
  initial begin : SIM
    integer i;
    
    // Reset
    reset;
    
    empty = 0;
    for(i = 0; i < 8; i = i + 1) begin
      @(negedge clk) begin
        flit_id  = i;
      end
    end
    
    reset;
    
    #(CYCLE * 2); 
    $finish;
  end

  initial begin
    $monitor("TIME:%0t ********* STATUS :  init_read:%0b **********", $time, init_rd);
  end

endmodule