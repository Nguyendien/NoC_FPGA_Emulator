/********************
* Filename:		  tb_tasks.v
* Description:  TB task required to generate packets for all the direction LOCAL, NORTH, EAST, WEST and SOUTH and also other required tasks.        
*
* $Revision: 39 $
* $Id: tb_tasks.v 39 2016-02-20 19:11:39Z ranga $
* $Date: 2016-02-20 21:11:39 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"
`include "../include/state_defines.v"
  
  // Task to generate reset and assign default settings -- Rxy, Cx, curr_addr
  task automatic reset;
    input [7 : 0] Rxy_rst;
    input [3 : 0] Cx_rst;
    input [3 : 0] cur_addr_rst;
    begin
      rst      = 0; // rst is active low.
      @(negedge clk) begin
        Rxy      = Rxy_rst;
        Cx       = Cx_rst;
        cur_addr = cur_addr_rst;
        {Ldata_in, Ndata_in, Edata_in, Wdata_in, Sdata_in}      = 0;
        {Lvalid_in, Nvalid_in, Evalid_in, Wvalid_in, Svalid_in} = 0;
        {Lready_in, Nready_in, Eready_in, Wready_in, Sready_in} = 5'b11111;
      end
      repeat(2)
        @(negedge clk);
      $display("TIME:%0t HARD_RESET:: Ldata_out:%0h, Ndata_out:%0h, Edata_out:%0h, Wdata_out:%0h, Sdata_out:%0h, Lready_out:%0b, Nready_out:%0b, Eready_out:%0b, Wready_out:%0b, Sready_out:%0b,  Lvalid_out:%0b, Nvalid_out:%0b, Evalid_out:%0b, Wvalid_out:%0b, Svalid_out:%0b",  $time, Ldata_out, Ndata_out, Edata_out, Wdata_out, Sdata_out, Lready_out, Nready_out, Eready_out, Wready_out, Sready_out, Lvalid_out, Nvalid_out, Evalid_out, Wvalid_out, Svalid_out);
      rst = 1;
    end
  endtask
  
  task automatic header;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    
    output [`DATA_WIDTH-1 : 0] header_data; 
    begin
      flit   = `HEADER;
      $display("TIME:%0t TASK HEADER: Flit:%0b, length:%0d, d_addr:%0h, s_addr:%0h, p_id:%0h, Parity:%0b \n", $time, flit, p_length, d_addr, s_addr, p_id, parity);
      header_data = {flit, p_length, d_addr, s_addr, p_id, parity};
    end
  endtask
  
  task automatic payload;
    output [`DATA_WIDTH-1 : 0] payload_data; 
    begin
      data    = {$random};
      flit    = `PAYLOAD;
      $display("TIME:%0t TASK PAYLOAD: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      payload_data = {flit, data, parity};
    end
  endtask
  
  task automatic tail;
    output [`DATA_WIDTH-1 : 0] tail_data; 
    begin
      data    = {$random};
      flit    = `TAIL;
      $display("TIME:%0t TASK TAIL: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      tail_data = {flit, data, parity};
    end
  endtask
  
  // SINGLE PACKET GENERATION
  // Task to generate SINGLE packet data based on given header length
  // North port Buffer
  task automatic Npkt_gen;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Nvalid_in = 1;
        while(!Nready_out) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data);
        Ndata_in = tmp_data;
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Nvalid_in = 1;
        while(!Nready_out) begin
          @(negedge clk);
        end
        payload(tmp_data);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data);
        Ndata_in = tmp_data;
      end
      // TAIL
      @(negedge clk) begin
        Nvalid_in = 1;
        while(!Nready_out) begin
          @(negedge clk);
        end
        tail(tmp_data);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data);
        Ndata_in = tmp_data;
      end
      
      @(negedge clk) begin
        Nvalid_in = 0;
        Ndata_in = 0;
      end
    end
  endtask
  
  // East port Buffer
  task automatic Epkt_gen;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Evalid_in = 1;
        while(!Eready_out) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data);
        Edata_in = tmp_data;
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Evalid_in = 1;
        while(!Eready_out) begin
          @(negedge clk);
        end
        payload(tmp_data);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data);
        Edata_in = tmp_data;
      end
      // TAIL
      @(negedge clk) begin
        Evalid_in = 1;
        while(!Eready_out) begin
          @(negedge clk);
        end
        tail(tmp_data);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data);
        Edata_in = tmp_data;
      end
      
      @(negedge clk) begin
        Evalid_in = 0;
        Edata_in = 0;
      end
    end
  endtask
  
  // West port Buffer
  task automatic Wpkt_gen;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Wvalid_in = 1;
        while(!Wready_out) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data);
        Wdata_in = tmp_data;
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Wvalid_in = 1;
        while(!Wready_out) begin
          @(negedge clk);
        end
        payload(tmp_data);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data);
        Wdata_in = tmp_data;
      end
      // TAIL
      @(negedge clk) begin
        Wvalid_in = 1;
        while(!Wready_out) begin
          @(negedge clk);
        end
        tail(tmp_data);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data);
        Wdata_in = tmp_data;
      end
      
      @(negedge clk) begin
        Wvalid_in = 0;
        Wdata_in = 0;
      end
    end
  endtask
  
  // South port Buffer
  task automatic Spkt_gen;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Svalid_in = 1;
        while(!Sready_out) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data);
        Sdata_in = tmp_data;
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Svalid_in = 1;
        while(!Sready_out) begin
          @(negedge clk);
        end
        payload(tmp_data);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data);
        Sdata_in = tmp_data;
      end
      // TAIL
      @(negedge clk) begin
        Svalid_in = 1;
        while(!Sready_out) begin
          @(negedge clk);
        end
        tail(tmp_data);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data);
        Sdata_in = tmp_data;
      end
      
      @(negedge clk) begin
        Svalid_in = 0;
        Sdata_in = 0;
      end
    end
  endtask
  
  // Local port Buffer
  task automatic Lpkt_gen;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Lvalid_in = 1;
        while(!Lready_out) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data);
        Ldata_in = tmp_data;
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Lvalid_in = 1;
        while(!Lready_out) begin
          @(negedge clk);
        end
        payload(tmp_data);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data);
        Ldata_in = tmp_data;
      end
      // TAIL
      @(negedge clk) begin
        Lvalid_in = 1;
        while(!Lready_out) begin
          @(negedge clk);
        end
        tail(tmp_data);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data);
        Ldata_in = tmp_data;
      end
      
      @(negedge clk) begin
        Lvalid_in = 0;
        Ldata_in = 0;
      end
    end
  endtask
