----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2020 09:07:08 AM
-- Design Name: 
-- Module Name: mux_2_to_1_tb - Behavioral
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

entity mux_2_to_1_tb is
--  Port ( );
end mux_2_to_1_tb;

architecture Behavioral of mux_2_to_1_tb is

    component mux_2_to_1 is
        port (
            a : in std_logic_vector(15 downto 0);
            b : in std_logic_vector(15 downto 0);
            sel : in std_logic;
            c : out std_logic_vector(15 downto 0)
        );
    end component mux_2_to_1;

    signal a : std_logic_vector(15 downto 0) := x"CAFE";
    signal b : std_logic_vector(15 downto 0) := x"BEEF";
    signal sel : std_logic := '0';
    signal c : std_logic_vector(15 downto 0);
    
begin

    dut : mux_2_to_1 port map (
        a => a,
        b => b,
        sel => sel,
        c => c
    );

    tb_proc : process
    begin
    
        wait for 2us;
        sel <= '1';
        wait for 2us;
        sel <= '0';
    
    end process tb_proc;

end Behavioral;
