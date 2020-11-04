----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2020 01:29:10 PM
-- Design Name: 
-- Module Name: uart_controller - Behavioral
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

entity uart_controller is
    Port (
        clk : in std_logic;
        tx_buff : out std_logic_vector(7 downto 0) := x"CA";
        rx_buff : in std_logic_vector(7 downto 0);
        rx_ready : in std_logic;
        tx_ready : in std_logic;
        tx_start_trans : out std_logic := '0';
        tx_buff_data_in : in std_logic_vector(15 downto 0);
        tx_buff_wr : in std_logic
        
    );
end uart_controller;

architecture Behavioral of uart_controller is
--    constant mem_depth : natural := 8;
--    type t_mem is array (0 to mem_depth - 1) of std_logic_vector(7 downto 0);
--    signal tx_mem_buff : t_mem;
begin

    tx_buff_proc : process(clk)
    begin
    
        if rising_edge(clk) then
            if (tx_buff_wr = '1') then
                if (tx_buff_data_in(15 downto 8) = x"00") then
                    tx_buff <= tx_buff_data_in(7 downto 0);
                elsif (tx_buff_data_in(15 downto 8) = x"FF") then
                    if (tx_ready = '1') then
                        tx_start_trans <= '1';
                    end if;
                end if;
            else
                if (tx_ready = '0') then 
                    tx_start_trans <= '0';
                end if;
            end if;
            
        end if;
        
    end process tx_buff_proc;

end Behavioral;
