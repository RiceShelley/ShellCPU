----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2020 12:20:17 AM
-- Design Name: 
-- Module Name: alu_ctrl_tb - Behavioral
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

entity alu_ctrl_tb is
--  Port ( );
end alu_ctrl_tb;

architecture Behavioral of alu_ctrl_tb is

    component ALU_CTRL is
        Port (
            alu_op : in std_logic_vector(3 downto 0);
            op_add : out std_logic;
            op_sub : out std_logic;
            op_and : out std_logic;
            op_or : out std_logic;
            op_xor : out std_logic;
            op_nand : out std_logic;
            op_asr : out std_logic;
            op_asl : out std_logic;
            op_cmp : out std_logic
        );
    end component ALU_CTRL;
    
    signal alu_op : std_logic_vector(3 downto 0) := "0000";
    
    signal op_add : std_logic;
    signal op_sub : std_logic;
    signal op_and : std_logic;
    signal op_or : std_logic;
    signal op_xor : std_logic;
    signal op_nand : std_logic;
    signal op_asr : std_logic;
    signal op_asl : std_logic;
    signal op_cmp : std_logic;
    
begin

    dut : component ALU_CTRL port map (
        alu_op => alu_op,
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
    
    test : process
    begin
    
        alu_op <= "0000";
        wait for 2us;
        
        alu_op <= "0001";
        wait for 2us;
    
        alu_op <= "0010";
        wait for 2us;
        
        alu_op <= "0011";
        wait for 2us;
        
        alu_op <= "0100";
        wait for 2us;
        
        alu_op <= "0101";
        wait for 2us;
        
        alu_op <= "0110";
        wait for 2us;
        
        alu_op <= "0111";
        wait for 2us;
        
        alu_op <= "1010";
        wait for 20us;
    
    end process test;

end Behavioral;
