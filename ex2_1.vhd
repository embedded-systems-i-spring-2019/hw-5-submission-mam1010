----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 10:07:26 AM
-- Design Name: 
-- Module Name: ex2_1 - Behavioral
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

entity ex2_1 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           D : in STD_LOGIC;
           E_out : out STD_LOGIC);
end ex2_1;

architecture Behavioral of ex2_1 is

begin
    process(A, B)
    begin
        if(A="11") then
            E_out <= '1';
        else
            if(B="00") then
                E_out <= '0';
            else
                E_out <= '1';
            end if;
        end if;
    end process;

end Behavioral;
