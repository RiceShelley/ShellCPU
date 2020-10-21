-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 20 23:44:51 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_stack_ptr_reg_0_0/design_1_stack_ptr_reg_0_0_sim_netlist.vhdl
-- Design      : design_1_stack_ptr_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_stack_ptr_reg_0_0_stack_ptr_reg is
  port (
    \sp_reg_reg[1]_0\ : out STD_LOGIC;
    stack_ptr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dec : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    inc : in STD_LOGIC;
    ld_en : in STD_LOGIC;
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_stack_ptr_reg_0_0_stack_ptr_reg : entity is "stack_ptr_reg";
end design_1_stack_ptr_reg_0_0_stack_ptr_reg;

architecture STRUCTURE of design_1_stack_ptr_reg_0_0_stack_ptr_reg is
  signal \sp_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_4\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_5\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_6\ : STD_LOGIC;
  signal \sp_reg0_carry__0_n_7\ : STD_LOGIC;
  signal \sp_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_4\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_5\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_6\ : STD_LOGIC;
  signal \sp_reg0_carry__1_n_7\ : STD_LOGIC;
  signal \sp_reg0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \sp_reg0_carry__2_n_3\ : STD_LOGIC;
  signal \sp_reg0_carry__2_n_5\ : STD_LOGIC;
  signal \sp_reg0_carry__2_n_6\ : STD_LOGIC;
  signal \sp_reg0_carry__2_n_7\ : STD_LOGIC;
  signal sp_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal sp_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal sp_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal sp_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal sp_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal sp_reg0_carry_n_0 : STD_LOGIC;
  signal sp_reg0_carry_n_1 : STD_LOGIC;
  signal sp_reg0_carry_n_2 : STD_LOGIC;
  signal sp_reg0_carry_n_3 : STD_LOGIC;
  signal sp_reg0_carry_n_4 : STD_LOGIC;
  signal sp_reg0_carry_n_5 : STD_LOGIC;
  signal sp_reg0_carry_n_6 : STD_LOGIC;
  signal sp_reg0_carry_n_7 : STD_LOGIC;
  signal \sp_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal sp_reg_n_0 : STD_LOGIC;
  signal \^sp_reg_reg[1]_0\ : STD_LOGIC;
  signal \^stack_ptr\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \NLW_sp_reg0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sp_reg0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of sp_reg0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sp_reg0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sp_reg0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sp_reg0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sp_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sp_reg[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sp_reg[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sp_reg[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sp_reg[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sp_reg[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sp_reg[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sp_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sp_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sp_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sp_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sp_reg[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sp_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sp_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sp_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sp_reg[9]_i_1\ : label is "soft_lutpair4";
begin
  \sp_reg_reg[1]_0\ <= \^sp_reg_reg[1]_0\;
  stack_ptr(14 downto 0) <= \^stack_ptr\(14 downto 0);
sp_reg: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dec,
      I1 => inc,
      I2 => ld_en,
      O => sp_reg_n_0
    );
sp_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sp_reg0_carry_n_0,
      CO(2) => sp_reg0_carry_n_1,
      CO(1) => sp_reg0_carry_n_2,
      CO(0) => sp_reg0_carry_n_3,
      CYINIT => \^stack_ptr\(0),
      DI(3 downto 2) => \^stack_ptr\(2 downto 1),
      DI(1) => \^sp_reg_reg[1]_0\,
      DI(0) => sp_reg0_carry_i_1_n_0,
      O(3) => sp_reg0_carry_n_4,
      O(2) => sp_reg0_carry_n_5,
      O(1) => sp_reg0_carry_n_6,
      O(0) => sp_reg0_carry_n_7,
      S(3) => sp_reg0_carry_i_2_n_0,
      S(2) => sp_reg0_carry_i_3_n_0,
      S(1) => sp_reg0_carry_i_4_n_0,
      S(0) => sp_reg0_carry_i_5_n_0
    );
\sp_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sp_reg0_carry_n_0,
      CO(3) => \sp_reg0_carry__0_n_0\,
      CO(2) => \sp_reg0_carry__0_n_1\,
      CO(1) => \sp_reg0_carry__0_n_2\,
      CO(0) => \sp_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^stack_ptr\(6 downto 3),
      O(3) => \sp_reg0_carry__0_n_4\,
      O(2) => \sp_reg0_carry__0_n_5\,
      O(1) => \sp_reg0_carry__0_n_6\,
      O(0) => \sp_reg0_carry__0_n_7\,
      S(3) => \sp_reg0_carry__0_i_1_n_0\,
      S(2) => \sp_reg0_carry__0_i_2_n_0\,
      S(1) => \sp_reg0_carry__0_i_3_n_0\,
      S(0) => \sp_reg0_carry__0_i_4_n_0\
    );
\sp_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(6),
      I1 => \^stack_ptr\(7),
      O => \sp_reg0_carry__0_i_1_n_0\
    );
\sp_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(5),
      I1 => \^stack_ptr\(6),
      O => \sp_reg0_carry__0_i_2_n_0\
    );
\sp_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(4),
      I1 => \^stack_ptr\(5),
      O => \sp_reg0_carry__0_i_3_n_0\
    );
\sp_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(3),
      I1 => \^stack_ptr\(4),
      O => \sp_reg0_carry__0_i_4_n_0\
    );
\sp_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sp_reg0_carry__0_n_0\,
      CO(3) => \sp_reg0_carry__1_n_0\,
      CO(2) => \sp_reg0_carry__1_n_1\,
      CO(1) => \sp_reg0_carry__1_n_2\,
      CO(0) => \sp_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^stack_ptr\(10 downto 7),
      O(3) => \sp_reg0_carry__1_n_4\,
      O(2) => \sp_reg0_carry__1_n_5\,
      O(1) => \sp_reg0_carry__1_n_6\,
      O(0) => \sp_reg0_carry__1_n_7\,
      S(3) => \sp_reg0_carry__1_i_1_n_0\,
      S(2) => \sp_reg0_carry__1_i_2_n_0\,
      S(1) => \sp_reg0_carry__1_i_3_n_0\,
      S(0) => \sp_reg0_carry__1_i_4_n_0\
    );
\sp_reg0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(10),
      I1 => \^stack_ptr\(11),
      O => \sp_reg0_carry__1_i_1_n_0\
    );
\sp_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(9),
      I1 => \^stack_ptr\(10),
      O => \sp_reg0_carry__1_i_2_n_0\
    );
\sp_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(8),
      I1 => \^stack_ptr\(9),
      O => \sp_reg0_carry__1_i_3_n_0\
    );
\sp_reg0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(7),
      I1 => \^stack_ptr\(8),
      O => \sp_reg0_carry__1_i_4_n_0\
    );
\sp_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sp_reg0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_sp_reg0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sp_reg0_carry__2_n_2\,
      CO(0) => \sp_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^stack_ptr\(12 downto 11),
      O(3) => \NLW_sp_reg0_carry__2_O_UNCONNECTED\(3),
      O(2) => \sp_reg0_carry__2_n_5\,
      O(1) => \sp_reg0_carry__2_n_6\,
      O(0) => \sp_reg0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \sp_reg0_carry__2_i_1_n_0\,
      S(1) => \sp_reg0_carry__2_i_2_n_0\,
      S(0) => \sp_reg0_carry__2_i_3_n_0\
    );
\sp_reg0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(13),
      I1 => \^stack_ptr\(14),
      O => \sp_reg0_carry__2_i_1_n_0\
    );
\sp_reg0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(12),
      I1 => \^stack_ptr\(13),
      O => \sp_reg0_carry__2_i_2_n_0\
    );
\sp_reg0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(11),
      I1 => \^stack_ptr\(12),
      O => \sp_reg0_carry__2_i_3_n_0\
    );
sp_reg0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sp_reg_reg[1]_0\,
      O => sp_reg0_carry_i_1_n_0
    );
sp_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(2),
      I1 => \^stack_ptr\(3),
      O => sp_reg0_carry_i_2_n_0
    );
sp_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(1),
      I1 => \^stack_ptr\(2),
      O => sp_reg0_carry_i_3_n_0
    );
sp_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^sp_reg_reg[1]_0\,
      I1 => \^stack_ptr\(1),
      O => sp_reg0_carry_i_4_n_0
    );
sp_reg0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^sp_reg_reg[1]_0\,
      I1 => dec,
      O => sp_reg0_carry_i_5_n_0
    );
\sp_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => ld_val(0),
      I1 => ld_en,
      I2 => \^stack_ptr\(0),
      O => \sp_reg[0]_i_1_n_0\
    );
\sp_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(10),
      I1 => ld_en,
      I2 => \sp_reg0_carry__1_n_6\,
      O => \sp_reg[10]_i_1_n_0\
    );
\sp_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(11),
      I1 => ld_en,
      I2 => \sp_reg0_carry__1_n_5\,
      O => \sp_reg[11]_i_1_n_0\
    );
\sp_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(12),
      I1 => ld_en,
      I2 => \sp_reg0_carry__1_n_4\,
      O => \sp_reg[12]_i_1_n_0\
    );
\sp_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(13),
      I1 => ld_en,
      I2 => \sp_reg0_carry__2_n_7\,
      O => \sp_reg[13]_i_1_n_0\
    );
\sp_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(14),
      I1 => ld_en,
      I2 => \sp_reg0_carry__2_n_6\,
      O => \sp_reg[14]_i_1_n_0\
    );
\sp_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(15),
      I1 => ld_en,
      I2 => \sp_reg0_carry__2_n_5\,
      O => \sp_reg[15]_i_1_n_0\
    );
\sp_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(1),
      I1 => ld_en,
      I2 => sp_reg0_carry_n_7,
      O => \sp_reg[1]_i_1_n_0\
    );
\sp_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(2),
      I1 => ld_en,
      I2 => sp_reg0_carry_n_6,
      O => \sp_reg[2]_i_1_n_0\
    );
\sp_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(3),
      I1 => ld_en,
      I2 => sp_reg0_carry_n_5,
      O => \sp_reg[3]_i_1_n_0\
    );
\sp_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(4),
      I1 => ld_en,
      I2 => sp_reg0_carry_n_4,
      O => \sp_reg[4]_i_1_n_0\
    );
\sp_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(5),
      I1 => ld_en,
      I2 => \sp_reg0_carry__0_n_7\,
      O => \sp_reg[5]_i_1_n_0\
    );
\sp_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(6),
      I1 => ld_en,
      I2 => \sp_reg0_carry__0_n_6\,
      O => \sp_reg[6]_i_1_n_0\
    );
\sp_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(7),
      I1 => ld_en,
      I2 => \sp_reg0_carry__0_n_5\,
      O => \sp_reg[7]_i_1_n_0\
    );
\sp_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(8),
      I1 => ld_en,
      I2 => \sp_reg0_carry__0_n_4\,
      O => \sp_reg[8]_i_1_n_0\
    );
\sp_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ld_val(9),
      I1 => ld_en,
      I2 => \sp_reg0_carry__1_n_7\,
      O => \sp_reg[9]_i_1_n_0\
    );
\sp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[0]_i_1_n_0\,
      Q => \^stack_ptr\(0),
      R => rst
    );
\sp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[10]_i_1_n_0\,
      Q => \^stack_ptr\(9),
      R => rst
    );
\sp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[11]_i_1_n_0\,
      Q => \^stack_ptr\(10),
      R => rst
    );
\sp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[12]_i_1_n_0\,
      Q => \^stack_ptr\(11),
      R => rst
    );
\sp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[13]_i_1_n_0\,
      Q => \^stack_ptr\(12),
      R => rst
    );
\sp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[14]_i_1_n_0\,
      Q => \^stack_ptr\(13),
      R => rst
    );
\sp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[15]_i_1_n_0\,
      Q => \^stack_ptr\(14),
      R => rst
    );
\sp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[1]_i_1_n_0\,
      Q => \^sp_reg_reg[1]_0\,
      R => rst
    );
\sp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[2]_i_1_n_0\,
      Q => \^stack_ptr\(1),
      R => rst
    );
\sp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[3]_i_1_n_0\,
      Q => \^stack_ptr\(2),
      R => rst
    );
\sp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[4]_i_1_n_0\,
      Q => \^stack_ptr\(3),
      R => rst
    );
\sp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[5]_i_1_n_0\,
      Q => \^stack_ptr\(4),
      R => rst
    );
\sp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[6]_i_1_n_0\,
      Q => \^stack_ptr\(5),
      R => rst
    );
\sp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[7]_i_1_n_0\,
      Q => \^stack_ptr\(6),
      R => rst
    );
\sp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[8]_i_1_n_0\,
      Q => \^stack_ptr\(7),
      R => rst
    );
\sp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg[9]_i_1_n_0\,
      Q => \^stack_ptr\(8),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_stack_ptr_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_en : in STD_LOGIC;
    dec : in STD_LOGIC;
    inc : in STD_LOGIC;
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_stack_ptr_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_stack_ptr_reg_0_0 : entity is "design_1_stack_ptr_reg_0_0,stack_ptr_reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_stack_ptr_reg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_stack_ptr_reg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_stack_ptr_reg_0_0 : entity is "stack_ptr_reg,Vivado 2018.3";
end design_1_stack_ptr_reg_0_0;

architecture STRUCTURE of design_1_stack_ptr_reg_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_stack_ptr_reg_0_0_stack_ptr_reg
     port map (
      clk => clk,
      dec => dec,
      inc => inc,
      ld_en => ld_en,
      ld_val(15 downto 0) => ld_val(15 downto 0),
      rst => rst,
      \sp_reg_reg[1]_0\ => stack_ptr(1),
      stack_ptr(14 downto 1) => stack_ptr(15 downto 2),
      stack_ptr(0) => stack_ptr(0)
    );
end STRUCTURE;
