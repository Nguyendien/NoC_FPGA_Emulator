/********************
* Filename:     arbiter.v
* Description:  Packets with the same priority and destined for the same output port are scheduled with a round-robin arbiter with the last served as least priority. 
              Priority direction Local, North, East, South, West
              Maintains the priority till it reads the TAIL flit
              One-hot encoding for state variable
              Output values [5:0]: Output[5:1] -> selection, Output[0] -> idle
*
* $Revision: 38 $
* $Id: arbiter.v 38 2016-02-20 17:24:53Z ranga $
* $Date: 2016-02-20 19:24:53 +0200 (Sat, 20 Feb 2016) $
* $Author: ranga $
*********************/
`include "parameters.v"
`include "router_3_state_defines.v"

module arbiter(clk, rst,
                Lflit_type, Nflit_type, Wflit_type,
                Llength, Nlength, Wlength,
                Lreq, Nreq, Wreq,
                nextstate
              );
 
  input         clk, rst;
  input [2:0]   Lflit_type, Nflit_type, Wflit_type;
  input [11:0]  Llength, Nlength, Wlength;
  input         Lreq, Nreq, Wreq;
  
  output reg [3:0] nextstate;
  
  // Declaring the local variables
  reg [5:0] currentstate; 
  reg       Lruntimer, Nruntimer, Wruntimer;
  
  wire      Ltimesup, Ntimesup, Wtimesup;
    
  // Timer module that runs for the entire packet length
  timer Ltimer (clk, rst, Lflit_type, Llength, Lruntimer, Ltimesup);
  timer Ntimer (clk, rst, Nflit_type, Nlength, Nruntimer, Ntimesup);
  timer Wtimer (clk, rst, Wflit_type, Wlength, Wruntimer, Wtimesup);
  
  // Arbiter - State Machine
  // Current state sequential Logic
  always @ (posedge clk) begin
  if(rst)
    currentstate <= `IDLE;
  else
    currentstate <= nextstate;
  end
  
  // Next state decoder Logic
  always @ (Lreq, Nreq, Wreq, Ltimesup, Ntimesup, Wtimesup, currentstate) begin
    {Lruntimer, Nruntimer, Wruntimer} = 0;
    case(currentstate)
      `IDLE:
        begin
          if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else if(Nreq == 1) begin
            nextstate = `GRANT_N;
          end
          else if(Wreq == 1) begin
            nextstate = `GRANT_W;
          end
          else begin
            nextstate = `IDLE;
          end
        end
        
      `GRANT_L:
        begin
          if(Lreq == 1 && Ltimesup == 0) begin
            Lruntimer = 1;
            nextstate = `GRANT_L;
          end
          else if(Nreq == 1) begin
            nextstate = `GRANT_N;
          end
          else if(Wreq == 1) begin
            nextstate = `GRANT_W;
          end
          else if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else begin
            nextstate = `IDLE;
          end
        end
        
      `GRANT_N:
        begin
          if(Nreq == 1 && Ntimesup == 0) begin
            Nruntimer = 1;
            nextstate = `GRANT_N;
          end
          else if(Wreq == 1) begin
            nextstate = `GRANT_W;
          end
          else if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else if(Nreq == 1) begin
            nextstate = `GRANT_N;
          end
          else begin
            nextstate = `IDLE;
          end
        end
            
      `GRANT_W:
        begin
          if(Wreq == 1 && Wtimesup == 0) begin
            Wruntimer = 1;
            nextstate = `GRANT_W;
          end
          else if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else if(Nreq == 1) begin
            nextstate = `GRANT_N;
          end
          else if(Wreq == 1) begin
            nextstate = `GRANT_W;
          end
          else begin
            nextstate = `IDLE;
          end
        end
              
      default:
        begin
          nextstate = `IDLE;
        end
    endcase
  end

endmodule

module timer (clk, rst, flit_type, length, runtimer, timesup);

  input           clk, rst;
  input [2 : 0]   flit_type;
  input [11 : 0]  length;
  input           runtimer;
  
  output reg      timesup;
  
  //Declaring the local variables
  reg [11 : 0]     timeoutclockperiods; // stores packet length
  reg [11 : 0]     count;
  
  // Setting Access time for each request 
  always @ (posedge clk) begin: timeout
    if(rst) begin
      count <= 0;
      timeoutclockperiods <= 0;
    end
    else begin
      if (flit_type == `HEADER) begin
        timeoutclockperiods <= length;
      end
      if (runtimer == 0) begin
        count <= 0;
      end
      else begin
        count <= count + 1;
      end
    end
  end
  
  // Asserting the timesup signal when the access time exceeds timeoutclockperiod
  always @ (count, timeoutclockperiods) begin : timeup
    if (count == timeoutclockperiods)
      timesup = 1;
    else
      timesup = 0;
  end

endmodule

