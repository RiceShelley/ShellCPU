----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2020 11:45:11 PM
-- Design Name: 
-- Module Name: mux_2_to_1 - Behavioral
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

entity mux_2_to_1 is
    Port (
        a : in std_logic_vector(15 downto 0);
        b : in std_logic_vector(15 downto 0);
        sel : in std_logic;
        c : out std_logic_vector(15 downto 0)
    );
end mux_2_to_1;

architecture Behavioral of mux_2_to_1 is

begin

    c <= a when (sel = '0') else b;

end Behavioral;
