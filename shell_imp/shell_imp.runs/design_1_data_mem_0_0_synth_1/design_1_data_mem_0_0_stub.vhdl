-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Nov  2 19:06:33 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_data_mem_0_0_stub.vhdl
-- Design      : design_1_data_mem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    prog_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    prog_wr : in STD_LOGIC;
    prog_mode : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rd_addr[15:0],wr_addr[15:0],data_in[15:0],stack_addr[15:0],prog_addr[15:0],prog_data[15:0],stack_wr_en,wr_en,prog_wr,prog_mode,data_out[15:0],stack_out[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "data_mem,Vivado 2018.3";
begin
end;
