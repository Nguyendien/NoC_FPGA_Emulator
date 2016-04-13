library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FIFO is
	port(
		CLK          : in  STD_LOGIC;
		RST          : in  STD_LOGIC;
		wr_en        : in  STD_LOGIC;
		rd_en        : in  STD_LOGIC;
		fifo_data_in : in  STD_LOGIC_VECTOR(31 downto 0);
		fifo_data_out: out STD_LOGIC_VECTOR(31 downto 0);
		Empty        : out STD_LOGIC;
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
	--Almost_Full  <= '0';
		if clk'event and clk = '1' then
			if RST = '0' then
				wr_ptr := 0;
				rd_ptr := 0;

				Looped := false;

				Almost_Full  <= '0';
				Empty <= '1';
			else
				if (rd_en = '1') then
					if ((Looped = true) or (wr_ptr /= rd_ptr)) then
						-- Update data output
						fifo_data_out<= Memory(rd_ptr);

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
						Memory(wr_ptr) := fifo_data_in;

						-- Increment wr_ptr pointer as needed
						if (wr_ptr = 255) then
							wr_ptr := 0;

							Looped := true;
						else
							wr_ptr := wr_ptr + 1;
						end if;
					end if;
				end if;

				-- Update Empty and Almost_Full flags
				if (wr_ptr = rd_ptr)or(wr_ptr-1 = rd_ptr-1)  then
					if Looped then
						Almost_Full <= '1';
					else
						Empty       <= '0';
						

					end if;
				
				else
					Empty       <= '0';
					Almost_full <= '0';
				end if;
			end if;
		end if;
	end process;

end Behavioral;