----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2019 03:12:23 PM
-- Design Name: 
-- Module Name: ex3 - Behavioral
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

entity ex3 is
    Port ( A_1, A_2, B_1, B_2 : in STD_LOGIC;
           D : in STD_LOGIC;
           E_out : out STD_LOGIC);
end ex3;

architecture Behavioral of ex3 is
    signal A : STD_LOGIC;
    signal B : STD_LOGIC;
    signal C : STD_LOGIC;
begin
    A <= A_1 and A_2;
    B <= B_1 or B_2;
    C <= B_2 and (not D);
    E_out <= A or B or C;
end Behavioral;
