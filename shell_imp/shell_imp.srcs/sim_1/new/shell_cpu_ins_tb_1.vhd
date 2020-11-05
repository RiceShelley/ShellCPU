----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2020 04:10:35 PM
-- Design Name: 
-- Module Name: shell_cpu_ins_tb_1 - Behavioral
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

entity shell_cpu_ins_tb_1 is
--  Port ( );
end shell_cpu_ins_tb_1;

architecture Behavioral of shell_cpu_ins_tb_1 is

    component shell_cpu_top is
        PORT (
            rst : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            data_mem : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            data_mem_wr : OUT STD_LOGIC;
            from_stack : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            inr : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            ins_addr : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            instruction : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            outvalue : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            regA : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            regB : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            stack_ptr : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            stack_wr : OUT STD_LOGIC
        );
    end component shell_cpu_top;
    
    component sim_data_mem is
        port (
            clk : in std_logic;
            rd_addr : in std_logic_vector(15 downto 0);
            wr_addr : in std_logic_vector(15 downto 0);
            data_in : in std_logic_vector(15 downto 0);
            stack_addr : in std_logic_vector(15 downto 0);
            stack_wr_en : in std_logic;
            wr_en : in std_logic;
            data_out : out std_logic_vector(15 downto 0);
            stack_out : out std_logic_vector(15 downto 0)
        );
    end component sim_data_mem;
    
    component shell_cpu_ins_tb_1_ins_mem is 
        port (
            clk : in std_logic;
            ins_addr : in std_logic_vector(15 downto 0);
            cur_ins : out std_logic_vector(15 downto 0)
        );
    end component shell_cpu_ins_tb_1_ins_mem;

    signal rst : std_logic := '0';
    signal clk : std_logic := '0';
    signal data_mem : std_logic_vector(15 downto 0);
    signal from_stack : std_logic_vector(15 downto 0);
    signal inr : std_logic_vector (2 downto 0) := "000";
    signal instruction : std_logic_vector (15 downto 0) := x"0000";
    
    signal data_mem_wr : std_logic;
    signal ins_addr : std_logic_vector(15 downto 0);
    signal outvalue : std_logic_vector(15 downto 0);
    signal regA : std_logic_vector(15 downto 0);
    signal regB : std_logic_vector(15 downto 0);
    signal stack_ptr : std_logic_vector(15 downto 0);
    signal stack_wr : std_logic;
    
    signal do_rst : std_logic := '1';
    
begin

    shell_cpu_top_inst : shell_cpu_top port map (
        rst => rst,
        clk => clk,
        data_mem => data_mem,
        data_mem_wr => data_mem_wr,
        from_stack => from_stack,
        inr => inr,
        ins_addr => ins_addr,
        instruction => instruction,
        outvalue => outvalue,
        regA => regA,
        regB => regB,
        stack_ptr => stack_ptr,
        stack_wr => stack_wr
    );
    
    sim_data_mem_inst : sim_data_mem port map (
        clk => clk,
        rd_addr => regA,
        wr_addr => regB,
        data_in => regA,
        stack_addr => stack_ptr,
        stack_wr_en => stack_wr,
        wr_en => data_mem_wr,
        data_out => data_mem,
        stack_out => from_stack
    );
    
    sim_prog_mem : shell_cpu_ins_tb_1_ins_mem port map (
        clk => clk,
        ins_addr => ins_addr,
        cur_ins => instruction
    );
    
    tb_proc : process
    begin
    
        if (do_rst = '1') then
            rst <= '1';
            
            wait for 2us;
            clk <= '1';
            wait for 2us;
            clk <= '0';
            
            rst <= '0';
            do_rst <= '0';
        end if;
        
        wait for 10us;
        
        -- run 1 instruction 
        wait for 2us;
        clk <= '1';
        wait for 2us;
        clk <= '0';
        
    
    end process tb_proc;
    
end Behavioral;
