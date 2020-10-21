----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 12:21:50 PM
-- Design Name: 
-- Module Name: CTRL_UNIT - Behavioral
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

entity CTRL_UNIT is
    Port (
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
end CTRL_UNIT;

architecture Behavioral of CTRL_UNIT is
begin

    ctrl_unit_proc : process(instruction, cmp_eq, cmp_ne, cmp_gt, cmp_lt)
    begin
        case instruction(15 downto 13) is
            when "000" =>
                -- halt
                dest_addr <= "---";
                regA_addr <= "---";
                regB_addr <= "---";
                alu_op <= "----";
                reg_file_input_sel <= "--";
                reg_file_wr <= '0';
                pc_ld_en <= '0';
                pc_en <= '0';
                data_mem_wr <= '0';
                cmp_status_wr <= '0';
                ri_imm <= "------";
                imm <= "-----------";
                alu_input_sel <= '-';
                pc_load_sel <= '-';
                stack_ld <= '0';
                dec_stack <= '0';
                inc_stack <= '0';
                stack_wr <= '0';
                ri_imm_format_sel <= '-';
            when "001" =>
                -- Branching ins
                case instruction(12 downto 11) is
                    when "00" =>
                        -- beq
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= cmp_eq;
                        pc_en <= not cmp_eq;
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= instruction(10 downto 0);
                        alu_input_sel <= '-';
                        pc_load_sel <= '1';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "01" => 
                        -- bne
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= cmp_ne;
                        pc_en <= not cmp_ne;
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= instruction(10 downto 0);
                        alu_input_sel <= '-';
                        pc_load_sel <= '1';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "10" =>
                        -- bgt
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= cmp_gt;
                        pc_en <= not cmp_gt;
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= instruction(10 downto 0);
                        alu_input_sel <= '-';
                        pc_load_sel <= '1';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "11" =>
                        -- blt
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= cmp_lt;
                        pc_en <= not cmp_lt;
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= instruction(10 downto 0);
                        alu_input_sel <= '-';
                        pc_load_sel <= '1';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when others =>
                        -- unknown instruction do nothing
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                end case;
            when "010" =>
                -- Jump and Link
                dest_addr <= instruction(8 downto 6);
                regA_addr <= instruction(5 downto 3);
                regB_addr <= "---";
                alu_op <= "----";
                reg_file_input_sel <= "10";
                reg_file_wr <= '1';
                pc_ld_en <= '1';
                pc_en <= '0';
                data_mem_wr <= '0';
                cmp_status_wr <= '0';
                ri_imm <= "------";
                imm <= "-----------";
                alu_input_sel <= '-';
                pc_load_sel <= '0';
                stack_ld <= '0';
                dec_stack <= '0';
                inc_stack <= '0';
                stack_wr <= '0';
                ri_imm_format_sel <= '-';
            when "011" =>
                -- Load upper immediate
                dest_addr <= instruction(8 downto 6);
                regA_addr <= "000";
                regB_addr <= "---";
                alu_op <= "0000";
                reg_file_input_sel <= "00";
                reg_file_wr <= '1';
                pc_ld_en <= '0';
                pc_en <= '1';
                data_mem_wr <= '0';
                cmp_status_wr <= '0';
                ri_imm <= instruction(5 downto 0);
                imm <= "-----------";
                alu_input_sel <= '1';
                pc_load_sel <= '-';
                stack_ld <= '0';
                dec_stack <= '0';
                inc_stack <= '0';
                stack_wr <= '0';
                ri_imm_format_sel <= '0';
            when "100" =>
                -- store word
                dest_addr <= "---";
                regA_addr <= instruction(8 downto 6);
                regB_addr <= instruction(5 downto 3);
                alu_op <= "----";
                reg_file_input_sel <= "--";
                reg_file_wr <= '0';
                pc_ld_en <= '0';
                pc_en <= '1';
                data_mem_wr <= '1';
                cmp_status_wr <= '0';
                ri_imm <= "------";
                imm <= "-----------";
                alu_input_sel <= '-';
                pc_load_sel <= '-';
                stack_ld <= '0';
                dec_stack <= '0';
                inc_stack <= '0';
                stack_wr <= '0';
                ri_imm_format_sel <= '-';
            when "101" =>
                -- load word
                dest_addr <= instruction(8 downto 6);
                regA_addr <= instruction(5 downto 3);
                regB_addr <= "---";
                alu_op <= "----";
                reg_file_input_sel <= "01";
                reg_file_wr <= '1';
                pc_ld_en <= '0';
                pc_en <= '1';
                data_mem_wr <= '0';
                cmp_status_wr <= '0';
                ri_imm <= "------";
                imm <= "-----------";
                alu_input_sel <= '-';
                pc_load_sel <= '-';
                stack_ld <= '0';
                dec_stack <= '0';
                inc_stack <= '0';
                stack_wr <= '0';
                ri_imm_format_sel <= '-';
            when "110" =>
                -- ALU instructions
                case instruction(12 downto 9) is
                    when "0000" =>
                        -- add
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= instruction(2 downto 0);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0001" =>
                        -- sub
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= instruction(2 downto 0);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0010" =>
                        -- and
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= instruction(2 downto 0);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0011" =>
                        -- or
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= instruction(2 downto 0);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0100" =>
                        -- xor
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= instruction(2 downto 0);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0101" =>
                        -- nand
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= instruction(2 downto 0);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0110" =>
                        -- asr
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= "---";
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0111" => 
                        -- asl
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(5 downto 3);
                        regB_addr <= "---";
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "1000" =>
                        -- addi
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(8 downto 6);
                        regB_addr <= "---";
                        alu_op <= "0000";
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= instruction(5 downto 0);
                        imm <= "-----------";
                        alu_input_sel <= '1';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '1';
                    when "1001" =>
                        -- subi
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= instruction(8 downto 6);
                        regB_addr <= "---";
                        alu_op <= "0001";
                        reg_file_input_sel <= "00";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= instruction(5 downto 0);
                        imm <= "-----------";
                        alu_input_sel <= '1';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '1';
                    when "1010" => 
                        -- cmp
                        dest_addr <= "---";
                        regA_addr <= instruction(8 downto 6);
                        regB_addr <= instruction(5 downto 3);
                        alu_op <= instruction(12 downto 9);
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '1';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '0';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when others =>
                        -- unknown instruction do nothing
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                end case;
            when "111" =>
                -- Stack instructions
                case instruction(12 downto 9) is
                    when "0000" =>
                        -- push
                        dest_addr <= "---";
                        regA_addr <= instruction(8 downto 6);
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '1';
                        inc_stack <= '0';
                        stack_wr <= '1';
                        ri_imm_format_sel <= '-';
                    when "0001" =>
                        -- pop
                        dest_addr <= instruction(8 downto 6);
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "11";
                        reg_file_wr <= '1';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '1';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when "0010" =>
                        -- lsp
                        dest_addr <= "---";
                        regA_addr <= instruction(8 downto 6);
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '1';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                    when others =>
                        -- unknown instruction do nothing
                        dest_addr <= "---";
                        regA_addr <= "---";
                        regB_addr <= "---";
                        alu_op <= "----";
                        reg_file_input_sel <= "--";
                        reg_file_wr <= '0';
                        pc_ld_en <= '0';
                        pc_en <= '1';
                        data_mem_wr <= '0';
                        cmp_status_wr <= '0';
                        ri_imm <= "------";
                        imm <= "-----------";
                        alu_input_sel <= '-';
                        pc_load_sel <= '-';
                        stack_ld <= '0';
                        dec_stack <= '0';
                        inc_stack <= '0';
                        stack_wr <= '0';
                        ri_imm_format_sel <= '-';
                end case;
            when others =>
                -- unknown instruction do nothing
                dest_addr <= "---";
                regA_addr <= "---";
                regB_addr <= "---";
                alu_op <= "----";
                reg_file_input_sel <= "--";
                reg_file_wr <= '0';
                pc_ld_en <= '0';
                pc_en <= '1';
                data_mem_wr <= '0';
                cmp_status_wr <= '0';
                ri_imm <= "------";
                imm <= "-----------";
                alu_input_sel <= '-';
                pc_load_sel <= '-';
                stack_ld <= '0';
                dec_stack <= '0';
                inc_stack <= '0';
                stack_wr <= '0';
                ri_imm_format_sel <= '-';
        end case;
    
    end process ctrl_unit_proc;

end Behavioral;
