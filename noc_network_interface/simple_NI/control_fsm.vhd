----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/28/2016 05:53:20 PM
-- Design Name: 
-- Module Name: recv_fsm - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_fsm is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           
           --Data in
           DRTS : in STD_LOGIC;
           CTS : out STD_LOGIC;
           RX : in STD_LOGIC_VECTOR (31 downto 0);
           
           --Data out
           RTS : out STD_LOGIC;
           DCTS : in STD_LOGIC;
           TX : out STD_LOGIC_VECTOR (31 downto 0));
end control_fsm;

architecture Behavioral of control_fsm is

TYPE STATE_TYPE IS (s_recv_listener, s_send);
SIGNAL state   : STATE_TYPE;

begin

CTS <= '1';

control : process(clk)
begin

      if (clk'event and clk = '1') then
        if rst = '0' then
            state <= s_recv_listener;
            TX <= (others => '0');
            RTS <= '0';
            CTS <= '1';
            
        else
            case state is
            
                when s_recv_listener =>
                    if DRTS = '1' then
                        --CTS <= '1';
                        TX <= RX;
                        state <= s_send;
                        
                    else
                        state <= s_recv_listener;
                        --CTS <= '0';                        
                    end if;
                    
                when s_send =>
                    if DCTS = '1' then
                        RTS <= '1';
                        state <= s_recv_listener;
                        
                    else
                        state <= s_send;
                        CTS <= '1';
                    end if;
                    
                when others =>
                    state <= s_recv_listener;
                    TX <= (others => '0');
                    RTS <= '0';
                    CTS <= '1';
                    
              end case;
            
        end if;
      end if;

end process;

end Behavioral;

