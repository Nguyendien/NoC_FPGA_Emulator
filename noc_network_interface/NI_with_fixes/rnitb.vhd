--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:34:12 03/30/2016
-- Design Name:   
-- Module Name:   C:/Users/vineeth/Desktop/COMBINED RNI MARCH 29 sep process/rnitb.vhd
-- Project Name:  rgt
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
Library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rnitb IS
END rnitb;
 
ARCHITECTURE behavior OF rnitb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RNI
    PORT(
         ROUTER_WRITE : IN  std_logic;
         R2NI_DATA : IN  std_logic_vector(31 downto 0);
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         PE_READY : IN  std_logic;
         PE_WRITE : IN  std_logic;
         PE2NI_DATA : IN  std_logic_vector(31 downto 0);
         ROUTER_READY : IN  std_logic;
         NI2PE_DATA : OUT  std_logic_vector(31 downto 0);
         NI2PE_WRITE : OUT  std_logic;
         NI2ROUTER_READY : OUT  std_logic;
         NI2ROUTER_DATA : OUT  std_logic_vector(31 downto 0);
         NI2ROUTER_WRITE : OUT  std_logic;
         NI2PE_READY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ROUTER_WRITE : std_logic ;
   signal R2NI_DATA : std_logic_vector(31 downto 0) ;
   signal Clk : std_logic ;
   signal Rst : std_logic ;
   signal PE_READY : std_logic ;
   signal PE_WRITE : std_logic ;
   signal PE2NI_DATA : std_logic_vector(31 downto 0);
   signal ROUTER_READY : std_logic ;

 	--Outputs
   signal NI2PE_DATA : std_logic_vector(31 downto 0);
   signal NI2PE_WRITE : std_logic;
   signal NI2ROUTER_READY : std_logic;
   signal NI2ROUTER_DATA : std_logic_vector(31 downto 0);
   signal NI2ROUTER_WRITE : std_logic;
   signal NI2PE_READY : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RNI PORT MAP (
          ROUTER_WRITE => ROUTER_WRITE,
          R2NI_DATA => R2NI_DATA,
          Clk => Clk,
          Rst => Rst,
          PE_READY => PE_READY,
          PE_WRITE => PE_WRITE,
          PE2NI_DATA => PE2NI_DATA,
          ROUTER_READY => ROUTER_READY,
          NI2PE_DATA => NI2PE_DATA,
          NI2PE_WRITE => NI2PE_WRITE,
          NI2ROUTER_READY => NI2ROUTER_READY,
          NI2ROUTER_DATA => NI2ROUTER_DATA,
          NI2ROUTER_WRITE => NI2ROUTER_WRITE,
          NI2PE_READY => NI2PE_READY
        );

    -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period;
		Clk <= '1';
		wait for Clk_period;
   end process;
-- Reset process
	rst_proc : process
	begin
	wait for CLK_period ;
		
		RST <= '0';
		
		wait for CLK_period ;
		
		RST <= '1';
		
		wait;
	end process;   -- Stimulus process
	
--  - Write process
	wr_proc : process
		
	begin		
		
		
			
			R2NI_DATA <= "11111111111111111111111111111111";
			PE2NI_DATA<= "11111111111111111111111111111111";
			
			
			PE_WRITE <= '1';
         ROUTER_WRITE <= '1';
		 
		 pe_ready<='1';
		 router_ready<='1';
			wait for CLK_period*10 ;
		
		
			
			R2NI_DATA <= "10101010101010101010101010101010";
			PE2NI_DATA<="10101010101010101010101010101010";
			
		
			PE_WRITE <= '1';
         ROUTER_WRITE <= '1';
		 
		 pe_ready<='0';
		 router_ready<='0';
			wait for CLK_period*10 ;
		
				--PE_WRITE <= '0';
         --ROUTER_WRITE <= '0';
		--end loop;
		R2NI_DATA <=    "11100011100011100011100011100011";
			PE2NI_DATA<="11100011100011100011100011100011";
			--wait for CLK_period * 1;
			
			PE_WRITE <= '0';
         ROUTER_WRITE <= '0';
		 
		 pe_ready<='1';
		 router_ready<='1';
		
		wait for CLK_period*10 ;
			R2NI_DATA <=    "11001100110011001100110011001100";
			PE2NI_DATA<="11001100110011001100110011001100";
			
			PE_WRITE <= '0';
         ROUTER_WRITE <= '0';
		 
		 pe_ready<='0';
		 router_ready<='0';
		 wait for CLK_period*10 ;
		 
		
	end process;
	
	
 end;
