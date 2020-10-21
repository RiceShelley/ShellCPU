----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 08:05:20 PM
-- Design Name: 
-- Module Name: cmp_status_reg - Behavioral
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

entity cmp_status_reg is
    Port (
        clk : in std_logic;
        cmp_status_in : in std_logic_vector(15 downto 0);
        wr_en : in std_logic;
        rst : in std_logic;
        eq_sig : out std_logic;
        ne_sig : out std_logic;
        gt_sig : out std_logic;
        lt_sig : out std_logic
    );
end cmp_status_reg;

architecture Behavioral of cmp_status_reg is

    signal cmp_status : std_logic_vector(15 downto 0) := x"0000";

begin

    eq_sig <= cmp_status(0);
    ne_sig <= cmp_status(1);
    gt_sig <= cmp_status(2);
    lt_sig <= cmp_status(3);

    cmp_stat_proc : process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '0') then
                if (wr_en = '1') then
                    cmp_status <= cmp_status_in;
                end if;
            else
                cmp_status <= x"0000";
            end if;
        end if;
    end process cmp_stat_proc;

end Behavioral;
