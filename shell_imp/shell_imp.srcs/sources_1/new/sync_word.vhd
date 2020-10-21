----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2020 05:32:31 PM
-- Design Name: 
-- Module Name: sync_word - Behavioral
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

entity sync_word is
    Port (
        clk : in std_logic;
        word : in std_logic_vector(15 downto 0);
        stable_word : out std_logic_vector(15 downto 0)
    );
end sync_word;

architecture Behavioral of sync_word is
    signal double_flop : std_logic_vector(15 downto 0); 
begin

    sync : process (clk)
    begin
        if rising_edge(clk) then
            double_flop <= word;
            stable_word <= double_flop;
        end if;
    end process sync;

end Behavioral;
