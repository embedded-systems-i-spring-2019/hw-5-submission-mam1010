----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 02:54:22 PM
-- Design Name: 
-- Module Name: ex2 - Behavioral
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

entity ex2 is
    Port ( A : in std_logic_vector(1 downto 0);
           B : in std_logic_vector(1 downto 0);
           D_1 : in STD_LOGIC;
           E_out : out std_logic);
end ex2;

architecture Behavioral of ex2 is

begin
    process(A, B)
    begin
        case A is
            when "11" => E_out <= '1';
            when others => 
                case B is
                    when "00" => E_out <= '0';
                    when others => E_out <= '1';
                end case;
        end case;
    end process;
end Behavioral;
