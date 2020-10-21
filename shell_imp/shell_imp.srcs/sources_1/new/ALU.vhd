----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 12:14:57 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port (
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
end ALU;

architecture Behavioral of ALU is

    signal add_out : std_logic_vector(15 downto 0);
    signal sub_out : std_logic_vector(15 downto 0);
    signal and_out : std_logic_vector(15 downto 0);
    signal or_out : std_logic_vector(15 downto 0);
    signal xor_out : std_logic_vector(15 downto 0);
    signal nand_out : std_logic_vector(15 downto 0);
    signal asr_out : std_logic_vector(15 downto 0);
    signal asl_out : std_logic_vector(15 downto 0);
    signal cmp_out : std_logic_vector(15 downto 0);

begin

    add_out <= std_logic_vector(signed(inputA) + signed(inputB));
    sub_out <= std_logic_vector(signed(inputA) - signed(inputB));
    and_out <= inputA and inputB;
    or_out <= inputA or inputB;
    xor_out <= inputA xor inputB;
    nand_out <= inputA nand inputB;
    asr_out <= inputA(15) & inputA(15) & inputA(14 downto 1);
    asl_out <= inputA(14 downto 0) & '0';
    
    cmp_out(0) <= '1' when (inputA = inputB) else '0';
    cmp_out(1) <= '1' when (inputA /= inputB) else '0';
    cmp_out(2) <= '1' when (inputA > inputB) else '0';
    cmp_out(3) <= '1' when (inputA < inputB) else '0';
    cmp_out(15 downto 4) <= x"000";
    
    -- Mux alu outputs with priority encoder (op codes should be one hot)
    outputC <= add_out when (op_add = '1') else
               sub_out when (op_sub = '1') else
               and_out when (op_and = '1') else
               or_out when (op_or = '1') else
               xor_out when (op_xor = '1') else
               nand_out when (op_nand = '1') else
               asr_out when (op_asr = '1') else
               asl_out when (op_asl = '1') else
               cmp_out when (op_cmp = '1') else
               x"0000";

end Behavioral;
