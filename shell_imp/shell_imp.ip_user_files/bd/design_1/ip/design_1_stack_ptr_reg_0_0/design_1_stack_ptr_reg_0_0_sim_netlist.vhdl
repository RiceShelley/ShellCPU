-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:35:28 2020
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
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ld_en : in STD_LOGIC;
    ld_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dec : in STD_LOGIC;
    clk : in STD_LOGIC;
    inc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_stack_ptr_reg_0_0_stack_ptr_reg : entity is "stack_ptr_reg";
end design_1_stack_ptr_reg_0_0_stack_ptr_reg;

architecture STRUCTURE of design_1_stack_ptr_reg_0_0_stack_ptr_reg is
  signal \sp_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal sp_reg_n_0 : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sp_reg_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sp_reg_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sp_reg_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sp_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^stack_ptr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sp_reg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  stack_ptr(15 downto 0) <= \^stack_ptr\(15 downto 0);
sp_reg: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ld_en,
      I1 => inc,
      I2 => dec,
      O => sp_reg_n_0
    );
\sp_reg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[11]_i_2_n_0\
    );
\sp_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[11]_i_3_n_0\
    );
\sp_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[11]_i_4_n_0\
    );
\sp_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[11]_i_5_n_0\
    );
\sp_reg[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(11),
      I2 => ld_en,
      I3 => ld_val(11),
      O => \sp_reg[11]_i_6_n_0\
    );
\sp_reg[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(10),
      I2 => ld_en,
      I3 => ld_val(10),
      O => \sp_reg[11]_i_7_n_0\
    );
\sp_reg[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(9),
      I2 => ld_en,
      I3 => ld_val(9),
      O => \sp_reg[11]_i_8_n_0\
    );
\sp_reg[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(8),
      I2 => ld_en,
      I3 => ld_val(8),
      O => \sp_reg[11]_i_9_n_0\
    );
\sp_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[15]_i_2_n_0\
    );
\sp_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[15]_i_3_n_0\
    );
\sp_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[15]_i_4_n_0\
    );
\sp_reg[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(15),
      I2 => ld_en,
      I3 => ld_val(15),
      O => \sp_reg[15]_i_5_n_0\
    );
\sp_reg[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(14),
      I2 => ld_en,
      I3 => ld_val(14),
      O => \sp_reg[15]_i_6_n_0\
    );
\sp_reg[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(13),
      I2 => ld_en,
      I3 => ld_val(13),
      O => \sp_reg[15]_i_7_n_0\
    );
\sp_reg[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(12),
      I2 => ld_en,
      I3 => ld_val(12),
      O => \sp_reg[15]_i_8_n_0\
    );
\sp_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[3]_i_2_n_0\
    );
\sp_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[3]_i_3_n_0\
    );
\sp_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[3]_i_4_n_0\
    );
\sp_reg[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ld_en,
      O => \sp_reg[3]_i_5_n_0\
    );
\sp_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(3),
      I2 => ld_en,
      I3 => ld_val(3),
      O => \sp_reg[3]_i_6_n_0\
    );
\sp_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(2),
      I2 => ld_en,
      I3 => ld_val(2),
      O => \sp_reg[3]_i_7_n_0\
    );
\sp_reg[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(1),
      I2 => ld_en,
      I3 => ld_val(1),
      O => \sp_reg[3]_i_8_n_0\
    );
\sp_reg[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => \^stack_ptr\(0),
      I1 => ld_en,
      I2 => ld_val(0),
      O => \sp_reg[3]_i_9_n_0\
    );
\sp_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[7]_i_2_n_0\
    );
\sp_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[7]_i_3_n_0\
    );
\sp_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[7]_i_4_n_0\
    );
\sp_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec,
      I1 => ld_en,
      O => \sp_reg[7]_i_5_n_0\
    );
\sp_reg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(7),
      I2 => ld_en,
      I3 => ld_val(7),
      O => \sp_reg[7]_i_6_n_0\
    );
\sp_reg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(6),
      I2 => ld_en,
      I3 => ld_val(6),
      O => \sp_reg[7]_i_7_n_0\
    );
\sp_reg[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(5),
      I2 => ld_en,
      I3 => ld_val(5),
      O => \sp_reg[7]_i_8_n_0\
    );
\sp_reg[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => dec,
      I1 => \^stack_ptr\(4),
      I2 => ld_en,
      I3 => ld_val(4),
      O => \sp_reg[7]_i_9_n_0\
    );
\sp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[3]_i_1_n_7\,
      Q => \^stack_ptr\(0),
      R => '0'
    );
\sp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[11]_i_1_n_5\,
      Q => \^stack_ptr\(10),
      R => '0'
    );
\sp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[11]_i_1_n_4\,
      Q => \^stack_ptr\(11),
      R => '0'
    );
\sp_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sp_reg_reg[7]_i_1_n_0\,
      CO(3) => \sp_reg_reg[11]_i_1_n_0\,
      CO(2) => \sp_reg_reg[11]_i_1_n_1\,
      CO(1) => \sp_reg_reg[11]_i_1_n_2\,
      CO(0) => \sp_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sp_reg[11]_i_2_n_0\,
      DI(2) => \sp_reg[11]_i_3_n_0\,
      DI(1) => \sp_reg[11]_i_4_n_0\,
      DI(0) => \sp_reg[11]_i_5_n_0\,
      O(3) => \sp_reg_reg[11]_i_1_n_4\,
      O(2) => \sp_reg_reg[11]_i_1_n_5\,
      O(1) => \sp_reg_reg[11]_i_1_n_6\,
      O(0) => \sp_reg_reg[11]_i_1_n_7\,
      S(3) => \sp_reg[11]_i_6_n_0\,
      S(2) => \sp_reg[11]_i_7_n_0\,
      S(1) => \sp_reg[11]_i_8_n_0\,
      S(0) => \sp_reg[11]_i_9_n_0\
    );
\sp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[15]_i_1_n_7\,
      Q => \^stack_ptr\(12),
      R => '0'
    );
\sp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[15]_i_1_n_6\,
      Q => \^stack_ptr\(13),
      R => '0'
    );
\sp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[15]_i_1_n_5\,
      Q => \^stack_ptr\(14),
      R => '0'
    );
\sp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[15]_i_1_n_4\,
      Q => \^stack_ptr\(15),
      R => '0'
    );
\sp_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sp_reg_reg[11]_i_1_n_0\,
      CO(3) => \NLW_sp_reg_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sp_reg_reg[15]_i_1_n_1\,
      CO(1) => \sp_reg_reg[15]_i_1_n_2\,
      CO(0) => \sp_reg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sp_reg[15]_i_2_n_0\,
      DI(1) => \sp_reg[15]_i_3_n_0\,
      DI(0) => \sp_reg[15]_i_4_n_0\,
      O(3) => \sp_reg_reg[15]_i_1_n_4\,
      O(2) => \sp_reg_reg[15]_i_1_n_5\,
      O(1) => \sp_reg_reg[15]_i_1_n_6\,
      O(0) => \sp_reg_reg[15]_i_1_n_7\,
      S(3) => \sp_reg[15]_i_5_n_0\,
      S(2) => \sp_reg[15]_i_6_n_0\,
      S(1) => \sp_reg[15]_i_7_n_0\,
      S(0) => \sp_reg[15]_i_8_n_0\
    );
\sp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[3]_i_1_n_6\,
      Q => \^stack_ptr\(1),
      R => '0'
    );
\sp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[3]_i_1_n_5\,
      Q => \^stack_ptr\(2),
      R => '0'
    );
\sp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[3]_i_1_n_4\,
      Q => \^stack_ptr\(3),
      R => '0'
    );
\sp_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sp_reg_reg[3]_i_1_n_0\,
      CO(2) => \sp_reg_reg[3]_i_1_n_1\,
      CO(1) => \sp_reg_reg[3]_i_1_n_2\,
      CO(0) => \sp_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sp_reg[3]_i_2_n_0\,
      DI(2) => \sp_reg[3]_i_3_n_0\,
      DI(1) => \sp_reg[3]_i_4_n_0\,
      DI(0) => \sp_reg[3]_i_5_n_0\,
      O(3) => \sp_reg_reg[3]_i_1_n_4\,
      O(2) => \sp_reg_reg[3]_i_1_n_5\,
      O(1) => \sp_reg_reg[3]_i_1_n_6\,
      O(0) => \sp_reg_reg[3]_i_1_n_7\,
      S(3) => \sp_reg[3]_i_6_n_0\,
      S(2) => \sp_reg[3]_i_7_n_0\,
      S(1) => \sp_reg[3]_i_8_n_0\,
      S(0) => \sp_reg[3]_i_9_n_0\
    );
\sp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[7]_i_1_n_7\,
      Q => \^stack_ptr\(4),
      R => '0'
    );
\sp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[7]_i_1_n_6\,
      Q => \^stack_ptr\(5),
      R => '0'
    );
\sp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[7]_i_1_n_5\,
      Q => \^stack_ptr\(6),
      R => '0'
    );
\sp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[7]_i_1_n_4\,
      Q => \^stack_ptr\(7),
      R => '0'
    );
\sp_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sp_reg_reg[3]_i_1_n_0\,
      CO(3) => \sp_reg_reg[7]_i_1_n_0\,
      CO(2) => \sp_reg_reg[7]_i_1_n_1\,
      CO(1) => \sp_reg_reg[7]_i_1_n_2\,
      CO(0) => \sp_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sp_reg[7]_i_2_n_0\,
      DI(2) => \sp_reg[7]_i_3_n_0\,
      DI(1) => \sp_reg[7]_i_4_n_0\,
      DI(0) => \sp_reg[7]_i_5_n_0\,
      O(3) => \sp_reg_reg[7]_i_1_n_4\,
      O(2) => \sp_reg_reg[7]_i_1_n_5\,
      O(1) => \sp_reg_reg[7]_i_1_n_6\,
      O(0) => \sp_reg_reg[7]_i_1_n_7\,
      S(3) => \sp_reg[7]_i_6_n_0\,
      S(2) => \sp_reg[7]_i_7_n_0\,
      S(1) => \sp_reg[7]_i_8_n_0\,
      S(0) => \sp_reg[7]_i_9_n_0\
    );
\sp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[11]_i_1_n_7\,
      Q => \^stack_ptr\(8),
      R => '0'
    );
\sp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sp_reg_n_0,
      D => \sp_reg_reg[11]_i_1_n_6\,
      Q => \^stack_ptr\(9),
      R => '0'
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
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 )
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
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_stack_ptr_reg_0_0_stack_ptr_reg
     port map (
      clk => clk,
      dec => dec,
      inc => inc,
      ld_en => ld_en,
      ld_val(15 downto 0) => ld_val(15 downto 0),
      stack_ptr(15 downto 0) => stack_ptr(15 downto 0)
    );
end STRUCTURE;
