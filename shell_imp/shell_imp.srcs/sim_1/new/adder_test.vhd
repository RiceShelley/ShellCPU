----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/01/2020 01:20:01 PM
-- Design Name: 
-- Module Name: adder_test - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_test is
--  Port ( );
end adder_test;
architecture Behavioral of adder_test is

    component adder is
        port (
            a : in std_logic_vector(15 downto 0);
            b : in std_logic_vector(15 downto 0);
            c : out std_logic_vector(15 downto 0)
        );
    end component adder;

    signal num_a : std_logic_vector(15 downto 0);
    signal num_b : std_logic_vector(15 downto 0);
    signal ans : std_logic_vector(15 downto 0);

begin

    adder_DUT : adder port map (
        a => num_a,
        b => num_b,
        c => ans
    );
    
    -- test case 1
    process
    begin
    num_a <= x"0aaa";
    num_b <= x"0aaa";
    wait for 2us;
    if (ans /= x"1554") then
        report "addr failed test case 1" severity error;
    end if;
    
    -- test case 2
    num_a <= x"0baa";
    num_b <= x"1baa";
    wait for 2us;
    if (ans /= x"2754") then
        report "addr failed test case 2" severity error;
    end if;
    
    end process;

end Behavioral;
