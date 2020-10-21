----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2020 10:31:15 PM
-- Design Name: 
-- Module Name: reg_file_tb - Behavioral
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

entity reg_file_tb is
--  Port ( );
end reg_file_tb;

architecture Behavioral of reg_file_tb is

    component reg_file is
        port(
            clk : in std_logic;
            read_addrA : in std_logic_vector(2 downto 0);
            read_addrB : in std_logic_vector(2 downto 0);
            write_addrC : in std_logic_vector(2 downto 0);
            inr : in std_logic_vector(2 downto 0);
            regA : out std_logic_vector(15 downto 0);
            regB : out std_logic_vector(15 downto 0);
            regC : in std_logic_vector(15 downto 0);
            outvalue : out std_logic_vector(15 downto 0);
            wr_en : in std_logic;
            rst : in std_logic
        );
    end component reg_file;

    signal clk : std_logic := '0';
    
    signal read_addrA : std_logic_vector(2 downto 0) := b"000";
    signal read_addrB : std_logic_vector(2 downto 0) := b"000";
    signal write_addrC : std_logic_vector(2 downto 0) := b"000";
    signal inr : std_logic_vector(2 downto 0) := b"000";
    
    signal regA : std_logic_vector(15 downto 0);
    signal regB : std_logic_vector(15 downto 0);
    signal outvalue : std_logic_vector(15 downto 0);
    signal regC : std_logic_vector(15 downto 0) := x"0000";
    signal wr_en : std_logic := '0';
    signal rst : std_logic := '0';

begin

    reg_file_DUT : reg_file port map (
        clk => clk,
        read_addrA => read_addrA,
        read_addrB => read_addrB,
        write_addrC => write_addrC,
        inr => inr,
        regA => regA,
        regB => regB,
        regC => regC,
        outvalue => outvalue,
        wr_en => wr_en,
        rst => rst
    );

    tb_proc : process
    begin
    
        -- test case 1
        wr_en <= '1';
        write_addrC <= b"001";
        regC <= x"aaaa";
        read_addrA <= b"001";
        wait for 2us;
        clk <= '1';
        wait for 2us;
        if (regA /= x"aaaa") then
            report "reg file failed test case 1" severity error;
        end if;
        clk <= '0';
        wait for 2us;
        
        -- test case 2
        wr_en <= '1';
        write_addrC <= b"000";
        regC <= x"bbbb";
        read_addrA <= b"000";
        read_addrB <= b"001";
        wait for 2us;
        clk <= '1';
        wait for 2us;
        if (regA /= x"0000" or regB /= x"aaaa") then
            report "reg file failed test case 2" severity error;
        end if;
        clk <= '0';
        wait for 2us;
        
        wr_en <= '1';
        write_addrC <= b"010";
        regC <= x"cafe";
        read_addrA <= b"010";
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        wait for 2us;
        
        inr <= "010";
        wait for 2us;
        rst <= '1';
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        wait for 2us;
        rst <='0';
        wait for 20us;
    
    end process tb_proc;

end Behavioral;
