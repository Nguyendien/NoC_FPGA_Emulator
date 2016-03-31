library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Readfsm is
	port(clk           : in  STD_LOGIC;
		 rst           : in  STD_LOGIC;
		 data_ram      : in  STD_LOGIC_VECTOR(31 downto 0);--- Data from the FIFO
		 empty         : in  STD_LOGIC;
		 RT_READY      : in  STD_LOGIC;---Handshaking signal from Router or PE  to NI signalling that it is ready to read out data
		 rd_en         : out STD_LOGIC;---Read Enable from FIFO
		 ni_read_ready : out std_logic;--- Handshaking signal from NI to Router or PE signalling that it is ready to write out data
		 data_out_R    : out STD_LOGIC_VECTOR(31 downto 0));---data from NI to Router or PE

end Readfsm;

architecture r2ni of Readfsm is
	signal data_out_sig_r, data_in_sig_ni : std_logic_vector(31 downto 0);

	signal read_fi_ni_sig, ni_read_ready_sig : std_logic;
	type state_type is (S0, S1);
	signal state : state_type;

begin
	data_in_sig_ni <= data_ram;

	rd_en <= read_fi_ni_sig;

	data_out_R    <= data_out_sig_r;
	ni_read_ready <= ni_read_ready_sig;

	process(clk)
	begin
		if clk'event and clk = '1' then
			if rst = '0' then
				state             <= S0;
				read_fi_ni_sig    <= '0';
				ni_read_ready_sig <= '0';
				data_out_sig_r    <= "--------------------------------";
			else
				case (state) is
					when S0 =>
						if (empty = '0' and RT_READY /= '0') then
							state             <= S1;
							read_fi_ni_sig    <= '1';
							ni_read_ready_sig <= '1';
						else
							state <= s0;
						end if;
					when s1 =>
						data_out_sig_r <= data_in_sig_ni;

				---read_fi_ni_sig <='1';
				end case;
			end if;
		end if;

	end process;
end r2ni;