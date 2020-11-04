----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2020 08:20:05 PM
-- Design Name: 
-- Module Name: sim_prog_mem - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sim_prog_mem is
    Port (
        clk : in std_logic;
        ins_addr : in std_logic_vector(15 downto 0);
        cur_ins : out std_logic_vector(15 downto 0)
    );
end sim_prog_mem;

architecture Behavioral of sim_prog_mem is
    constant mem_depth : natural := 1024;
    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(15 downto 0);
    
    signal mem : t_mem;
begin

    cur_ins <= mem(to_integer(unsigned(ins_addr(9 downto 0))));
    
    tb_proc : process
    begin
        mem(0) <= "1100100001001001";
        mem(1) <= "1101000001001111";
        mem(2) <= "1110010001000000";
        mem(3) <= "1101000010001010";
        mem(4) <= "1110000010000000";
        mem(5) <= "1110001011000000";
        mem(6) <= "0000000000000000";
        wait for 2us;
    end process tb_proc;
    
end Behavioral;
