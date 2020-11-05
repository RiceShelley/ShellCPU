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
        mem(1) <= "1100100010010010";
        mem(2) <= "0110000001000000";
        mem(3) <= "1101000001000100";
        mem(4) <= "0110000010000000";
        mem(5) <= "1101000010000011";
        mem(6) <= "1100100100100100";
        mem(7) <= "1101000100000010";
        mem(8) <= "1010000100100000";
        mem(9) <= "0100000101100000";
        mem(10) <= "0000000000000000";
        mem(11) <= "1100100011011011";
        mem(12) <= "1100000011011001";
        mem(13) <= "1100100001001001";
        mem(14) <= "1101010000010000";
        mem(15) <= "0010000000000101";
        mem(16) <= "1100000001001011";
        mem(17) <= "1101001010000001";
        mem(18) <= "1101010000000000";
        mem(19) <= "0010011111111011";
        mem(20) <= "0100000000101000";
        mem(21) <= "0000000000000000";
        wait for 200us;
    end process tb_proc;
    
end Behavioral;
