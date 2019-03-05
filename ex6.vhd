----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:26:19 PM
-- Design Name: 
-- Module Name: ex6 - Behavioral
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

entity ex6 is
    Port ( S : in std_logic_vector(2 downto 0);
           I : in std_logic_vector(7 downto 0);
           Y : out std_logic);
end ex6;

architecture Behavioral of ex6 is

begin
    process (S,I)
begin
   case S is
      when "000" => Y <= I(0);
      when "001" => Y <= I(1);
      when "010" => Y <= I(2);
      when "011" => Y <= I(3);
      when "100" => Y <= I(4);
      when "101" => Y <= I(5);
      when "110" => Y <= I(6);
      when "111" => Y <= I(7);
      when others => Y <= I(0);
   end case;
end process;

end Behavioral;
