----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2020 08:23:17 AM
-- Design Name: 
-- Module Name: stack_ptr_reg - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stack_ptr_reg is
    Port (
        clk : in std_logic;
        ld_val : in std_logic_vector(15 downto 0);
        ld_en : in std_logic;
        dec : in std_logic;
        inc : in std_logic;
        stack_ptr : out std_logic_vector(15 downto 0);
        rst : in std_logic
    );
end stack_ptr_reg;

architecture Behavioral of stack_ptr_reg is
    signal sp_reg : std_logic_vector(15 downto 0) := x"0000";
begin
    
    stack_ptr <= sp_reg;

    stack_ptr_proc : process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '0') then
                if (ld_en = '1') then
                    sp_reg <= ld_val;
                elsif (dec = '1') then
                    sp_reg <= std_logic_vector(unsigned(sp_reg) - 1);
                elsif (inc = '1') then
                    sp_reg <= std_logic_vector(unsigned(sp_reg) + 1);
                end if;
            else
                sp_reg <= x"0000";
            end if;
        end if;
    end process stack_ptr_proc;

end Behavioral;
