----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2020 07:42:32 PM
-- Design Name: 
-- Module Name: sim_data_mem - Behavioral
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

entity MCU_data_mem is
    Port (
        clk : in std_logic;
        rd_addr : in std_logic_vector(15 downto 0);
        wr_addr : in std_logic_vector(15 downto 0);
        data_in : in std_logic_vector(15 downto 0);
        stack_addr : in std_logic_vector(15 downto 0);
        stack_wr_en : in std_logic;
        wr_en : in std_logic;
        data_out : out std_logic_vector(15 downto 0);
        stack_out : out std_logic_vector(15 downto 0)
    );
end MCU_data_mem;

architecture Behavioral of MCU_data_mem is
    constant mem_depth : natural := 1024;
    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);
    
    impure function init_ram_bin return t_mem is
        file text_file : text open read_mode is "/home/rootie/Documents/ShellCPU/shell_asm/tmp/data_mem.bin";
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

    data_out <= mem(to_integer(unsigned(rd_addr(9 downto 0))));
    stack_out <= mem(to_integer(unsigned(stack_addr(9 downto 0))) + 1);
    
    mem_proc : process(clk)
    begin
        if rising_edge(clk) then
            if (wr_en = '1') then
                mem(to_integer(unsigned(wr_addr(9 downto 0)))) <= data_in;
            elsif (stack_wr_en = '1') then
                mem(to_integer(unsigned(stack_addr(9 downto 0)))) <= data_in;
            end if;
        end if;
    end process mem_proc;
    
end Behavioral;