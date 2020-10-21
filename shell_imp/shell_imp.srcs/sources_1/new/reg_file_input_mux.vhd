----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 05:14:34 PM
-- Design Name: 
-- Module Name: reg_file_input_mux - Behavioral
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

entity reg_file_input_mux is
    Port (
        output_reg : out std_logic_vector(15 downto 0);
        in_alu : in std_logic_vector(15 downto 0);
        data_mem : in std_logic_vector(15 downto 0);
        next_ins_addr : in std_logic_vector(15 downto 0);
        from_stack : in std_logic_vector(15 downto 0);
        sel : in std_logic_vector(1 downto 0)
    );
end reg_file_input_mux;

architecture Behavioral of reg_file_input_mux is

begin

    output_reg <= in_alu when (sel = b"00") else
                  data_mem when (sel = b"01") else
                  next_ins_addr when (sel = b"10") else
                  from_stack;

end Behavioral;
