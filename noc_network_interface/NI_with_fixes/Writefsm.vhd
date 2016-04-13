library ieee ;
USE ieee.std_logic_1164.all ;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;
entity Writefsm is
	port( length_in     : in  std_logic_vector(11 downto 0);-- data from the processing element(PE)or Router
		clk            : in  std_logic;
		rst            : in  std_logic;
	    almost_full    : in  std_logic;
		write_in    : in  std_logic;                    --- Handshaking signal from the PE or Router informing the NI that it wants to write
		wr_en          : out std_logic;
		Read_in:out std_logic  ;           --- Handshaking signal from the  NI to PE or Router that it ready to read in data(FIFO not full)
		write_data_ctrl:out std_logic;
		length_out  : out std_logic_vector(11 downto 0));-- data from the write controller to the FIFO
	
end Writefsm;

architecture Beh of Writefsm is
	type state_type is (S0, S1, S2);
	signal current_state,next_state : state_type;
    --signal counter : std_logic_vector(10 downto 0);
	signal length  : std_logic_vector(11 downto 0);
begin
	COMB: process(current_state,almost_full,write_in,length_in,length)
		variable counter : std_logic_vector(11 downto 0);

	begin
		
				next_state          <= S0;
				wr_en          <= '0';
				length_out   <="000000000000";
				Read_in<='0';
		         counter        := "000000000000";
				length         <= "000000000000";
				write_data_ctrl<='0';
			
				case (current_state) is
					when S0 =>
						if almost_full = '0' and write_in ='1' then
							next_state         <= S1;
							wr_en          <= '1';
							Read_in<='1';
								
						else
							next_state <= S0;
							wr_en          <= '0';
							Read_in<='0';
							write_data_ctrl<='0';
							
						end if;

					when S1 =>
						length         <= length_in;
						counter        :=  "000000000001";

						wr_en          <= '1';
						length_out   <= length_in;
						write_data_ctrl<='1';
						Read_in<='1';
						next_state          <= S2;
					when S2 =>
						if counter <= length then
							counter := counter + 1;
							Read_in<='1';
							wr_en          <= '1';
							length_out   <= length_in;
							write_data_ctrl<='1';
							next_state          <= S2;
						else
							next_state <= S0;
							--counter        <= 0;
						end if;
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
  
   
end beh;

  