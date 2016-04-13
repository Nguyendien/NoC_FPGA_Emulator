library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Readfsm is
	port(clk           : in  STD_LOGIC;
		 rst           : in  STD_LOGIC;
		 empty         : in  STD_LOGIC;
		 Read_Ready    : in  STD_LOGIC;---Handshaking signal from Router or PE  to NI signalling that it is ready to read out data
		 rd_en         : out STD_LOGIC;---Read Enable from FIFO
		 read_data_ctrl:out STD_LOGIC;
		 Write_ready : out std_logic);--- Handshaking signal from NI to Router or PE signalling that it is ready to write out data
		

end Readfsm;

architecture r2ni of Readfsm is
	
	type state_type is (S0,S1);
	signal current_state,next_state : state_type;

begin

COMB: process(current_state,empty,Read_Ready)		
Begin
 rd_en<='0';
  Write_ready <= '0';
 read_data_ctrl <= '0';
next_state<=s0;	
 case(current_state) is
   when S0=>
     if (empty = '0' and  Read_Ready = '1') then
	    
	      next_state   <= S1;
		  rd_en    <= '1';
		 Write_ready <= '1';	
	else
		 next_state <= s0;
		 rd_en   <= '0';
		 read_data_ctrl<= '0';
		 Write_ready <= '0';
	end if;
					when s1 =>
				read_data_ctrl<= '1';
				rd_en    <= '1';
				Write_ready <= '1';	
						       
			end case;
		

	end process;
  
SEQ:process (clk)
begin
 if clk'event and clk = '1'  then 
   If rst = '0' then
     current_state<=S0;
    else
	current_state<=next_state;
   end if;
   end if;
  end Process;  
  
  end r2ni;           