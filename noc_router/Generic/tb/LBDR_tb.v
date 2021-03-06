/********************
* Filename:     LBDR_tb.v
* Description:  Testbench of LBDR with minimal support only (no deroutes and no forks). The reg is 8 routing bits, two per wire port, and 4 connectivity bits, one per wire port
*
* $Revision: 32 $
* $Id: LBDR_tb.v 32 2016-02-05 18:19:58Z ranga $
* $Date: 2016-02-05 20:19:58 +0200 (Fri, 05 Feb 2016) $
* $Author: ranga $
*********************/

`include "../include/parameters.v"

module LBDR_tb;

  // Declaring the port variables for DUT
  reg clk, rst;
  reg empty;
  reg [7:0] Rxy_rst;
  reg [3:0] Cx_rst;
  reg [2:0] flit_id;
  reg [3:0] dst_addr, cur_addr_rst;
  
  wire Nport, Wport, Eport, Sport, Lport;
  
  // Instantiate LBDR DUT
  LBDR DUT (clk, rst,
            empty,
            Rxy_rst, Cx_rst, 
            flit_id, dst_addr, cur_addr_rst,
            Nport, Eport, Wport, Sport, Lport
          );
          
  // Specify the CYCLE parameter
  parameter CYCLE = 10;
  
  // Generating Clock of period 10ns
  initial begin
    clk = 0;
    forever
      #(CYCLE/2) clk = ~clk;
  end
   
  // Task to generate reset and assign default settings -- Rxy, Cx, curr_addr
  task reset;
    input [7 : 0] Rxy;
    input [3 : 0] Cx;
    input [3 : 0] cur_addr;
    begin
      rst      = 1;
      @(negedge clk) begin
        Rxy_rst      = Rxy;
        Cx_rst       = Cx;
        cur_addr_rst = cur_addr;
        flit_id      = 0;
        empty        = 1;
      end
      repeat(2)
        @(negedge clk);
      $display("TIME:%0t HARD_RESET:: Rxy_rst: %0b, Cx_rst:%0b, cur_addr_rst:%0d", $time, Rxy_rst, Cx_rst, cur_addr_rst);
      $display("TIME:%0t HARD_RESET:: Nport:%0b, Eport:%0b, Wport:%0b, Sport:%0b, Lport:%0b", $time, Nport, Eport, Wport, Sport, Lport);
      rst = 0;
    end
  endtask
  
  // Task to assign dst_addr along with the HEADER flit
  task flit_addr;
    input [3 : 0] d_addr;
    input [2 : 0] flit_in;
    begin
      @(negedge clk) begin
        dst_addr = d_addr;
        flit_id  = flit_in;
        $display("TIME:%0t TASK WRITE: Flit:%0b, d_addr:%0h \n", $time, flit_in, d_addr);
      end
    end
  endtask
  
  // Task to control empty signal
  task set_empty;
    input empty_sig;
    begin
      @(negedge clk) begin
        empty = empty_sig;
      end
    end
  endtask
  
  // Start the simulation
  initial begin : SIM
    integer i;
    
    // Packet has to travel from Node 1 to Node 8
    // Reset & Initialize
    reset(8'b00111100, 4'b1110, 4'b0001); //--NODE1
    flit_addr(4'b1000, `HEADER);
    repeat(2)
      set_empty(1);
    set_empty(0);
    for(i = 0; i < 4; i = i + 1) begin
      @(negedge clk) begin
        flit_addr({$random}, `PAYLOAD);
      end
    end    
    flit_addr({$random}, `TAIL);
    
    repeat(2)
      set_empty(1);
    
    reset(8'b00111100, 4'b1010, 4'b0000); //--NODE0
    flit_addr(4'b1000, `HEADER);
    repeat(2)
      set_empty(1);
    set_empty(0);
    for(i = 0; i < 4; i = i + 1) begin
      @(negedge clk) begin
        flit_addr({$random}, `PAYLOAD);
      end
    end    
    flit_addr({$random}, `TAIL);
    
    repeat(2)
      set_empty(1);
      
    reset(8'b00111100, 4'b1011, 4'b0100); //--NODE4
    flit_addr(4'b1000, `HEADER);
    repeat(2)
      set_empty(1);
    set_empty(0);
    for(i = 0; i < 4; i = i + 1) begin
      @(negedge clk) begin
        flit_addr({$random}, `PAYLOAD);
      end
    end    
    flit_addr({$random}, `TAIL);
    
    repeat(2)
      set_empty(1);
      
    reset(8'b00111100, 4'b1011, 4'b1000); //--NODE8
    flit_addr(4'b1000, `HEADER);
    repeat(2)
      set_empty(1);
    set_empty(0);
    for(i = 0; i < 4; i = i + 1) begin
      @(negedge clk) begin
        flit_addr({$random}, `PAYLOAD);
      end
    end    
    flit_addr({$random}, `TAIL);
    
    repeat(2)
      set_empty(1);
    
    #(CYCLE * 5); 
    $finish;
  end

  initial begin
    $monitor("TIME:%0t *********STATUS:: Nport:%0b, Eport:%0b, Wport:%0b, Sport:%0b, Lport:%0b", $time, Nport, Eport, Wport, Sport, Lport);
  end

endmodule
