----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2020 01:45:40 PM
-- Design Name: 
-- Module Name: sync_byte - Behavioral
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

entity sync_byte is
    Port (
        clk : in std_logic;
        byte : in std_logic_vector(7 downto 0);
        stable_byte : out std_logic_vector(7 downto 0)
    );
end sync_byte;

architecture Behavioral of sync_byte is
    signal double_flop : std_logic_vector(7 downto 0); 
begin

    sync : process (clk)
    begin
        if rising_edge(clk) then
            double_flop <= byte;
            stable_byte <= double_flop;
        end if;
    end process sync;
    
end Behavioral;
