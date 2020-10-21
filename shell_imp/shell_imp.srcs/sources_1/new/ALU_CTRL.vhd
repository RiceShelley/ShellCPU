----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 05:01:30 PM
-- Design Name: 
-- Module Name: ALU_CTRL - Behavioral
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

entity ALU_CTRL is
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
end ALU_CTRL;

architecture Behavioral of ALU_CTRL is

begin

    op_add <= '1' when (alu_op = b"0000") else '0';
    op_sub <= '1' when (alu_op = b"0001") else '0';
    op_and <= '1' when (alu_op = b"0010") else '0';
    op_or <= '1' when (alu_op = b"0011") else '0';
    op_xor <= '1' when (alu_op = b"0100") else '0';
    op_nand <= '1' when (alu_op = b"0101") else '0';
    op_asr <= '1' when (alu_op = b"0110") else '0';
    op_asl <= '1' when (alu_op = b"0111") else '0';
    op_cmp <= '1' when (alu_op = b"1010") else '0';

end Behavioral;
