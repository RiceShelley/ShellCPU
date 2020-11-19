----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 03:20:25 PM
-- Design Name: 
-- Module Name: MCU_Shell_Arch_tb - Behavioral
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

entity MCU_Shell_Arch_tb is
--  Port ( );
end MCU_Shell_Arch_tb;

architecture Behavioral of MCU_Shell_Arch_tb is

    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal inr : std_logic_vector(2 downto 0) := "001";
    signal outvalue : std_logic_vector(15 downto 0);

    component MCU_Shell_Arch is
        port (
            clk : in std_logic;
            rst : in std_logic;
            inr : in std_logic_vector(2 downto 0);
            outvalue : out std_logic_vector(15 downto 0)
        );
    end component MCU_Shell_Arch;

    signal do_rst : std_logic := '1';

begin

    MCU_Shell_Arch_Inst : MCU_Shell_Arch port map (
        clk => clk,
        rst => rst,
        inr => inr,
        outvalue => outvalue
    );
    
    tb_proc : process
    begin
    
        if (do_rst = '1') then
            rst <= '1';
            clk <= '0';
            wait for 2us;
            clk <= '1';
            wait for 2us;
            clk <= '0';
            rst <= '0';
            do_rst <= '0';
            wait for 2us;
        end if;
        
        clk <= '1';
        wait for 2us;
        clk <= '0';
        wait for 2us;
    
    end process tb_proc;

end Behavioral;
