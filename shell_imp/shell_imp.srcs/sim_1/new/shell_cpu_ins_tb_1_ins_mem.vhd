----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2020 04:13:56 PM
-- Design Name: 
-- Module Name: shell_cpu_ins_tb_1_ins_mem - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shell_cpu_ins_tb_1_ins_mem is
    Port (
        clk : in std_logic;
        ins_addr : in std_logic_vector(15 downto 0);
        cur_ins : out std_logic_vector(15 downto 0)
    );
end shell_cpu_ins_tb_1_ins_mem;

architecture Behavioral of shell_cpu_ins_tb_1_ins_mem is
    constant mem_depth : natural := 1024;
    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);
    
    signal mem : t_mem;
    
    signal jalr_test : std_logic := '1';
    
begin

    cur_ins <= mem(to_integer(unsigned(ins_addr(9 downto 0))));
    
    tb_proc : process
    begin
        if (jalr_test = '1') then
            mem(0) <= "1101000001000001";
            mem(1) <= "0100000011000000";
            mem(2) <= "0000000000000000";
        else
            mem(0) <= "1100100001001001";
            mem(1) <= "1100100010010010";
            mem(2) <= "1101000001000101";
            mem(3) <= "1101000010000011";
            mem(4) <= "1101010000000000";
            mem(5) <= "1101010001010000";
            mem(6) <= "1101010010001000";
            mem(7) <= "1100100100100100";
            mem(8) <= "1101000100000011";
            mem(9) <= "0010100000000010";
            mem(10) <= "1100100100100100";
            mem(11) <= "0011100000000010";
            mem(12) <= "1100100100100100";
            mem(13) <= "1100100001001001";
            mem(14) <= "1100100010010010";
            mem(15) <= "1101010001010000";
            mem(16) <= "0010000000000010";
            mem(17) <= "1100100100100100";
            mem(18) <= "1100100001001001";
            mem(19) <= "1100100010010010";
            mem(20) <= "1101000001000001";
            mem(21) <= "1101010001010000";
            mem(22) <= "0011000000000010";
            mem(23) <= "1100100100100100";
            mem(24) <= "0000000000000000";
        end if;

        wait for 2us;
    end process tb_proc;
    
end Behavioral;
