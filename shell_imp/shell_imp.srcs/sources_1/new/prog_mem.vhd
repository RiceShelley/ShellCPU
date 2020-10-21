----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 12:37:49 PM
-- Design Name: 
-- Module Name: prog_mem - Behavioral
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

entity prog_mem is
    Port (
        clk : in std_logic;
        ins_addr : in std_logic_vector(15 downto 0);
        prog_data : in std_logic_vector(15 downto 0);
        prog_addr : in std_logic_vector(15 downto 0);
        prog_wr : in std_logic;
        cur_ins : out std_logic_vector(15 downto 0)
    );
end prog_mem;

architecture Behavioral of prog_mem is

    constant mem_depth : natural := 1024;

    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);

--    impure function init_ram_bin return t_mem is
--        file text_file : text open read_mode is "/home/rootie/Documents/comp-arc/shell_asm/tmp/prog_text.bin";
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

    cur_ins <= mem(to_integer(unsigned(ins_addr(9 downto 0))));

    prog : process(clk)
    begin
        if rising_edge(clk) then
            if (prog_wr = '1') then
                mem(to_integer(unsigned(prog_addr(9 downto 0)))) <= prog_data;
            end if;
        end if;
    end process prog;

end Behavioral;
