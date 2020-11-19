----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 03:08:13 PM
-- Design Name: 
-- Module Name: MCU_ins_mem - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;

entity MCU_ins_mem is
    Port (
        clk : in std_logic;
        ins_addr : in std_logic_vector(15 downto 0);
        cur_ins : out std_logic_vector(15 downto 0)
    );
end MCU_ins_mem;

architecture Behavioral of MCU_ins_mem is

    constant mem_depth : natural := 1024;
    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);
    
    impure function init_ram_bin return t_mem is
        file text_file : text open read_mode is "/home/rootie/Documents/ShellCPU/shell_asm/tmp/prog_text.bin";
        variable text_line : line;
        variable ram_content : t_mem;
        variable bv : bit_vector(ram_content(0)'range);
        begin
        for i in 0 to mem_depth - 1 loop
            readline(text_file, text_line);
            read(text_line, bv);
            ram_content(i) := To_StdLogicVector(bv);
        end loop;
        
        return ram_content;
    end function;
    
    signal mem : t_mem := init_ram_bin;

begin

    cur_ins <= mem(to_integer(unsigned(ins_addr(9 downto 0))));

end Behavioral;
