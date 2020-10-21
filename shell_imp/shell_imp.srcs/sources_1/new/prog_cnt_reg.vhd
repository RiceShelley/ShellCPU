----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 12:41:30 PM
-- Design Name: 
-- Module Name: prog_cnt_reg - Behavioral
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

entity prog_cnt_reg is
    Port (
        clk : in std_logic;
        async_rst : in std_logic;
        ins_addr : out std_logic_vector(15 downto 0);
        ld_val : in std_logic_vector(15 downto 0);
        ld_en : in std_logic;
        en : in std_logic
    );
end prog_cnt_reg;

architecture Behavioral of prog_cnt_reg is
    
    signal pc : std_logic_vector(15 downto 0) := x"0000";
    
begin

    ins_addr <= pc;

    pc_proc : process(clk, async_rst)
    begin
        if (async_rst = '0') then
            if rising_edge(clk) then
                if (ld_en = '1') then
                    pc <= ld_val;
                elsif (en = '1') then
                    pc <= std_logic_vector(unsigned(pc) + 1);
                end if;
            end if;
        else
            pc <= x"0000";
        end if;
    end process pc_proc;

end Behavioral;
