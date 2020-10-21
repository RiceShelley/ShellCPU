----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2020 02:05:41 PM
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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

entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is

    component ALU is
        port (
            inputA : in std_logic_vector(15 downto 0);
            inputB : in std_logic_vector(15 downto 0);
            outputC : out std_logic_vector(15 downto 0);
            op_add : in std_logic;
            op_sub : in std_logic;
            op_and : in std_logic;
            op_or : in std_logic;
            op_xor : in std_logic;
            op_nand : in std_logic;
            op_asr : in std_logic;
            op_asl : in std_logic;
            op_cmp : in std_logic
        );
    end component ALU;

    signal inputA : std_logic_vector(15 downto 0) := x"0005";
    signal inputB : std_logic_vector(15 downto 0) := x"0003";
    signal outputC : std_logic_vector(15 downto 0);
    signal op_add : std_logic := '0';
    signal op_sub : std_logic := '0';
    signal op_and : std_logic := '0';
    signal op_or : std_logic := '0';
    signal op_xor : std_logic := '0';
    signal op_nand : std_logic := '0';
    signal op_asr : std_logic := '0';
    signal op_asl : std_logic := '0';
    signal op_cmp : std_logic := '0';

begin

    alu_tb_inst : ALU port map (
        inputA => inputA,
        inputB => inputB,
        outputC => outputC,
        op_add => op_add,
        op_sub => op_sub,
        op_and => op_and,
        op_or => op_or,
        op_xor => op_xor,
        op_nand => op_nand,
        op_asr => op_asr,
        op_asl => op_asl,
        op_cmp => op_cmp
    );
    
    tb_proc : process
    begin
    
        wait for 2us;
        op_add <= '1';
        wait for 2us;
        op_add <= '0';
        op_sub <= '1';
        wait for 2us;
        op_sub <= '0';
        op_and <= '1';
        wait for 2us;
        op_and <= '0';
        op_or <= '1';
        wait for 2us;
        op_or <= '0';
        op_xor <= '1';
        wait for 2us;
        op_xor <= '0';
        op_nand <= '1';
        wait for 2us;
        op_nand <= '0';
        op_asr <= '1';
        wait for 2us;
        op_asr <= '0';
        op_asl <= '1';
        wait for 2us;
        op_asl <= '0';
        op_cmp <= '1';
        wait for 2us;
        op_cmp <= '0';
        wait for 2us;
        -- negative asl
        inputA <= x"FFFD";
        op_asl <= '1';
        wait for 2us;
        op_asl <= '0';
        
    end process tb_proc;

end Behavioral;
