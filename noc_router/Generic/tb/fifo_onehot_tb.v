/********************
* Filename:     fifo_onehot_tb.v
* Description:  Test Bench of FIFO with parameterized data_width and fifo_depth. All controls signals are active high and the reset signal is active high synchronous reset signal
                ready_out, empty signals are used for hadnshaking and flow control
                Separate modules implemented for flow_control, register, output mux
*
* $Revision: 32 $
* $Id: fifo_onehot_tb.v 32 2016-02-05 18:19:58Z ranga $
* $Date: 2016-02-05 20:19:58 +0200 (Fri, 05 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"

module fifo_onehot_tb;
  
  // Declaring the port variables for DUT
  reg                      clk, rst;
  reg                      wr_en, rd_en;
  reg [`DATA_WIDTH-1 : 0]  data_in;
  
  wire [`DATA_WIDTH-1 : 0]  data_out;
  wire                      empty, ready_out;
  
  // Instantiate FIFO DUT
  fifo_onehot DUT (clk, rst,
                    wr_en, rd_en,
                    data_in,  data_out,
                    empty, ready_out
                  );
                  
  // Declaring the local variables
  reg [27 : 0]    data;             // 28 bits
  reg [2 : 0]     flit;
  reg [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
  reg [3 : 0]     d_addr, s_addr;
  reg [7 : 0]     p_id;             // packet id
  reg             parity = 1;  
  
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
      data_in = 0;
      rd_en   = 0;
      wr_en   = 0;
      repeat(2)
        @(negedge clk);
      $display("TIME:%0t HARD_RESET:: data_out:%0h, Ready_out:%0b, empty: %0b full: %0b", $time, data_out, ready_out, empty, DUT.full);
      rst = 0;
    end
  endtask
  
  // Task to Write / Read operation
  task wr_rd (input [`DATA_WIDTH-1 : 0] wr_data, input wr, input rd);
    begin
      @(negedge clk) begin
        if (ready_out) begin
          data_in = wr_data;
          wr_en = wr;
        end 
        else if (~ready_out) begin
          data_in = 0;
          wr_en   = 0;
          $display("TIME:%0t !!WARNING!! READY WENT LOW", $time);
        end
        if (empty) begin
          rd_en = 0;
          $display("TIME:%0t FIFO EMPTY", $time);
        end
        else if (~empty) begin
          rd_en = rd;
        end
        if (wr_en && ready_out) begin
          $display("TIME:%0t FIFO WRITE: Flit:%0b, Data:%0h, Parity:%0b Wr_Address = %0b \n", $time, data_in[(`DATA_WIDTH-3) +: 3], data_in[1 +: 28], data_in[0], DUT.wr_ptr);   
        end
      end
    end
  endtask
  
  task header;
    begin
      flit   = `HEADER;
      p_length = 12'd5;
      d_addr = 4'd9;
      s_addr = 4'd3;
      p_id   = 8'd1;
      $display("TIME:%0t TASK WRITE: Flit:%0b, length:%0d, d_addr:%0h, s_addr:%0h, p_id:%0h, Parity:%0b \n", $time, flit, p_length, d_addr, s_addr, p_id, parity);
      wr_rd({flit, p_length, d_addr, s_addr, p_id, parity}, 1, 0);
    end
  endtask
  
  task payload;
    begin
      data    = {$random};
      flit    = `PAYLOAD;
      $display("TIME:%0t TASK WRITE: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      wr_rd({flit, data, parity}, 1, 0);
    end
  endtask
  
  task tail;
    begin
      data    = {$random};
      flit    = `TAIL;
      $display("TIME:%0t TASK WRITE: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      wr_rd({flit, data, parity}, 1, 0);
    end
  endtask
  
  task read;
    begin
      $display("TIME:%0t TASK READ", $time);
      wr_rd(0, 0, 1);
    end
  endtask
  
  task wr_till_full;
    begin
      $display("\n\n TIME:%0t ************ wr_till_full :: WRITING INTO FIFO TILL ACTIVE READY ************* \n\n ", $time);
      header;
      payload;
      read;
      payload;
      payload;
      tail;
    end
  endtask
  
  task wr_till_full_ready;
    begin
      $display("\n\n TIME:%0t ************ wr_till_full_ready :: WRITING INTO FIFO TILL ACTIVE READY ************* \n\n ", $time);
      header;
      payload;
      tail;
      header;
    end
  endtask
  
  task cons_wr_rd;
    begin
      $display("\n\n TIME:%0t ************ cons_wr_rd :: CONSECUTIVE WRITE AND READ ************* \n\n ", $time);
      repeat(3) begin
        header;
        read;
        payload;
        read;
        payload;
        read;
        payload;
        read;
        payload;
        read;
        tail;
        read;
        header;
        read;
      end
    end
  endtask
  
  // Start the simulation
  initial begin : SIM    
    // Reset
    reset;
    @(negedge clk);
    
    // Write 2 data, read 1 data, write 2 data -- FULL condition
    wr_till_full;
    
    // Reset
    reset;
    @(negedge clk);
    
    // Write data till ready_out goes low -- FULL condition
    wr_till_full_ready;
    
    // Reset
    reset;
    @(negedge clk);
    
    // Consecutive write and read operation
    cons_wr_rd;
    
    #(CYCLE * 2); 
    $finish;
  end

  initial begin
    $monitor("TIME:%0t ********* STATUS :  ready = %0b, empty = %0b full = %0b **********", $time, ready_out, empty, DUT.full);
  end
 
endmodule
