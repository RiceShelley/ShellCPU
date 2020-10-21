----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2020 12:50:53 PM
-- Design Name: 
-- Module Name: ri_imm_upper_concat - Behavioral
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

entity ri_imm_upper_concat is
    Port (
        imm : in std_logic_vector(5 downto 0);
        upper_concat : out std_logic_vector(15 downto 0)
    );
end ri_imm_upper_concat;

architecture Behavioral of ri_imm_upper_concat is

begin

    upper_concat <= imm & b"0000000000";

end Behavioral;
