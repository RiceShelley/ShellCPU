-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct  6 20:48:03 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_sync_extern_0_0/design_1_sync_extern_0_0_sim_netlist.vhdl
-- Design      : design_1_sync_extern_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sync_extern_0_0_sync_extern is
  port (
    sig_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sync_extern_0_0_sync_extern : entity is "sync_extern";
end design_1_sync_extern_0_0_sync_extern;

architecture STRUCTURE of design_1_sync_extern_0_0_sync_extern is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
begin
\flops_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sig_in,
      Q => p_0_in(1),
      R => '0'
    );
\flops_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => sig_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sync_extern_0_0 is
  port (
    clk : in STD_LOGIC;
    sig_in : in STD_LOGIC;
    sig_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sync_extern_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sync_extern_0_0 : entity is "design_1_sync_extern_0_0,sync_extern,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_sync_extern_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_sync_extern_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_sync_extern_0_0 : entity is "sync_extern,Vivado 2018.3";
end design_1_sync_extern_0_0;

architecture STRUCTURE of design_1_sync_extern_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 7000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_sync_extern_0_0_sync_extern
     port map (
      clk => clk,
      sig_in => sig_in,
      sig_out => sig_out
    );
end STRUCTURE;
