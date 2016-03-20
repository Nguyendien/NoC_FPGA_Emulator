/********************
* Filename:     fifo_onehot.v
* Description:  FIFO with parameterized data_width and fifo_depth. All controls signals are active high and the reset signal is active high synchronous reset signal
                ready_out, empty signals are used for hadnshaking and flow control
                Separate modules implemented for flow_control, register, output mux
*
* $Revision: 38 $
* $Id: fifo_onehot.v 38 2016-02-20 17:24:53Z ranga $
* $Date: 2016-02-20 19:24:53 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "parameters.v"

module fifo_onehot(clk, rst, 
                    wr_en, rd_en,
                    data_in,
                    data_out,
                    empty, ready_out
                  );
                  
/* 

 HEADER FLIT DESCRIPTION (32 bits)
    ---------------------------------------------------
   |          |         |         |        |       |   | 
   | 31 - 29  | 28 - 17 | 16 - 13 | 12 - 9 | 8 - 1 | 0 |
   |          |         |         |        |       |   |
    ---------------------------------------------------

 FLIT [31 : 29] = FLIT TYPE 			      (3 bits, one-hot encoded: Header=001)
 FLIT [28 : 17] = PACKET LENGTH         (12 bits, packet length in terms of # of flits = Header + Body + Tail
 FLIT [16 : 13] = DESTINATION ADDRESS   (4 bits, addressing a 4x4 2D Mesh NoC at most)
 FLIT [12 : 9]  = SOURCE ADDRESS 	      (4 bits, addressing a 4x4 2D Mesh NoC at most)
 FLIT [8 : 1]   = PACKET ID        	    (ont-hot encoded counter, generated by NI, for ordering packets and flits in them)
 FLIT [0]       = PARITY BIT 			      (odd parity bit) 


 BODY FLIT DESCRIPTION (32 bits)
    ---------------------------------------------------
   |          |                                    |   | 
   | 31 - 29  |                28 - 1              | 0 |
   |          |                                    |   |
    ---------------------------------------------------

 FLIT [31 : 29] = FLIT TYPE       (3 bits, one-hot encoded: Body (Payload)=010)
 FLIT [28 : 1]  = DATA (PAYLOAD)  (28 bits, actual data (payload) to be transmitted) 
 FLIT [0]       = PARITY BIT      (odd parity bit) 


 TAIL FLIT DESCRIPTION (32 bits)
    ---------------------------------------------------
   |          |                                    |   | 
   | 31 - 29  |                28 - 1              | 0 |
   |          |                                    |   |
    ---------------------------------------------------

 FLIT [31 : 29] = FLIT TYPE       (3 bits, one-hot encoded: Tail=100)
 FLIT [28 : 1]  = DATA (PAYLOAD)  (28 bits, actual data (Tail) to be transmitted)
 FLIT [0]       = PARITY BIT      (odd parity bit) 

*/
  
  input                      clk, rst;
  input                      wr_en, rd_en;
  input [`DATA_WIDTH-1 : 0]  data_in;
  
  output reg [`DATA_WIDTH-1 : 0]  data_out;            // to crossbar
  output                          empty, ready_out;    // used for handshaking and flow control
  
  // Declaring the local variables
  reg [`PTR_SIZE-1 : 0]   rd_ptr, wr_ptr;              // One-hot encoded
  
  reg [`FIFO_DEPTH-1 : 0]                 en_reg;
  wire [(`FIFO_DEPTH*`DATA_WIDTH)-1 : 0]  reg_data_out;
  wire [`DATA_WIDTH-1 : 0]                mux_data_out;
  
  wire  full;
  
  assign ready_out = ~full;
  
  // Output data
  always @(posedge clk) begin
    if(rst) begin
      data_out <= 0;
    end
    else if (rd_en && ~empty) begin
      data_out <= mux_data_out;
    end
  end
  
  // Write pointer operation
  always @ (posedge clk) begin
    if (rst) begin
      wr_ptr   <= 'd1;       // default value (0001, pointing to the first FIFO element)
    end
    else if (wr_en && ~full) begin
      wr_ptr <= {wr_ptr[`PTR_SIZE-2:0], wr_ptr[`PTR_SIZE-1]}; // Left rotational shift
    end
  end
  
  // Read pointer operation
  always @ (posedge clk) begin
    if (rst) begin
      rd_ptr   <= 'd1;       // default value (0001, pointing to the first FIFO element)
    end
    else if (rd_en && ~empty) begin
      rd_ptr <= {rd_ptr[`PTR_SIZE-2:0], rd_ptr[`PTR_SIZE-1]}; // Left rotational shift
    end
  end
  
  // Full and Empty Control
  assign empty = (wr_ptr == rd_ptr) ? 1'b1 : 1'b0;
  assign full = (wr_ptr == {rd_ptr[0],rd_ptr[`PTR_SIZE-1:1]} ) ? 1'b1 : 1'b0;
  
  generate
    genvar we;
    for (we = 0;  we < `FIFO_DEPTH; we = we + 1) begin
      always @(*) begin
        en_reg[we] <= wr_ptr[we] && wr_en && ~full;
      end
    end
  endgenerate
  
  generate
    genvar wr;
    for (wr = 0; wr < `FIFO_DEPTH; wr = wr + 1) begin
      register REG_IN (clk, rst, en_reg[wr], data_in, reg_data_out[(wr*`DATA_WIDTH) +: `DATA_WIDTH]);
    end
  endgenerate
  
  onehot_mux MUX (reg_data_out, rd_ptr, mux_data_out);
  
endmodule

// 32-bit registers for data storage in FIFO
module register(clk, rst, load,
                reg_data_in, reg_data_out
                );
  
  input                      clk, rst, load;
  input [`DATA_WIDTH-1 : 0]  reg_data_in;
  
  output reg [`DATA_WIDTH-1 : 0]  reg_data_out; 
  
  always @ (posedge clk) begin
    if (rst) begin
      reg_data_out <= 0;
    end
    else if (load) begin
      reg_data_out <= reg_data_in;
    end
  end

endmodule

module onehot_mux (mux_input,
                    sel, mux_output);
  
  input [(`FIFO_DEPTH*`DATA_WIDTH)-1 : 0] mux_input;
  input [`PTR_SIZE-1 : 0]   sel;
  
  output [`DATA_WIDTH-1 : 0]   mux_output;
  
  genvar i;
  for(i = 0; i < `FIFO_DEPTH; i = i+1) begin
	assign mux_output = ((sel >> i) & 1 == 1'b1) ? mux_input[(i*`DATA_WIDTH) +: `DATA_WIDTH] : 'dz;
  end
  
endmodule