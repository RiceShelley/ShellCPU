----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2020 12:00:55 AM
-- Design Name: 
-- Module Name: imm_ext_sign_tb - Behavioral
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

entity imm_ext_sign_tb is
--  Port ( );
end imm_ext_sign_tb;

architecture Behavioral of imm_ext_sign_tb is

    component imm_ext is
        port (
            imm : in std_logic_vector(10 downto 0);
            s_ext_imm : out std_logic_vector(15 downto 0)
        );
    end component imm_ext;

    signal imm : std_logic_vector(10 downto 0) := b"0000_0000_000";
    signal s_ext_imm : std_logic_vector(15 downto 0);
    
begin

    imm_ext_dut : imm_ext port map (
        imm => imm,
        s_ext_imm => s_ext_imm
    );
    
    tb_proc : process
    begin
    
        wait for 2us;
        imm <= b"1111_1111_111";
        wait for 2us;
        imm <= b"0010_0000_000";
        wait for 2us;
        imm <= b"1000_0000_001";
        wait for 2us;
    
    end process tb_proc;

end Behavioral;
