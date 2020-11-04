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

entity sim_data_mem is
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
end sim_data_mem;

architecture Behavioral of sim_data_mem is
    constant mem_depth : natural := 1024;
    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);
    signal mem : t_mem;
begin

    data_out <= mem(to_integer(unsigned(rd_addr(9 downto 0))));
    stack_out <= mem(to_integer(unsigned(stack_addr(9 downto 0))) + 1);
    
    mem_proc : process(clk)
    begin
        if rising_edge(clk) then
        
            mem(2) <= x"FF00";
            mem(3) <= "0000000000101010";
            if (wr_en = '1') then
                mem(to_integer(unsigned(wr_addr(9 downto 0)))) <= data_in;
            elsif (stack_wr_en = '1') then
                mem(to_integer(unsigned(stack_addr(9 downto 0)))) <= data_in;
            end if;
        end if;
    end process mem_proc;
    
end Behavioral;
