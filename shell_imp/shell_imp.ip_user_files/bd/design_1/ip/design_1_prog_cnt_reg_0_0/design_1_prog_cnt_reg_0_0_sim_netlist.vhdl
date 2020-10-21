-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:27 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_prog_cnt_reg_0_0/design_1_prog_cnt_reg_0_0_sim_netlist.vhdl
-- Design      : design_1_prog_cnt_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_prog_cnt_reg_0_0_prog_cnt_reg is
  port (
    ins_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_prog_cnt_reg_0_0_prog_cnt_reg : entity is "prog_cnt_reg";
end design_1_prog_cnt_reg_0_0_prog_cnt_reg;

architecture STRUCTURE of design_1_prog_cnt_reg_0_0_prog_cnt_reg is
  signal \^ins_addr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pc[11]_i_2_n_0\ : STD_LOGIC;
  signal \pc[11]_i_3_n_0\ : STD_LOGIC;
  signal \pc[11]_i_4_n_0\ : STD_LOGIC;
  signal \pc[11]_i_5_n_0\ : STD_LOGIC;
  signal \pc[15]_i_1_n_0\ : STD_LOGIC;
  signal \pc[15]_i_3_n_0\ : STD_LOGIC;
  signal \pc[15]_i_4_n_0\ : STD_LOGIC;
  signal \pc[15]_i_5_n_0\ : STD_LOGIC;
  signal \pc[15]_i_6_n_0\ : STD_LOGIC;
  signal \pc[3]_i_2_n_0\ : STD_LOGIC;
  signal \pc[3]_i_3_n_0\ : STD_LOGIC;
  signal \pc[3]_i_4_n_0\ : STD_LOGIC;
  signal \pc[3]_i_5_n_0\ : STD_LOGIC;
  signal \pc[3]_i_6_n_0\ : STD_LOGIC;
  signal \pc[7]_i_2_n_0\ : STD_LOGIC;
  signal \pc[7]_i_3_n_0\ : STD_LOGIC;
  signal \pc[7]_i_4_n_0\ : STD_LOGIC;
  signal \pc[7]_i_5_n_0\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \pc_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_pc_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  ins_addr(15 downto 0) <= \^ins_addr\(15 downto 0);
\pc[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(11),
      I1 => ld_en,
      I2 => \^ins_addr\(11),
      O => \pc[11]_i_2_n_0\
    );
\pc[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(10),
      I1 => ld_en,
      I2 => \^ins_addr\(10),
      O => \pc[11]_i_3_n_0\
    );
\pc[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(9),
      I1 => ld_en,
      I2 => \^ins_addr\(9),
      O => \pc[11]_i_4_n_0\
    );
\pc[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(8),
      I1 => ld_en,
      I2 => \^ins_addr\(8),
      O => \pc[11]_i_5_n_0\
    );
\pc[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ld_en,
      I1 => en,
      O => \pc[15]_i_1_n_0\
    );
\pc[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(15),
      I1 => ld_en,
      I2 => \^ins_addr\(15),
      O => \pc[15]_i_3_n_0\
    );
\pc[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(14),
      I1 => ld_en,
      I2 => \^ins_addr\(14),
      O => \pc[15]_i_4_n_0\
    );
\pc[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(13),
      I1 => ld_en,
      I2 => \^ins_addr\(13),
      O => \pc[15]_i_5_n_0\
    );
\pc[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(12),
      I1 => ld_en,
      I2 => \^ins_addr\(12),
      O => \pc[15]_i_6_n_0\
    );
\pc[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(0),
      I1 => ld_en,
      I2 => \^ins_addr\(0),
      O => \pc[3]_i_2_n_0\
    );
\pc[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(3),
      I1 => ld_en,
      I2 => \^ins_addr\(3),
      O => \pc[3]_i_3_n_0\
    );
\pc[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(2),
      I1 => ld_en,
      I2 => \^ins_addr\(2),
      O => \pc[3]_i_4_n_0\
    );
\pc[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(1),
      I1 => ld_en,
      I2 => \^ins_addr\(1),
      O => \pc[3]_i_5_n_0\
    );
\pc[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^ins_addr\(0),
      I1 => ld_val(0),
      I2 => ld_en,
      O => \pc[3]_i_6_n_0\
    );
\pc[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(7),
      I1 => ld_en,
      I2 => \^ins_addr\(7),
      O => \pc[7]_i_2_n_0\
    );
\pc[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(6),
      I1 => ld_en,
      I2 => \^ins_addr\(6),
      O => \pc[7]_i_3_n_0\
    );
\pc[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(5),
      I1 => ld_en,
      I2 => \^ins_addr\(5),
      O => \pc[7]_i_4_n_0\
    );
\pc[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(4),
      I1 => ld_en,
      I2 => \^ins_addr\(4),
      O => \pc[7]_i_5_n_0\
    );
\pc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[3]_i_1_n_7\,
      Q => \^ins_addr\(0),
      R => '0'
    );
\pc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[11]_i_1_n_5\,
      Q => \^ins_addr\(10),
      R => '0'
    );
\pc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[11]_i_1_n_4\,
      Q => \^ins_addr\(11),
      R => '0'
    );
\pc_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[7]_i_1_n_0\,
      CO(3) => \pc_reg[11]_i_1_n_0\,
      CO(2) => \pc_reg[11]_i_1_n_1\,
      CO(1) => \pc_reg[11]_i_1_n_2\,
      CO(0) => \pc_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[11]_i_1_n_4\,
      O(2) => \pc_reg[11]_i_1_n_5\,
      O(1) => \pc_reg[11]_i_1_n_6\,
      O(0) => \pc_reg[11]_i_1_n_7\,
      S(3) => \pc[11]_i_2_n_0\,
      S(2) => \pc[11]_i_3_n_0\,
      S(1) => \pc[11]_i_4_n_0\,
      S(0) => \pc[11]_i_5_n_0\
    );
\pc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[15]_i_2_n_7\,
      Q => \^ins_addr\(12),
      R => '0'
    );
\pc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[15]_i_2_n_6\,
      Q => \^ins_addr\(13),
      R => '0'
    );
\pc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[15]_i_2_n_5\,
      Q => \^ins_addr\(14),
      R => '0'
    );
\pc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[15]_i_2_n_4\,
      Q => \^ins_addr\(15),
      R => '0'
    );
\pc_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[11]_i_1_n_0\,
      CO(3) => \NLW_pc_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \pc_reg[15]_i_2_n_1\,
      CO(1) => \pc_reg[15]_i_2_n_2\,
      CO(0) => \pc_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[15]_i_2_n_4\,
      O(2) => \pc_reg[15]_i_2_n_5\,
      O(1) => \pc_reg[15]_i_2_n_6\,
      O(0) => \pc_reg[15]_i_2_n_7\,
      S(3) => \pc[15]_i_3_n_0\,
      S(2) => \pc[15]_i_4_n_0\,
      S(1) => \pc[15]_i_5_n_0\,
      S(0) => \pc[15]_i_6_n_0\
    );
\pc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[3]_i_1_n_6\,
      Q => \^ins_addr\(1),
      R => '0'
    );
\pc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[3]_i_1_n_5\,
      Q => \^ins_addr\(2),
      R => '0'
    );
\pc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[3]_i_1_n_4\,
      Q => \^ins_addr\(3),
      R => '0'
    );
\pc_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_reg[3]_i_1_n_0\,
      CO(2) => \pc_reg[3]_i_1_n_1\,
      CO(1) => \pc_reg[3]_i_1_n_2\,
      CO(0) => \pc_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pc[3]_i_2_n_0\,
      O(3) => \pc_reg[3]_i_1_n_4\,
      O(2) => \pc_reg[3]_i_1_n_5\,
      O(1) => \pc_reg[3]_i_1_n_6\,
      O(0) => \pc_reg[3]_i_1_n_7\,
      S(3) => \pc[3]_i_3_n_0\,
      S(2) => \pc[3]_i_4_n_0\,
      S(1) => \pc[3]_i_5_n_0\,
      S(0) => \pc[3]_i_6_n_0\
    );
\pc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[7]_i_1_n_7\,
      Q => \^ins_addr\(4),
      R => '0'
    );
\pc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[7]_i_1_n_6\,
      Q => \^ins_addr\(5),
      R => '0'
    );
\pc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[7]_i_1_n_5\,
      Q => \^ins_addr\(6),
      R => '0'
    );
\pc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[7]_i_1_n_4\,
      Q => \^ins_addr\(7),
      R => '0'
    );
\pc_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_reg[3]_i_1_n_0\,
      CO(3) => \pc_reg[7]_i_1_n_0\,
      CO(2) => \pc_reg[7]_i_1_n_1\,
      CO(1) => \pc_reg[7]_i_1_n_2\,
      CO(0) => \pc_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pc_reg[7]_i_1_n_4\,
      O(2) => \pc_reg[7]_i_1_n_5\,
      O(1) => \pc_reg[7]_i_1_n_6\,
      O(0) => \pc_reg[7]_i_1_n_7\,
      S(3) => \pc[7]_i_2_n_0\,
      S(2) => \pc[7]_i_3_n_0\,
      S(1) => \pc[7]_i_4_n_0\,
      S(0) => \pc[7]_i_5_n_0\
    );
\pc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[11]_i_1_n_7\,
      Q => \^ins_addr\(8),
      R => '0'
    );
\pc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => \pc_reg[11]_i_1_n_6\,
      Q => \^ins_addr\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_prog_cnt_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    ins_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_en : in STD_LOGIC;
    en : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_prog_cnt_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_prog_cnt_reg_0_0 : entity is "design_1_prog_cnt_reg_0_0,prog_cnt_reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_prog_cnt_reg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_prog_cnt_reg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_prog_cnt_reg_0_0 : entity is "prog_cnt_reg,Vivado 2018.3";
end design_1_prog_cnt_reg_0_0;

architecture STRUCTURE of design_1_prog_cnt_reg_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_prog_cnt_reg_0_0_prog_cnt_reg
     port map (
      clk => clk,
      en => en,
      ins_addr(15 downto 0) => ins_addr(15 downto 0),
      ld_en => ld_en,
      ld_val(15 downto 0) => ld_val(15 downto 0)
    );
end STRUCTURE;
