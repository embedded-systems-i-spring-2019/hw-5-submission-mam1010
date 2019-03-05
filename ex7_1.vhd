----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:36:29 PM
-- Design Name: 
-- Module Name: ex7_1 - Behavioral
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

entity ex7_1 is
    Port (
    clk, res : in std_logic;
    A : in std_logic_vector(3 downto 0);
    Y : out std_logic_vector(7 downto 0));
end ex7_1;

architecture Behavioral of ex7_1 is

begin
    process(clk)
    begin
        if ( clk'event and clk ='1') then
          if ( res = '1') then
             Y <= "11111111";
          else
             if(A="000") then
                Y <= "11111110";
             elsif(A="001") then
                Y <= "11111101";
             elsif(A="010") then
                Y <= "11111011";
             elsif(A="011") then
                Y <= "11110111";
             elsif(A="100") then
                Y <= "11101111";
             elsif(A="101") then
                Y <= "11011111";
             elsif(A="110") then
                Y <= "10111111";
             elsif(A="111") then
                Y <= "01111111";
             else
                Y <= "11111111";
             end if;
          end if;
       end if;
    end process;

end Behavioral;
