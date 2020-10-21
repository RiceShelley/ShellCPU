----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2020 11:46:34 PM
-- Design Name: 
-- Module Name: cmp_stat_reg_tb - Behavioral
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

entity cmp_stat_reg_tb is
--  Port ( );
end cmp_stat_reg_tb;

architecture Behavioral of cmp_stat_reg_tb is
    
    component cmp_status_reg is
        port (
            clk : in std_logic;
            cmp_status_in : in std_logic_vector(15 downto 0);
            wr_en : in std_logic;
            rst : in std_logic;
            eq_sig : out std_logic;
            ne_sig : out std_logic;
            gt_sig : out std_logic;
            lt_sig : out std_logic
        );
    end component cmp_status_reg;

    signal clk : std_logic := '0';
    signal cmp_status_in : std_logic_vector(15 downto 0) := x"0000";
    signal wr_en : std_logic := '0';
    signal rst : std_logic := '0';
    
    signal eq_sig : std_logic;
    signal ne_sig : std_logic;
    signal gt_sig : std_logic;
    signal lt_sig : std_logic;
    

begin

    cmp_status_reg_tb : cmp_status_reg port map (
        clk => clk,
        cmp_status_in => cmp_status_in,
        wr_en => wr_en,
        rst => rst,
        eq_sig => eq_sig,
        ne_sig => ne_sig,
        gt_sig => gt_sig,
        lt_sig => lt_sig
    );
    
    tb_proc : process
    begin 
    
        wait for 2us;
        cmp_status_in <= x"0000";
        wr_en <= '1';
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        cmp_status_in <= x"FFFF";
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        wait for 2us;
        rst <= '1';
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        rst <= '0';
        wait for 2us;
        wr_en <= '0';
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        wait for 20us;
        
    end process tb_proc;

end Behavioral;
