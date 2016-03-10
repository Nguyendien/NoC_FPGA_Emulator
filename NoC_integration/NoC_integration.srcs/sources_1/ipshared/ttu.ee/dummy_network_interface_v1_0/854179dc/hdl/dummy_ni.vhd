----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2016 03:12:33 PM
-- Design Name: 
-- Module Name: dummy_ni - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dummy_ni is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           
           --Data in
           RTS_data_in : in STD_LOGIC;
           CTS_data_in : out STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (31 downto 0);
           
           --Data out
           RTS_data_out : out STD_LOGIC;
           CTS_data_out : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (31 downto 0));
end dummy_ni;

architecture Behavioral of dummy_ni is

begin

CTS_data_in <= '1';
RTS_data_out <= '1';

data_out <= data_in;
end Behavioral;
