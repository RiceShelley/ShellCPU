----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2020 12:06:43 PM
-- Design Name: 
-- Module Name: reg_file - Behavioral
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

entity reg_file is
    Port (
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
end reg_file;

architecture Behavioral of reg_file is

    type t_mem is array (0 to 7) of std_logic_vector(15 downto 0);
    signal mem : t_mem := (
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000",
        x"0000"
    );
    
begin

    outvalue <= mem(to_integer(unsigned(inr)));

    regA <= mem(to_integer(unsigned(read_addrA)));
    regB <= mem(to_integer(unsigned(read_addrB)));

    mem_proc : process (clk) is
    begin
        
        if rising_edge(clk) then
            if (rst = '0') then
                if (wr_en = '1' and write_addrC /= b"000") then
                    mem(to_integer(unsigned(write_addrC))) <= regC;
                else
                    mem(0) <= x"0000";
                end if;
            else 
                mem(0) <= x"0000";
                mem(1) <= x"0000";
                mem(2) <= x"0000";
                mem(3) <= x"0000";
                mem(4) <= x"0000";
                mem(5) <= x"0000";
                mem(6) <= x"0000";
                mem(7) <= x"0000";
            end if;
        end if;
    end process mem_proc;

end Behavioral;
