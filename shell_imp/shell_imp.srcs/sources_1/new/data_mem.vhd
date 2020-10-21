----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 12:52:46 PM
-- Design Name: 
-- Module Name: data_mem - Behavioral
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
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_mem is
    Port (
        clk : in std_logic;
        rd_addr : in std_logic_vector(15 downto 0);
        wr_addr : in std_logic_vector(15 downto 0);
        data_in : in std_logic_vector(15 downto 0);
        stack_addr : in std_logic_vector(15 downto 0);
        prog_addr : in std_logic_vector(15 downto 0);
        prog_data : in std_logic_vector(15 downto 0);
        stack_wr_en : in std_logic;
        wr_en : in std_logic;
        prog_wr : in std_logic;
        prog_mode : in std_logic;
        data_out : out std_logic_vector(15 downto 0);
        stack_out : out std_logic_vector(15 downto 0)
    );
end data_mem;

architecture Behavioral of data_mem is

    constant mem_depth : natural := 1024;

    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);

--    impure function init_ram_bin return t_mem is
--        file text_file : text open read_mode is "/home/rootie/Documents/comp-arc/shell_asm/tmp/data_mem.bin";
--        variable text_line : line;
--        variable ram_content : t_mem;
--        variable bv : bit_vector(ram_content(0)'range);
--        begin
--        for i in 0 to mem_depth - 1 loop
--            readline(text_file, text_line);
--            read(text_line, bv);
--            ram_content(i) := To_StdLogicVector(bv);
--        end loop;
        
--        return ram_content;
--    end function;
    
--    signal mem : t_mem := init_ram_bin;
    signal mem : t_mem;
begin
    
    data_out <= mem(to_integer(unsigned(rd_addr(9 downto 0))));
    stack_out <= mem(to_integer(unsigned(stack_addr(9 downto 0))) + 1);
    
    mem_proc : process(clk)
    begin
        if rising_edge(clk) then
            -- if not in programming mode allow cpu to write to data mem
            if (prog_mode = '0') then
                if (wr_en = '1') then
                    mem(to_integer(unsigned(wr_addr(9 downto 0)))) <= data_in;
                elsif (stack_wr_en = '1') then
                    mem(to_integer(unsigned(stack_addr(9 downto 0)))) <= data_in;
                end if;
            -- data mem is in programming mode. 
            else
                if (prog_wr = '1') then
                    mem(to_integer(unsigned(prog_addr(9 downto 0)))) <= prog_data;
                end if; 
            end if;
        end if;
    end process mem_proc;

end Behavioral;
