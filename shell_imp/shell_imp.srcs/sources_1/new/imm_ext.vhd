----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 10:09:03 PM
-- Design Name: 
-- Module Name: imm_ext - Behavioral
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

entity imm_ext is
    Port (
        imm : in std_logic_vector(10 downto 0);
        s_ext_imm : out std_logic_vector(15 downto 0)
    );
end imm_ext;

architecture Behavioral of imm_ext is

begin

    s_ext_imm <= imm(10) & imm(10) & imm(10) & imm(10) & imm(10) & imm(10) & imm(9 downto 0);

end Behavioral;
