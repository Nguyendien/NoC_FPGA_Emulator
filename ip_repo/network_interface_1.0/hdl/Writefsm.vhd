library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;
entity PE2NIfsm is
	port( data_in_pe     : in  std_logic_vector(31 downto 0);
		clk            : in  std_logic;
		rst            : in  std_logic;
		full           : in  std_logic;
		almost_full    : in  std_logic;
		pe_write_in    : in  std_logic;
		wr_en          : out std_logic;
		ni2pe_readyout : out std_logic;
		data_wr_ctlr   : out std_logic_vector(31 downto 0));
end PE2NIfsm;

architecture Beh of PE2NIfsm is
	type state_type is (S0, S1, S2);
	signal state : state_type;

begin
	process(clk, rst, state, full, almost_full, pe_write_in, data_in_pe)
		variable counter : integer range 2047 downto 0;
		variable length  : integer range 0 to 11;
	begin
		if clk'event and clk = '1' then
			if rst = '1' then
				state          <= S0;
				wr_en          <= '0';
				data_wr_ctlr   <= "--------------------------------";
				ni2pe_readyout <= '0';
				counter        := 0;
				length         := 0;
			else
				case (state) is
					when S0 =>
						if ((full = '0' or almost_full = '0') and pe_write_in /= '0') then
							state          <= S1;
							wr_en          <= '0';
							--data_wr_ctlr <="--------------------------------";
							ni2pe_readyout <= '0';
						else
							state <= S0;
						end if;

					when S1 =>
						length         := conv_integer(data_in_pe(29 downto 18));
						counter        := 1;
						wr_en          <= '1';
						data_wr_ctlr   <= data_in_pe;
						ni2pe_readyout <= '1';
						state          <= S2;
					when S2 =>
						if counter <= length then
							counter        := counter + 1;
							ni2pe_readyout <= '1';
							wr_en          <= '1';
							data_wr_ctlr   <= data_in_pe;
							state          <= S2;
						else
							state <= S0;
						end if;
				end case;
			end if;
		end if;
	end process;

end beh;
