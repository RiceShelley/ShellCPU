----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2020 08:58:22 PM
-- Design Name: 
-- Module Name: cpu_ctrl_tb - Behavioral
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

entity cpu_ctrl_tb is
--  Port ( );
end cpu_ctrl_tb;

architecture Behavioral of cpu_ctrl_tb is

    component CTRL_UNIT is
        port (
            instruction : in std_logic_vector(15 downto 0);
            dest_addr : out std_logic_vector(2 downto 0);
            regA_addr : out std_logic_vector(2 downto 0);
            regB_addr : out std_logic_vector(2 downto 0);
            alu_op : out std_logic_vector(3 downto 0);
            reg_file_input_sel : out std_logic_vector(1 downto 0);
            reg_file_wr : out std_logic;
            pc_ld_en : out std_logic;
            pc_en : out std_logic;
            data_mem_wr : out std_logic;
            cmp_status_wr : out std_logic;
            ri_imm : out std_logic_vector(5 downto 0);
            imm : out std_logic_vector(10 downto 0);
            alu_input_sel : out std_logic;
            pc_load_sel : out std_logic;
            cmp_eq : in std_logic;
            cmp_ne : in std_logic;
            cmp_gt : in std_logic;
            cmp_lt : in std_logic;
            stack_ld : out std_logic;
            dec_stack : out std_logic;
            inc_stack : out std_logic;
            stack_wr : out std_logic;
            ri_imm_format_sel : out std_logic
        );
    end component CTRL_UNIT;

    signal instruction : std_logic_vector(15 downto 0);
    signal dest_addr : std_logic_vector(2 downto 0);
    signal regA_addr : std_logic_vector(2 downto 0);
    signal regB_addr : std_logic_vector(2 downto 0);
    signal alu_op : std_logic_vector(3 downto 0);
    signal reg_file_input_sel : std_logic_vector(1 downto 0);
    signal reg_file_wr : std_logic;
    signal pc_ld_en : std_logic;
    signal pc_en : std_logic;
    signal data_mem_wr : std_logic;
    signal cmp_status_wr : std_logic;
    signal ri_imm : std_logic_vector(5 downto 0);
    signal imm : std_logic_vector(10 downto 0);
    signal alu_input_sel : std_logic;
    signal pc_load_sel : std_logic;
    signal cmp_eq : std_logic := '0';
    signal cmp_ne : std_logic := '0';
    signal cmp_gt : std_logic := '0';
    signal cmp_lt : std_logic := '0';
    signal stack_ld : std_logic;
    signal dec_stack : std_logic;
    signal inc_stack : std_logic;
    signal stack_wr : std_logic;
    signal ri_imm_format_sel : std_logic;

begin

    dut : component CTRL_UNIT port map (
        instruction => instruction,
        dest_addr => dest_addr,
        regA_addr => regA_addr,
        regB_addr => regB_addr,
        alu_op => alu_op,
        reg_file_input_sel => reg_file_input_sel,
        reg_file_wr => reg_file_wr,
        pc_ld_en => pc_ld_en,
        pc_en => pc_en,
        data_mem_wr => data_mem_wr,
        cmp_status_wr => cmp_status_wr,
        ri_imm => ri_imm,
        imm => imm,
        alu_input_sel => alu_input_sel,
        pc_load_sel => pc_load_sel,
        cmp_eq => cmp_eq,
        cmp_ne => cmp_ne,
        cmp_gt => cmp_gt,
        cmp_lt => cmp_lt,
        stack_ld => stack_ld,
        dec_stack => dec_stack,
        inc_stack => inc_stack,
        stack_wr => stack_wr,
        ri_imm_format_sel => ri_imm_format_sel
    );
    
    tb_proc : process
    begin
        instruction <= "0000000000000000";
        wait for 2us;
        instruction <= "1100000001010011";
        wait for 2us;
        instruction <= "1100001001010011";
        wait for 2us;
        instruction <= "1100010010010011";
        wait for 2us;
        instruction <= "1100011001010011";
        wait for 2us;
        instruction <= "1100100001010011";
        wait for 2us;
        instruction <= "1100101001010011";
        wait for 2us;
        instruction <= "1010000001010000";
        wait for 2us;
        instruction <= "1000000001010000";
        wait for 2us;
        instruction <= "1100110001010000";
        wait for 2us;
        instruction <= "1100111001010000";
        wait for 2us;
        instruction <= "1101010001010000";
        wait for 2us;
        instruction <= "0100000001010000";
        wait for 2us;
        instruction <= "1110000001000000";
        wait for 2us;
        instruction <= "1110001001000000";
        wait for 2us;
        instruction <= "1110010001000000";
        wait for 2us;
        instruction <= "1101000001000101";
        wait for 2us;
        instruction <= "1101001001000101";
        wait for 2us;
        instruction <= "0110000001000101";
        wait for 2us;
        instruction <= "0010000000000101";
        wait for 2us;
        instruction <= "0010100000000101";
        wait for 2us;
        instruction <= "0011000000000101";
        wait for 2us;
        instruction <= "0011100000000101";
        wait for 20us;
    end process tb_proc;

end Behavioral;
