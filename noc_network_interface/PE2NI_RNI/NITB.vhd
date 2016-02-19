--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:16:14 12/03/2015
-- Design Name:   
-- Module Name:   C:/Users/vineeth/Desktop/PETONI RNI/NITB.vhd
-- Project Name:  NI2
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
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity NITB is
end NITB;

architecture behavior of NITB is

	-- Component Declaration for the Unit Under Test (UUT)

	component RNI
		port(
			PE_WRITE    : in  std_logic;
			PE2NI_DATA  : in  std_logic_vector(31 downto 0);
			Clk         : in  std_logic;
			Rst         : in  std_logic;
			R_READY     : in  std_logic;
			NI2R_DATA   : out std_logic_vector(31 downto 0);
			NI2R_WRITE  : out std_logic;
			NI2PE_READY : out std_logic
		);
	end component;

	--Inputs
	signal PE_WRITE   : std_logic                     := '0';
	signal PE2NI_DATA : std_logic_vector(31 downto 0) := (others => '0');
	signal Clk        : std_logic                     := '0';
	signal Rst        : std_logic                     := '0';
	signal R_READY    : std_logic                     := '0';

	--Outputs
	signal NI2R_DATA   : std_logic_vector(31 downto 0);
	signal NI2R_WRITE  : std_logic;
	signal NI2PE_READY : std_logic;

	-- Clock period definitions
	constant Clk_period : time := 10 ns;

begin
	-- Instantiate the Unit Under Test (UUT)
	uut : RNI port map(
			PE_WRITE    => PE_WRITE,
			PE2NI_DATA  => PE2NI_DATA,
			Clk         => Clk,
			Rst         => Rst,
			R_READY     => R_READY,
			NI2R_DATA   => NI2R_DATA,
			NI2R_WRITE  => NI2R_WRITE,
			NI2PE_READY => NI2PE_READY
		);

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
			counter    := counter + 1;
			PE2NI_DATA <= std_logic_vector(counter);
			wait for CLK_period * 1;
			PE_WRITE <= '1';
			wait for CLK_period * 1;
			PE_WRITE <= '0';
		end loop;

		wait for clk_period * 20;

		for i in 1 to 32 loop
			counter    := counter + 1;
			PE2NI_DATA <= std_logic_vector(counter);
			wait for CLK_period * 1;
			PE_WRITE <= '1';
			wait for CLK_period * 1;
			PE_WRITE <= '0';
		end loop;

		wait;
	end process;

	-- Read process
	rd_proc : process
	begin
		wait for CLK_period * 20;
		wait for CLK_period * 40;
		R_READY <= '1';
		wait for CLK_period * 60;
		R_READY <= '0';
		wait for CLK_period * 256 * 2;
		R_READY <= '1';
		wait;
	end process;
end;
