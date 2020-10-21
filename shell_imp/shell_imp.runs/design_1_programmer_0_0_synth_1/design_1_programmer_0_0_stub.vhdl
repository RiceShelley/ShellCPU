-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 20 19:56:00 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_programmer_0_0_stub.vhdl
-- Design      : design_1_programmer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rx_ready : in STD_LOGIC;
    tx_ready : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_buff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_start_trans : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_mem_wr : out STD_LOGIC;
    data_mem_wr : out STD_LOGIC;
    prog_mode : out STD_LOGIC;
    cpu_clk_en : out STD_LOGIC;
    cpu_rst : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rx_ready,tx_ready,rx_data[7:0],tx_buff[7:0],tx_start_trans,addr[15:0],dout[15:0],din[7:0],prog_mem_wr,data_mem_wr,prog_mode,cpu_clk_en,cpu_rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "programmer,Vivado 2018.3";
begin
end;
