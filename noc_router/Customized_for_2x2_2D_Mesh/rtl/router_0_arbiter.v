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
`include "router_0_state_defines.v"

module arbiter(clk, rst,
                Lflit_type, Eflit_type, Sflit_type,
                Llength, Elength, Slength,
                Lreq, Ereq, Sreq,
                nextstate
              );
 
  input         clk, rst;
  input [2:0]   Lflit_type, Eflit_type, Sflit_type;
  input [11:0]  Llength, Elength, Slength;
  input         Lreq, Ereq, Sreq;
  
  output reg [3:0] nextstate;
  
  // Declaring the local variables
  reg [3:0] currentstate; 
  reg       Lruntimer, Eruntimer, Sruntimer;
  
  wire      Ltimesup, Etimesup, Stimesup;
    
  // Timer module that runs for the entire packet length
  timer Ltimer (clk, rst, Lflit_type, Llength, Lruntimer, Ltimesup);
  timer Etimer (clk, rst, Eflit_type, Elength, Eruntimer, Etimesup);
  timer Stimer (clk, rst, Sflit_type, Slength, Sruntimer, Stimesup);
  
  // Arbiter - State Machine
  // Current state sequential Logic
  always @ (posedge clk) begin
  if(rst)
    currentstate <= `IDLE;
  else
    currentstate <= nextstate;
  end
  
  // Next state decoder Logic
  always @ (Lreq, Ereq, Sreq, Ltimesup, Etimesup, Stimesup, currentstate) begin
    {Lruntimer, Eruntimer, Sruntimer} = 0;
    case(currentstate)
      `IDLE:
        begin
          if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else if(Ereq == 1) begin
            nextstate = `GRANT_E;
          end
          else if (Sreq == 1) begin
            nextstate = `GRANT_S;
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
          else if(Ereq == 1) begin
            nextstate = `GRANT_E;
          end
          else if(Sreq == 1) begin
            nextstate = `GRANT_S;
          end
          else if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else begin
            nextstate = `IDLE;
          end
        end
      
      `GRANT_E:
        begin
          if(Ereq == 1 && Etimesup == 0) begin
            Eruntimer = 1;
            nextstate = `GRANT_E;
          end
          else if(Sreq == 1) begin
            nextstate = `GRANT_S;
          end
          else if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else if(Ereq == 1) begin
            nextstate = `GRANT_E;
          end
          else begin
            nextstate = `IDLE;
          end
        end
        
      `GRANT_S:
        begin
          if(Sreq == 1 && Stimesup == 0) begin
            Sruntimer = 1;
            nextstate = `GRANT_S;
          end
          else if(Lreq == 1) begin
            nextstate = `GRANT_L;
          end
          else if(Ereq == 1) begin
            nextstate = `GRANT_E;
          end
          else if(Sreq == 1) begin
            nextstate = `GRANT_S;
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

