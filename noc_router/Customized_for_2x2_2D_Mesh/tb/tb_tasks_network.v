/********************
* Filename:		  tb_tasks_network.v
* Description:  TB task required to generate packets for all the direction LOCAL, NORTH, EAST, WEST and SOUTH based on id and also other required tasks.        
*
* $Revision: 39 $
* $Id: tb_tasks_network.v 39 2016-02-20 19:11:39Z ranga $
* $Date: 2016-02-20 21:11:39 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "../include/parameters.v"
`include "../include/state_defines.v"
  
  // Task to generate reset and assign default settings -- router_id, Rxy, Cx, curr_addr
  task automatic reset;
    input [`NODES-1 : 0] id;
    input [7 : 0] Rxy_rst;
    input [3 : 0] Cx_rst;
    input [3 : 0] cur_addr_rst;
    begin
      rst      = 0;
      @(posedge clk) begin
        Rxy[id]      = Rxy_rst;
        Cx[id]       = Cx_rst;
        cur_addr[id] = cur_addr_rst;
        {Ldata_in[id], Ndata_in[id], Edata_in[id], Wdata_in[id], Sdata_in[id]}      = 0;
        {Lvalid_in[id], Nvalid_in[id], Evalid_in[id], Wvalid_in[id], Svalid_in[id]} = 0;
        {Lready_in[id], Nready_in[id], Eready_in[id], Wready_in[id], Sready_in[id]} = 5'b11111;
      end
      repeat(2)
        @(posedge clk);
      //$display("TIME:%0t HARD_RESET:: Ldata_out:%0h, Ndata_out:%0h, Edata_out:%0h, Wdata_out:%0h, Sdata_out:%0h, Lready_out:%0b, Nready_out:%0b, Eready_out:%0b, Wready_out:%0b, Sready_out:%0b,  Lvalid_out:%0b, Nvalid_out:%0b, Evalid_out:%0b, Wvalid_out:%0b, Svalid_out:%0b",  $time, Ldata_out[id], Ndata_out, Edata_out, Wdata_out, Sdata_out, Lready_out, Nready_out, Eready_out, Wready_out, Sready_out, Lvalid_out, Nvalid_out, Evalid_out, Wvalid_out, Svalid_out);
      rst = 1;
    end
  endtask
  
  task automatic header;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer f;  // used for writing results to a file
    
    output [`DATA_WIDTH-1 : 0] header_data; 
    begin
      flit   = `HEADER;
      f = $fopen("output.txt","a");
      $fdisplay(f,"TIME:%0t TASK HEADER: Flit:%0b, length:%0d, d_addr:%0h, s_addr:%0h, p_id:%0h, Parity:%0b \n", $time, flit, p_length, d_addr, s_addr, p_id, parity);
      $display("TIME:%0t TASK HEADER: Flit:%0b, length:%0d, d_addr:%0h, s_addr:%0h, p_id:%0h, Parity:%0b \n", $time, flit, p_length, d_addr, s_addr, p_id, parity);
      $fclose(f);
      header_data = {flit, p_length, d_addr, s_addr, p_id, parity};
    end
  endtask
  
  task automatic payload;
    output [`DATA_WIDTH-1 : 0] payload_data; 
    integer f;
    begin
      data    = {$random};
      flit    = `PAYLOAD;
      f = $fopen("output.txt","a");
      $fdisplay(f,"TIME:%0t TASK BODY: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      $display("TIME:%0t TASK BODY: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      $fclose(f);
      payload_data = {flit, data, parity};
    end
  endtask
  
  task automatic tail;
    output [`DATA_WIDTH-1 : 0] tail_data; 
    integer f;
    begin
      data    = {$random};
      flit    = `TAIL;
      f = $fopen("output.txt","a");
      $fdisplay(f,"TIME:%0t TASK TAIL: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      $display("TIME:%0t TASK TAIL: Flit:%0b, Data:%0h, Parity:%0b \n", $time, flit, data, parity);
      $fclose(f);
      tail_data = {flit, data, parity};
    end
  endtask
  
  // SINGLE PACKET GENERATION
  // Task to generate SINGLE packet data based on given header length
  // North port Buffer
  task automatic Npkt_gen;
    input [`NODES-1 : 0] id;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Nvalid_in[id] = 1;
        while(!Nready_out[id]) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data[id]);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data[id]);
        Ndata_in[id] = tmp_data[id];
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Nvalid_in[id] = 1;
        while(!Nready_out[id]) begin
          @(negedge clk);
        end
        payload(tmp_data[id]);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data[id]);
        Ndata_in[id] = tmp_data[id];
      end
      // TAIL
      @(negedge clk) begin
        Nvalid_in[id] = 1;
        while(!Nready_out[id]) begin
          @(negedge clk);
        end
        tail(tmp_data[id]);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data[id]);
        Ndata_in[id] = tmp_data[id];
      end
      
      @(negedge clk) begin
        Nvalid_in[id] = 0;
        Ndata_in[id] = 0;
      end
    end
  endtask
  
  // East port Buffer
  task automatic Epkt_gen;
    input [`NODES-1 : 0] id;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Evalid_in[id] = 1;
        while(!Eready_out[id]) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data[id]);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data[id]);
        Edata_in[id] = tmp_data[id];
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Evalid_in[id] = 1;
        while(!Eready_out[id]) begin
          @(negedge clk);
        end
        payload(tmp_data[id]);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data[id]);
        Edata_in[id] = tmp_data[id];
      end
      // TAIL
      @(negedge clk) begin
        Evalid_in[id] = 1;
        while(!Eready_out[id]) begin
          @(negedge clk);
        end
        tail(tmp_data[id]);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data[id]);
        Edata_in[id] = tmp_data[id];
      end
      
      @(negedge clk) begin
        Evalid_in[id] = 0;
        Edata_in[id] = 0;
      end
    end
  endtask
  
  // West port Buffer
  task automatic Wpkt_gen;
    input [`NODES-1 : 0] id;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Wvalid_in[id] = 1;
        while(!Wready_out[id]) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data[id]);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data[id]);
        Wdata_in[id] = tmp_data[id];
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Wvalid_in[id] = 1;
        while(!Wready_out[id]) begin
          @(negedge clk);
        end
        payload(tmp_data[id]);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data[id]);
        Wdata_in[id] = tmp_data[id];
      end
      // TAIL
      @(negedge clk) begin
        Wvalid_in[id] = 1;
        while(!Wready_out[id]) begin
          @(negedge clk);
        end
        tail(tmp_data[id]);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data[id]);
        Wdata_in[id] = tmp_data[id];
      end
      
      @(negedge clk) begin
        Wvalid_in[id] = 0;
        Wdata_in[id] = 0;
      end
    end
  endtask
  
  // South port Buffer
  task automatic Spkt_gen;
    input [`NODES-1 : 0] id;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    begin
      // HEADER
      @(negedge clk)
      begin
        Svalid_in[id] = 1;
        while(!Sready_out[id]) begin
          @(negedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data[id]);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data[id]);
        Sdata_in[id] = tmp_data[id];
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(negedge clk);
        Svalid_in[id] = 1;
        while(!Sready_out[id]) begin
          @(negedge clk);
        end
        payload(tmp_data[id]);
        $display("TIME:%0t PAYLOAD: tmp_data:%0h \n", $time, tmp_data[id]);
        Sdata_in[id] = tmp_data[id];
      end
      // TAIL
      @(negedge clk) begin
        Svalid_in[id] = 1;
        while(!Sready_out[id]) begin
          @(negedge clk);
        end
        tail(tmp_data[id]);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data[id]);
        Sdata_in[id] = tmp_data[id];
      end
      
      @(negedge clk) begin
        Svalid_in[id] = 0;
        Sdata_in[id] = 0;
      end
    end
  endtask
  
  // Local port Buffer
  task automatic Lpkt_gen;
    input [`NODES-1 : 0] id;
    input [11 : 0]    p_length;           // packet length in terms of # of flits = Header + Body (Payload) + Tail
    input [3 : 0]     d_addr, s_addr;
    input [7 : 0]     p_id;               // packet id
    integer i;
    integer f;

    begin
      // HEADER
      @(posedge clk)
      begin
        Lvalid_in[id] = 1;
        while(!Lready_out[id]) begin
          @(posedge clk);
        end
        header(p_length, d_addr, s_addr, p_id, tmp_data[id]);
        f = $fopen("output.txt","a");
	$fdisplay(f,"TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data[id]);
        $display("TIME:%0t HEADER: tmp_data:%0h \n", $time, tmp_data[id]);
	$fclose(f);
        Ldata_in[id] = tmp_data[id];
      end
      // PAYLOAD
      for(i = 1; i < p_length-1; i = i+1) begin
        @(posedge clk);
        Lvalid_in[id] = 1;
        while(!Lready_out[id]) begin
          @(posedge clk);
        end
        payload(tmp_data[id]);
	f = $fopen("output.txt","a");
	$fdisplay(f,"TIME:%0t BODY: tmp_data:%0h \n", $time, tmp_data[id]);
        $display("TIME:%0t BODY: tmp_data:%0h \n", $time, tmp_data[id]);
	$fclose(f);
        Ldata_in[id] = tmp_data[id];
      end
      // TAIL
      @(posedge clk) begin
        Lvalid_in[id] = 1;
        while(!Lready_out[id]) begin
          @(posedge clk);
        end
        tail(tmp_data[id]);
	f = $fopen("output.txt","a");
	$fdisplay(f,"TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data[id]);
        $display("TIME:%0t TAIL: tmp_data:%0h \n", $time, tmp_data[id]);
	$fclose(f);
        Ldata_in[id] = tmp_data[id];
      end
      
      @(posedge clk) begin
        Lvalid_in[id] = 0;
        Ldata_in[id] = 0;
      end
    end
  endtask