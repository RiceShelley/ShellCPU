----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2020 10:14:48 AM
-- Design Name: 
-- Module Name: reg_file_input_mux_tb - Behavioral
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

entity reg_file_input_mux_tb is
--  Port ( );
end reg_file_input_mux_tb;

architecture Behavioral of reg_file_input_mux_tb is

    component reg_file_input_mux is 
        port (
            output_reg : out std_logic_vector(15 downto 0);
            in_alu : in std_logic_vector(15 downto 0);
            data_mem : in std_logic_vector(15 downto 0);
            next_ins_addr : in std_logic_vector(15 downto 0);
            from_stack : in std_logic_vector(15 downto 0);
            sel : in std_logic_vector(1 downto 0)
        );
    end component reg_file_input_mux;

    signal output_reg : std_logic_vector(15 downto 0);
    signal in_alu : std_logic_vector(15 downto 0) := x"cafe";
    signal data_mem : std_logic_vector(15 downto 0) := x"beef";
    signal next_ins_addr : std_logic_vector(15 downto 0) := x"dead";
    signal from_stack : std_logic_vector(15 downto 0) := x"b007";
    signal sel : std_logic_vector(1 downto 0) := "00";

begin

    dut : reg_file_input_mux port map (
        output_reg => output_reg,
        in_alu => in_alu,
        data_mem => data_mem,
        next_ins_addr => next_ins_addr,
        from_stack => from_stack,
        sel => sel
    );
    
    tb_proc : process
    begin
        
        wait for 2us;
        sel <= "01";
        wait for 2us;
        sel <= "10";
        wait for 2us;
        sel <= "11";
        wait for 2us;
        sel <= "00";
        wait for 2us;
        
    end process tb_proc;

end Behavioral;
