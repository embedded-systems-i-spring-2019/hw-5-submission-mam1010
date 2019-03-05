----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:30:11 PM
-- Design Name: 
-- Module Name: ex7 - Behavioral
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

entity ex7 is
   Port (
    clk, res : in std_logic;
    A : in std_logic_vector(3 downto 0);
    Y : out std_logic_vector(7 downto 0));
end ex7;

architecture Behavioral of ex7 is

begin
    process(clk)
begin
   if ( clk'event and clk ='1') then
      if ( res = '1') then
         Y <= "11111111";
      else
         case A is
            when "000" => Y <= "11111110";
            when "001" => Y <= "11111101";
            when "010" => Y <= "11111011";
            when "011" => Y <= "11110111";
            when "100" => Y <= "11101111";
            when "101" => Y <= "11011111";
            when "110" => Y <= "10111111";
            when "111" => Y <= "01111111";
            when others => Y <= "11111111";
         end case;
      end if;
   end if;
end process;

end Behavioral;
