/********************
* Filename:     flowcontrol.v
* Description:  Testbench for Flow control mechanism is established between the INPUT and OUTPUT FIFO so that input FIFO does not receive any further data 
                for the particular output direction if it is not ready to accept data
*
* $Revision: 27 $
* $Id: flowcontrol_tb.v 27 2015-12-01 22:26:29Z ranga $
* $Date: 2015-12-02 00:26:29 +0200 (Wed, 02 Dec 2015) $
* $Author: ranga $
*********************/

module flowcontrol_tb();
  
  // Declaring the port variables for DUT
  reg   rst;
  reg   Nport, Eport, Wport, Sport, Lport;
  reg   Lready_in, Nready_in, Eready_in, Wready_in, Sready_in;
  
  wire  Lready_out, Nready_out, Eready_out, Wready_out, Sready_out;
  
  // Instantiate FIFO DUT
  flowcontrol DUT (rst, 
                    Nport, Eport, Wport, Sport, Lport, 
                    Lready_in, Nready_in, Eready_in, Wready_in, Sready_in, 
                    Lready_out, Nready_out, Eready_out, Wready_out, Sready_out
                  );
  
  // Specify the CYCLE parameter
  parameter CYCLE = 10;
  
  // Task to generate reset
  task reset;
    begin
      rst = 1;
      repeat(2)
        #(CYCLE * 2);
      $display("TIME:%0t HARD_RESET:: Lready_out:%0b, Nready_out:%0b, Eready_out:%0b, Wready_out:%0b, Sready_out:%0b", $time, Lready_out, Nready_out, Eready_out, Wready_out, Sready_out);
      rst = 0;
    end
  endtask
                  
  initial begin : SIM
    integer i;
    
    #(CYCLE * 2);
    reset;
    
    for(i = 0; i < 2**2; i=i+1) begin
      {Nport, Nready_in} = i;
      #CYCLE;
    end
    {Nport, Nready_in} = 0;
    
    reset;
    
    for(i = 0; i < 2**2; i=i+1) begin
      {Eport, Eready_in} = i;
      #CYCLE;
    end
    {Eport, Eready_in} = 0;
    reset;
    
    for(i = 0; i < 2**2; i=i+1) begin
      {Wport, Wready_in} = i;
      #CYCLE;
    end
    {Wport, Wready_in} = 0;
    
    reset;
    
    for(i = 0; i < 2**2; i=i+1) begin
      {Sport, Sready_in} = i;
      #CYCLE;
    end
    {Sport, Sready_in} = 0;
    
    reset;
    
    for(i = 0; i < 2**2; i=i+1) begin
      {Lport, Lready_in} = i;
      #CYCLE;
    end
    {Lport, Lready_in} = 0;
    
    reset;
    
    #(CYCLE * 2); 
    $finish;
  end  
  
  initial begin
    $monitor("TIME:%0t ********* STATUS :  Lready_out:%0b, Nready_out:%0b, Eready_out:%0b, Wready_out:%0b, Sready_out:%0b **********", $time, Lready_out, Nready_out, Eready_out, Wready_out, Sready_out);
  end
 
endmodule
