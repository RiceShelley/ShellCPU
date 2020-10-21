----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2020 08:36:50 PM
-- Design Name: 
-- Module Name: sync_extern - Behavioral
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

entity sync_extern is
    Port (
        clk : in std_logic;
        sig_in : in std_logic;
        sig_out : out std_logic
    );
end sync_extern;

architecture Behavioral of sync_extern is

    signal flops : std_logic_vector(1 downto 0) := "00";

begin

    sig_out <= flops(1);
    
    double_flop : process(clk)
    begin
        if rising_edge(clk) then
            flops <= flops(0) & sig_in;
        end if;
    end process double_flop;

end Behavioral;
