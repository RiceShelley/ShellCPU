----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2020 12:48:49 AM
-- Design Name: 
-- Module Name: pc_reg_tb - Behavioral
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

entity pc_reg_tb is
--  Port ( );
end pc_reg_tb;

architecture Behavioral of pc_reg_tb is
    
    component prog_cnt_reg is
        port (
            clk : in std_logic;
            async_rst : in std_logic;
            ins_addr : out std_logic_vector(15 downto 0);
            ld_val : in std_logic_vector(15 downto 0);
            ld_en : in std_logic;
            en : in std_logic
        );
    end component prog_cnt_reg;
    
    signal clk : std_logic := '0';
    signal async_rst : std_logic := '0';
    signal ins_addr : std_logic_vector(15 downto 0);
    signal ld_val : std_logic_vector(15 downto 0) := x"0000";
    signal ld_en : std_logic := '0';
    signal en : std_logic := '0';
    
begin

    prog_cnt_reg_tb : prog_cnt_reg port map (
        clk => clk,
        async_rst => async_rst,
        ins_addr => ins_addr,
        ld_val => ld_val,
        ld_en => ld_en,
        en => en
    );

    tb_proc : process
    begin
        wait for 2us;
        ld_en <= '1';
        ld_val <= x"1000";
        wait for 2us;
        clk <= '1';
        wait for 1us;
        clk <= '0';
        wait for 1us;
        ld_en <= '0';
        ld_val <= x"0000";
        en <= '1';
        wait for 1us;
        clk <= '1';
        wait for 1us;
        clk <= '0';
        wait for 1us;
        clk <= '1';
        wait for 1us;
        clk <= '0';
        wait for 2us;
        async_rst <= '1';
        wait for 2us;
        async_rst <= '0';
        wait for 20us;
        
    end process tb_proc;

end Behavioral;
