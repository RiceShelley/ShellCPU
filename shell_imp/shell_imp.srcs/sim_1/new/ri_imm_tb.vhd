----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2020 11:22:17 PM
-- Design Name: 
-- Module Name: ri_imm_tb - Behavioral
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

entity ri_imm_tb is
--  Port ( );
end ri_imm_tb;

architecture Behavioral of ri_imm_tb is

    component ri_imm_ext is
        port (
            imm : in std_logic_vector(5 downto 0);
            z_ext_imm : out std_logic_vector(15 downto 0)
        );
    end component ri_imm_ext;
    
    component ri_imm_upper_concat is
        port (
            imm : in std_logic_vector(5 downto 0);
            upper_concat : out std_logic_vector(15 downto 0)
        );
    end component ri_imm_upper_concat;
    
    signal imm : std_logic_vector(5 downto 0) := b"000000";
    signal z_ext_imm : std_logic_vector(15 downto 0);
    signal upper_concat : std_logic_vector(15 downto 0);
    
begin

    ri_imm_ext_dut : ri_imm_ext port map (
        imm => imm,
        z_ext_imm => z_ext_imm
    );

    ri_imm_upper_concat_dut : ri_imm_upper_concat port map (
        imm => imm,
        upper_concat => upper_concat
    );

    tb_proc : process
    begin
        wait for 2us;
        imm <= b"111111";
        wait for 2us;
    end process tb_proc;

end Behavioral;
