-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:57 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_cmp_status_reg_0_0/design_1_cmp_status_reg_0_0_sim_netlist.vhdl
-- Design      : design_1_cmp_status_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cmp_status_reg_0_0_cmp_status_reg is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_en : in STD_LOGIC;
    cmp_status_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cmp_status_reg_0_0_cmp_status_reg : entity is "cmp_status_reg";
end design_1_cmp_status_reg_0_0_cmp_status_reg;

architecture STRUCTURE of design_1_cmp_status_reg_0_0_cmp_status_reg is
begin
\cmp_status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wr_en,
      D => cmp_status_in(0),
      Q => Q(0),
      R => '0'
    );
\cmp_status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wr_en,
      D => cmp_status_in(1),
      Q => Q(1),
      R => '0'
    );
\cmp_status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wr_en,
      D => cmp_status_in(2),
      Q => Q(2),
      R => '0'
    );
\cmp_status_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => wr_en,
      D => cmp_status_in(3),
      Q => Q(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cmp_status_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    cmp_status_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    eq_sig : out STD_LOGIC;
    ne_sig : out STD_LOGIC;
    gt_sig : out STD_LOGIC;
    lt_sig : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cmp_status_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cmp_status_reg_0_0 : entity is "design_1_cmp_status_reg_0_0,cmp_status_reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_cmp_status_reg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_cmp_status_reg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_cmp_status_reg_0_0 : entity is "cmp_status_reg,Vivado 2018.3";
end design_1_cmp_status_reg_0_0;

architecture STRUCTURE of design_1_cmp_status_reg_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_cmp_status_reg_0_0_cmp_status_reg
     port map (
      Q(3) => lt_sig,
      Q(2) => gt_sig,
      Q(1) => ne_sig,
      Q(0) => eq_sig,
      clk => clk,
      cmp_status_in(3 downto 0) => cmp_status_in(3 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
