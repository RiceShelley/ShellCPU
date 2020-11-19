----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2020 02:59:40 PM
-- Design Name: 
-- Module Name: MCU_Shell_Arch - Behavioral
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

entity MCU_Shell_Arch is
    Port (
        clk : in std_logic;
        rst : in std_logic;
        inr : in std_logic_vector(2 downto 0);
        outvalue : out std_logic_vector(15 downto 0)
    );
end MCU_Shell_Arch;

architecture Behavioral of MCU_Shell_Arch is

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
    
    component MCU_data_mem is
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
    end component MCU_data_mem;
    
    component MCU_ins_mem is 
        port (
            clk : in std_logic;
            ins_addr : in std_logic_vector(15 downto 0);
            cur_ins : out std_logic_vector(15 downto 0)
        );
    end component MCU_ins_mem;

    signal data_mem : std_logic_vector(15 downto 0);
    signal from_stack : std_logic_vector(15 downto 0);
    signal instruction : std_logic_vector (15 downto 0) := x"0000";
    
    signal data_mem_wr : std_logic;
    signal ins_addr : std_logic_vector(15 downto 0);
    signal regA : std_logic_vector(15 downto 0);
    signal regB : std_logic_vector(15 downto 0);
    signal stack_ptr : std_logic_vector(15 downto 0);
    signal stack_wr : std_logic;
    
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
    
    sim_data_mem_inst : MCU_data_mem port map (
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
    
    sim_prog_mem : MCU_ins_mem port map (
        clk => clk,
        ins_addr => ins_addr,
        cur_ins => instruction
    );

end Behavioral;