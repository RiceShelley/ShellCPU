-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 20 23:44:50 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_cmp_status_reg_0_0/design_1_cmp_status_reg_0_0_stub.vhdl
-- Design      : design_1_cmp_status_reg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_cmp_status_reg_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    cmp_status_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    eq_sig : out STD_LOGIC;
    ne_sig : out STD_LOGIC;
    gt_sig : out STD_LOGIC;
    lt_sig : out STD_LOGIC
  );

end design_1_cmp_status_reg_0_0;

architecture stub of design_1_cmp_status_reg_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,cmp_status_in[15:0],wr_en,rst,eq_sig,ne_sig,gt_sig,lt_sig";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cmp_status_reg,Vivado 2018.3";
begin
end;
