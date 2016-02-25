--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:59:33 12/04/2015
-- Design Name:   
-- Module Name:   C:/RNI working/NITOPE RNI/rnitb.vhd
-- Project Name:  rnitb
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RNI
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_arith.all;

entity rnitb is
end rnitb;

architecture behavior of rnitb is

	-- Component Declaration for the Unit Under Test (UUT)

	component RNI
		port(
			R_WRITE     : in  std_logic;
			R2NI_DATA   : in  std_logic_vector(31 downto 0);
			Clk         : in  std_logic;
			Rst         : in  std_logic;
			PE_READY    : in  std_logic;
			NI2PE_DATA  : out std_logic_vector(31 downto 0);
			NI2PE_WRITE : out std_logic;
			NI2R_READY  : out std_logic
		);
	end component;

	--Inputs
	signal R_WRITE   : std_logic                     := '0';
	signal R2NI_DATA : std_logic_vector(31 downto 0) := (others => '0');
	signal Clk       : std_logic                     := '0';
	signal Rst       : std_logic                     := '0';
	signal PE_READY  : std_logic                     := '0';

	--Outputs
	signal NI2PE_DATA  : std_logic_vector(31 downto 0);
	signal NI2PE_WRITE : std_logic;
	signal NI2R_READY  : std_logic;

	-- Clock period definitions
	constant Clk_period : time := 10 ns;

begin

	-- Instantiate the Unit Under Test (UUT)
	uut : RNI port map(
			R_WRITE     => R_WRITE,
			R2NI_DATA   => R2NI_DATA,
			Clk         => Clk,
			Rst         => Rst,
			PE_READY    => PE_READY,
			NI2PE_DATA  => NI2PE_DATA,
			NI2PE_WRITE => NI2PE_WRITE,
			NI2R_READY  => NI2R_READY
		);

	-- Clock process definitions
	CLK_process : process
	begin
		CLK <= '0';
		wait for CLK_period / 2;
		CLK <= '1';
		wait for CLK_period / 2;
	end process;

	-- Reset process
	rst_proc : process
	begin
		wait for CLK_period * 5;

		RST <= '1';

		wait for CLK_period * 5;

		RST <= '0';

		wait;
	end process;

	-- Write process
	wr_proc : process
		variable counter : unsigned(31 downto 0) := (others => '0');
	begin
		wait for CLK_period * 20;

		for i in 1 to 32 loop
			counter := counter + 1;

			R2NI_DATA <= std_logic_vector(counter);

			wait for CLK_period * 1;

			R_WRITE <= '1';

			wait for CLK_period * 1;

			R_WRITE <= '0';
		end loop;

		wait for clk_period * 20;

		for i in 1 to 32 loop
			counter := counter + 1;

			R2NI_DATA <= std_logic_vector(counter);

			wait for CLK_period * 1;

			R_WRITE <= '1';

			wait for CLK_period * 1;

			R_WRITE <= '0';
		end loop;

		wait;
	end process;

	-- Read process
	rd_proc : process
	begin
		wait for CLK_period * 20;

		wait for CLK_period * 40;

		PE_READY <= '1';

		wait for CLK_period * 60;

		PE_READY <= '0';

		wait for CLK_period * 256 * 2;

		PE_READY <= '1';

		wait;
	end process;
end;