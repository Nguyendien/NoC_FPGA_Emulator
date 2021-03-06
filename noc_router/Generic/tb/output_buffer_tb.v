/********************
* Filename:    output_buffer_tb.v
* Description: Testbench of an output buffer. Based on the ready_in signal from the next router(or NI), its buffer the data with the valid signal
*
* $Revision: 32 $
* $Id: output_buffer_tb.v 32 2016-02-05 18:19:58Z ranga $
* $Date: 2016-02-05 20:19:58 +0200 (Fri, 05 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"

module output_buffer_tb;
  
  // Declaring the port variables for DUT  
  reg                      clk, rst;
  reg                      enable;
  reg [`DATA_WIDTH-1 : 0]  data_in;        // 32 bits with parity
  
  wire [`DATA_WIDTH-1 : 0] data_out;         // 32 bits with parity (goes to parity checker)
  wire                     valid;
  
  // Instantiate CROSSBAR SWITCH DUT
  output_buffer DUT (clk, rst, enable, data_in, data_out, valid);
  
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
      enable  = 0;
      data_in = 0;
      repeat(2)
        @(negedge clk);
      $display("TIME:%0t HARD_RESET:: data_out:%0h, valid%0b", $time, data_out, valid);
      rst = 0;
    end
  endtask
  
  initial begin : SIM
    integer i;
    
    // Reset
    reset;
    
    repeat(3) begin
      for(i = 0; i < 6; i = i + 1) begin
        @(negedge clk) begin
          enable  = 1;
          data_in = {$random};
        end
      end
      for(i = 0; i < 2; i = i + 1) begin
        @(negedge clk) begin
          enable  = 0;
          data_in = {$random};
        end
      end
    end
    
    #(CYCLE * 2); 
    $finish;
  end

  initial begin
    $monitor("TIME:%0t ********* STATUS :  valid:%0b **********", $time, valid);
  end

endmodule