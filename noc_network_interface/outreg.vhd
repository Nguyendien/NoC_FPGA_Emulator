library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity Out_reg is
port(
		CLK          : in  STD_LOGIC;
		RST          : in  STD_LOGIC;
		fifo_data_out: in  STD_LOGIC_VECTOR(31 downto 0);
		write_data_ctrl:in std_logic;
		read_data_ctrl:in std_logic;
		data_fifo     : out STD_LOGIC_VECTOR(31 downto 0)
		
	);
end Out_reg;
architecture Beh of Out_reg is
Begin

Process(clk )
begin 

 
if clk'event and clk = '1'  then 
   If rst = '0' then
   data_fifo<="00000000000000000000000000000000";
   elsif write_data_ctrl ='1' and read_data_ctrl ='1' then
data_fifo<=fifo_data_out;
else
 data_fifo<="00000000000000000000000000000000";


end if;
end if;
end process;

end beh;