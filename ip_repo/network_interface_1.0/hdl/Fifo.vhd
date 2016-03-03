library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FIFO is
	port(
		CLK          : in  STD_LOGIC;
		RST          : in  STD_LOGIC;
		wr_en        : in  STD_LOGIC;
		rd_en        : in  STD_LOGIC;
		data_wr_ctlr : in  STD_LOGIC_VECTOR(31 downto 0);
		data_ram     : out STD_LOGIC_VECTOR(31 downto 0);
		Empty        : out STD_LOGIC;
		Full         : out STD_LOGIC;
		Almost_full  : out STD_LOGIC
	);
end FIFO;

architecture Behavioral of FIFO is
begin

	-- Memory Pointer Process
	fifo_proc : process(CLK)
		type FIFO_Memory is array (0 to 255) of STD_LOGIC_VECTOR(31 downto 0);
		variable Memory : FIFO_Memory;

		variable wr_ptr : natural range 0 to 255;
		variable rd_ptr : natural range 0 to 255;

		variable Looped : boolean;
	begin
		if clk'event and clk = '1' then
			if RST = '0' then
				wr_ptr := 0;
				rd_ptr := 0;

				Looped := false;

				Full  <= '0';
				Empty <= '1';
			else
				if (rd_en = '1') then
					if ((Looped = true) or (wr_ptr /= rd_ptr)) then
						-- Update data output
						data_ram <= Memory(rd_ptr);

						-- Update rd_ptr pointer as needed
						if (rd_ptr = 255) then
							rd_ptr := 0;

							Looped := false;
						else
							rd_ptr := rd_ptr + 1;
						end if;

					end if;
				end if;

				if (wr_en = '1') then
					if ((Looped = false) or (wr_ptr /= rd_ptr)) then
						-- Write Data to Memory
						Memory(wr_ptr) := data_wr_ctlr;

						-- Increment wr_ptr pointer as needed
						if (wr_ptr = 255) then
							wr_ptr := 0;

							Looped := true;
						else
							wr_ptr := wr_ptr + 1;
						end if;
					end if;
				end if;

				-- Update Empty and Full flags
				if (wr_ptr = rd_ptr) then
					if Looped then
						Full <= '1';
					else
						Empty       <= '1';
						Almost_full <= '0';

					end if;
				elsif (wr_ptr + 1 = rd_ptr - 1) then
					Empty       <= '0';
					Full        <= '0';
					Almost_full <= '1';
				else
					Empty       <= '0';
					Full        <= '0';
					Almost_full <= '0';
				end if;
			end if;
		end if;
	end process;

end Behavioral;