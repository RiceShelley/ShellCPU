----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2020 12:27:31 AM
-- Design Name: 
-- Module Name: stack_ptr_reg_tb - Behavioral
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

entity stack_ptr_reg_tb is
--  Port ( );
end stack_ptr_reg_tb;

architecture Behavioral of stack_ptr_reg_tb is

    component stack_ptr_reg is
        port (
            clk : in std_logic;
            ld_val : in std_logic_vector(15 downto 0);
            ld_en : in std_logic;
            dec : in std_logic;
            inc : in std_logic;
            stack_ptr : out std_logic_vector(15 downto 0);
            rst : in std_logic
        );
    end component stack_ptr_reg;
    
    signal clk : std_logic := '0';
    signal ld_val : std_logic_vector(15 downto 0) := x"0000";
    signal ld_en : std_logic := '0';
    signal dec : std_logic := '0';
    signal inc : std_logic := '0';
    signal stack_ptr : std_logic_vector(15 downto 0);
    signal rst : std_logic := '0';
    
begin

    stack_ptr_reg_tb : stack_ptr_reg port map (
        clk => clk,
        ld_val => ld_val,
        ld_en => ld_en,
        dec => dec,
        inc => inc,
        stack_ptr => stack_ptr,
        rst => rst
    );
    
    tb_proc : process
    begin
    
        wait for 2us;
        ld_val <= x"1000";
        ld_en <= '1';
        wait for 2us;
        clk <= '1';
        wait for 1us;
        ld_en <= '0';
        dec <= '1';
        wait for 1us;
        clk <= '0';
        wait for 1us;
        clk <= '1';
        wait for 1us;
        dec <= '0';
        inc <= '1';
        wait for 1us;
        clk <= '0';
        wait for 1us;
        clk <= '1';
        wait for 1us;
        inc <= '0';
        clk <= '0';
        wait for 1 us;
        rst <= '1';
        wait for 1us;
        clk <= '1';
        wait for 1us;
        clk <= '0';
        
        wait for 20 us;
    
    end process tb_proc;

end Behavioral;
