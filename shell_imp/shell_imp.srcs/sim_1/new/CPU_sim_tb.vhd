----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2020 08:31:56 PM
-- Design Name: 
-- Module Name: CPU_sim_tb - Behavioral
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

entity CPU_sim_tb is
--  Port ( );
end CPU_sim_tb;

architecture Behavioral of CPU_sim_tb is

    component design_1_wrapper is
        port (
            CLK100MHZ : in STD_LOGIC;
            outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
            UART_RXD_OUT : out STD_LOGIC;
            UART_TXD_IN : in STD_LOGIC;
            inr : in std_logic_vector(2 downto 0)
        );
    end component design_1_wrapper;

    signal clk : std_logic := '0';
    signal LED : std_logic_vector(15 downto 0);
    signal UART_RXD_OUT : std_logic;
    signal txd : std_logic := '1';
    signal inr : std_logic_vector(2 downto 0) := "000";
    
    signal byte : std_logic_vector(7 downto 0) := x"00";
    
begin

    dut : component design_1_wrapper port map (
        CLK100MHZ => clk,
        outvalue => LED,
        UART_RXD_OUT => UART_RXD_OUT,
        UART_TXD_IN => txd,
        inr => inr
    );
    
    clk_proc : process
    begin
        wait for 5ns;
        clk <= not clk;
    end process;
    
    load_program : process
    begin
        txd <= '1';
        wait for 100us;
        
        -- Write to program memory
        
        -- --------------------------- addi instruction
        byte <= x"FF";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- instruction
        
        byte <= "10000101";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        
        byte <= "11010000";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- ------------------------- lsp instruction
        byte <= x"FF";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"01";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- instruction
        
        byte <= "10000000";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        
        byte <= "11100100";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- ------------------------- addi instruction
        byte <= x"FF";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"02";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- instruction
        
        byte <= "11001010";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        
        byte <= "11010000";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        
        -- ------------------------- push instruction
        byte <= x"FF";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"03";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- instruction
        
        byte <= "11000000";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        
        byte <= "11100000";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- ------------------------- pop instruction
        byte <= x"FF";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"04";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- instruction
        
        byte <= "10000000";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        
        byte <= "11100010";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        --------------------------- hlt instruction
        byte <= x"FF";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"05";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        -- ----------------------- Write to data memory
        byte <= x"FE";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"00";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"FE";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        byte <= x"CA";
        txd <= '0';
        wait for 8.68 us;
        for i in 0 to 7 loop
            txd <= byte(i);
            wait for 8.68 us;
        end loop;
        txd <= '1';
        wait for 50 us;
        
        wait for 200 us;
        
        wait for 1000 us;
    end process;

end Behavioral;
