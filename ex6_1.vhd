----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:37:51 PM
-- Design Name: 
-- Module Name: ex6_1 - Behavioral
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

entity ex6_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           I : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC);
end ex6_1;

architecture Behavioral of ex6_1 is

begin

    process(S, I)
    begin
        if(S="000") then
            Y <= I(0);
       elsif(S="001") then
            Y <= I(1);
       elsif(S="010") then
            Y <= I(2);
       elsif(S="011") then
            Y <= I(3);
       elsif(S="100") then
            Y <= I(4);
       elsif(S="101") then
            Y <= I(5);
       elsif(S="110") then
            Y <= I(6);
       elsif(S="111") then
            Y <= I(7);
       else 
            Y <= I(0);
       end if;
    end process;
end Behavioral;
