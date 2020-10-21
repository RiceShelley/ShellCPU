-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:36:28 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_ALU_0_0/design_1_ALU_0_0_sim_netlist.vhdl
-- Design      : design_1_ALU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0_ALU is
  port (
    outputC : out STD_LOGIC_VECTOR ( 15 downto 0 );
    inputA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inputB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outputC_0_sp_1 : in STD_LOGIC;
    \outputC[0]_0\ : in STD_LOGIC;
    \outputC[0]_1\ : in STD_LOGIC;
    op_add : in STD_LOGIC;
    op_and : in STD_LOGIC;
    op_sub : in STD_LOGIC;
    outputC_1_sp_1 : in STD_LOGIC;
    \outputC[1]_0\ : in STD_LOGIC;
    \outputC[1]_1\ : in STD_LOGIC;
    \and_out__15\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    outputC_2_sp_1 : in STD_LOGIC;
    outputC_3_sp_1 : in STD_LOGIC;
    outputC_4_sp_1 : in STD_LOGIC;
    \outputC[4]_0\ : in STD_LOGIC;
    outputC_5_sp_1 : in STD_LOGIC;
    \outputC[5]_0\ : in STD_LOGIC;
    outputC_6_sp_1 : in STD_LOGIC;
    \outputC[6]_0\ : in STD_LOGIC;
    outputC_7_sp_1 : in STD_LOGIC;
    \outputC[7]_0\ : in STD_LOGIC;
    outputC_8_sp_1 : in STD_LOGIC;
    \outputC[8]_0\ : in STD_LOGIC;
    outputC_9_sp_1 : in STD_LOGIC;
    \outputC[9]_0\ : in STD_LOGIC;
    outputC_10_sp_1 : in STD_LOGIC;
    \outputC[10]_0\ : in STD_LOGIC;
    outputC_11_sp_1 : in STD_LOGIC;
    \outputC[11]_0\ : in STD_LOGIC;
    outputC_12_sp_1 : in STD_LOGIC;
    \outputC[12]_0\ : in STD_LOGIC;
    outputC_13_sp_1 : in STD_LOGIC;
    \outputC[13]_0\ : in STD_LOGIC;
    outputC_14_sp_1 : in STD_LOGIC;
    \outputC[14]_0\ : in STD_LOGIC;
    outputC_15_sp_1 : in STD_LOGIC;
    \outputC[15]_0\ : in STD_LOGIC;
    op_asr : in STD_LOGIC;
    op_cmp : in STD_LOGIC;
    op_asl : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALU_0_0_ALU : entity is "ALU";
end design_1_ALU_0_0_ALU;

architecture STRUCTURE of design_1_ALU_0_0_ALU is
  signal \add_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_n_1\ : STD_LOGIC;
  signal \add_out_carry__0_n_2\ : STD_LOGIC;
  signal \add_out_carry__0_n_3\ : STD_LOGIC;
  signal \add_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_n_1\ : STD_LOGIC;
  signal \add_out_carry__1_n_2\ : STD_LOGIC;
  signal \add_out_carry__1_n_3\ : STD_LOGIC;
  signal \add_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_n_1\ : STD_LOGIC;
  signal \add_out_carry__2_n_2\ : STD_LOGIC;
  signal \add_out_carry__2_n_3\ : STD_LOGIC;
  signal add_out_carry_i_1_n_0 : STD_LOGIC;
  signal add_out_carry_i_2_n_0 : STD_LOGIC;
  signal add_out_carry_i_3_n_0 : STD_LOGIC;
  signal add_out_carry_i_4_n_0 : STD_LOGIC;
  signal add_out_carry_n_0 : STD_LOGIC;
  signal add_out_carry_n_1 : STD_LOGIC;
  signal add_out_carry_n_2 : STD_LOGIC;
  signal add_out_carry_n_3 : STD_LOGIC;
  signal cmp_out_reg0 : STD_LOGIC;
  signal \cmp_out_reg0__7_carry__0_n_1\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry__0_n_2\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry__0_n_3\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_1_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_2_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_3_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_4_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_5_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_6_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_7_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_i_8_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_1\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_2\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_3\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_3\ : STD_LOGIC;
  signal cmp_out_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_6_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_7_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_i_8_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_1 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_2 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_3 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \outputC[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \outputC[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal outputC_0_sn_1 : STD_LOGIC;
  signal outputC_10_sn_1 : STD_LOGIC;
  signal outputC_11_sn_1 : STD_LOGIC;
  signal outputC_12_sn_1 : STD_LOGIC;
  signal outputC_13_sn_1 : STD_LOGIC;
  signal outputC_14_sn_1 : STD_LOGIC;
  signal outputC_15_sn_1 : STD_LOGIC;
  signal outputC_1_sn_1 : STD_LOGIC;
  signal outputC_2_sn_1 : STD_LOGIC;
  signal outputC_3_sn_1 : STD_LOGIC;
  signal outputC_4_sn_1 : STD_LOGIC;
  signal outputC_5_sn_1 : STD_LOGIC;
  signal outputC_6_sn_1 : STD_LOGIC;
  signal outputC_7_sn_1 : STD_LOGIC;
  signal outputC_8_sn_1 : STD_LOGIC;
  signal outputC_9_sn_1 : STD_LOGIC;
  signal \sub_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sub_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sub_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sub_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sub_out_carry__0_n_0\ : STD_LOGIC;
  signal \sub_out_carry__0_n_1\ : STD_LOGIC;
  signal \sub_out_carry__0_n_2\ : STD_LOGIC;
  signal \sub_out_carry__0_n_3\ : STD_LOGIC;
  signal \sub_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sub_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sub_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sub_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sub_out_carry__1_n_0\ : STD_LOGIC;
  signal \sub_out_carry__1_n_1\ : STD_LOGIC;
  signal \sub_out_carry__1_n_2\ : STD_LOGIC;
  signal \sub_out_carry__1_n_3\ : STD_LOGIC;
  signal \sub_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sub_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sub_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sub_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sub_out_carry__2_n_1\ : STD_LOGIC;
  signal \sub_out_carry__2_n_2\ : STD_LOGIC;
  signal \sub_out_carry__2_n_3\ : STD_LOGIC;
  signal sub_out_carry_i_1_n_0 : STD_LOGIC;
  signal sub_out_carry_i_2_n_0 : STD_LOGIC;
  signal sub_out_carry_i_3_n_0 : STD_LOGIC;
  signal sub_out_carry_i_4_n_0 : STD_LOGIC;
  signal sub_out_carry_n_0 : STD_LOGIC;
  signal sub_out_carry_n_1 : STD_LOGIC;
  signal sub_out_carry_n_2 : STD_LOGIC;
  signal sub_out_carry_n_3 : STD_LOGIC;
  signal \NLW_add_out_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cmp_out_reg0__7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cmp_out_reg0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cmp_out_reg0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub_out_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  outputC_0_sn_1 <= outputC_0_sp_1;
  outputC_10_sn_1 <= outputC_10_sp_1;
  outputC_11_sn_1 <= outputC_11_sp_1;
  outputC_12_sn_1 <= outputC_12_sp_1;
  outputC_13_sn_1 <= outputC_13_sp_1;
  outputC_14_sn_1 <= outputC_14_sp_1;
  outputC_15_sn_1 <= outputC_15_sp_1;
  outputC_1_sn_1 <= outputC_1_sp_1;
  outputC_2_sn_1 <= outputC_2_sp_1;
  outputC_3_sn_1 <= outputC_3_sp_1;
  outputC_4_sn_1 <= outputC_4_sp_1;
  outputC_5_sn_1 <= outputC_5_sp_1;
  outputC_6_sn_1 <= outputC_6_sp_1;
  outputC_7_sn_1 <= outputC_7_sp_1;
  outputC_8_sn_1 <= outputC_8_sp_1;
  outputC_9_sn_1 <= outputC_9_sp_1;
add_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => add_out_carry_n_0,
      CO(2) => add_out_carry_n_1,
      CO(1) => add_out_carry_n_2,
      CO(0) => add_out_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => inputA(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => add_out_carry_i_1_n_0,
      S(2) => add_out_carry_i_2_n_0,
      S(1) => add_out_carry_i_3_n_0,
      S(0) => add_out_carry_i_4_n_0
    );
\add_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => add_out_carry_n_0,
      CO(3) => \add_out_carry__0_n_0\,
      CO(2) => \add_out_carry__0_n_1\,
      CO(1) => \add_out_carry__0_n_2\,
      CO(0) => \add_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => inputA(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \add_out_carry__0_i_1_n_0\,
      S(2) => \add_out_carry__0_i_2_n_0\,
      S(1) => \add_out_carry__0_i_3_n_0\,
      S(0) => \add_out_carry__0_i_4_n_0\
    );
\add_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(7),
      I1 => inputB(7),
      O => \add_out_carry__0_i_1_n_0\
    );
\add_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(6),
      I1 => inputB(6),
      O => \add_out_carry__0_i_2_n_0\
    );
\add_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(5),
      I1 => inputB(5),
      O => \add_out_carry__0_i_3_n_0\
    );
\add_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(4),
      I1 => inputB(4),
      O => \add_out_carry__0_i_4_n_0\
    );
\add_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_out_carry__0_n_0\,
      CO(3) => \add_out_carry__1_n_0\,
      CO(2) => \add_out_carry__1_n_1\,
      CO(1) => \add_out_carry__1_n_2\,
      CO(0) => \add_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => inputA(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \add_out_carry__1_i_1_n_0\,
      S(2) => \add_out_carry__1_i_2_n_0\,
      S(1) => \add_out_carry__1_i_3_n_0\,
      S(0) => \add_out_carry__1_i_4_n_0\
    );
\add_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(11),
      I1 => inputB(11),
      O => \add_out_carry__1_i_1_n_0\
    );
\add_out_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(10),
      I1 => inputB(10),
      O => \add_out_carry__1_i_2_n_0\
    );
\add_out_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(9),
      I1 => inputB(9),
      O => \add_out_carry__1_i_3_n_0\
    );
\add_out_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(8),
      I1 => inputB(8),
      O => \add_out_carry__1_i_4_n_0\
    );
\add_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_out_carry__1_n_0\,
      CO(3) => \NLW_add_out_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \add_out_carry__2_n_1\,
      CO(1) => \add_out_carry__2_n_2\,
      CO(0) => \add_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => inputA(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \add_out_carry__2_i_1_n_0\,
      S(2) => \add_out_carry__2_i_2_n_0\,
      S(1) => \add_out_carry__2_i_3_n_0\,
      S(0) => \add_out_carry__2_i_4_n_0\
    );
\add_out_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(15),
      I1 => inputB(15),
      O => \add_out_carry__2_i_1_n_0\
    );
\add_out_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(14),
      I1 => inputB(14),
      O => \add_out_carry__2_i_2_n_0\
    );
\add_out_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(13),
      I1 => inputB(13),
      O => \add_out_carry__2_i_3_n_0\
    );
\add_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(12),
      I1 => inputB(12),
      O => \add_out_carry__2_i_4_n_0\
    );
add_out_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(3),
      I1 => inputB(3),
      O => add_out_carry_i_1_n_0
    );
add_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(2),
      I1 => inputB(2),
      O => add_out_carry_i_2_n_0
    );
add_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(1),
      I1 => inputB(1),
      O => add_out_carry_i_3_n_0
    );
add_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => inputA(0),
      I1 => inputB(0),
      O => add_out_carry_i_4_n_0
    );
\cmp_out_reg0__7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cmp_out_reg0__7_carry_n_0\,
      CO(2) => \cmp_out_reg0__7_carry_n_1\,
      CO(1) => \cmp_out_reg0__7_carry_n_2\,
      CO(0) => \cmp_out_reg0__7_carry_n_3\,
      CYINIT => '0',
      DI(3) => \cmp_out_reg0__7_carry_i_1_n_0\,
      DI(2) => \cmp_out_reg0__7_carry_i_2_n_0\,
      DI(1) => \cmp_out_reg0__7_carry_i_3_n_0\,
      DI(0) => \cmp_out_reg0__7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_cmp_out_reg0__7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \cmp_out_reg0__7_carry_i_5_n_0\,
      S(2) => \cmp_out_reg0__7_carry_i_6_n_0\,
      S(1) => \cmp_out_reg0__7_carry_i_7_n_0\,
      S(0) => \cmp_out_reg0__7_carry_i_8_n_0\
    );
\cmp_out_reg0__7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cmp_out_reg0__7_carry_n_0\,
      CO(3) => cmp_out_reg0,
      CO(2) => \cmp_out_reg0__7_carry__0_n_1\,
      CO(1) => \cmp_out_reg0__7_carry__0_n_2\,
      CO(0) => \cmp_out_reg0__7_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cmp_out_reg0__7_carry_i_1__0_n_0\,
      DI(2) => \cmp_out_reg0__7_carry_i_2__0_n_0\,
      DI(1) => \cmp_out_reg0__7_carry_i_3__0_n_0\,
      DI(0) => \cmp_out_reg0__7_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cmp_out_reg0__7_carry_i_5__0_n_0\,
      S(2) => \cmp_out_reg0__7_carry_i_6__0_n_0\,
      S(1) => \cmp_out_reg0__7_carry_i_7__0_n_0\,
      S(0) => \cmp_out_reg0__7_carry_i_8__0_n_0\
    );
\cmp_out_reg0__7_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(6),
      I1 => inputA(6),
      I2 => inputA(7),
      I3 => inputB(7),
      O => \cmp_out_reg0__7_carry_i_1_n_0\
    );
\cmp_out_reg0__7_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(14),
      I1 => inputA(14),
      I2 => inputA(15),
      I3 => inputB(15),
      O => \cmp_out_reg0__7_carry_i_1__0_n_0\
    );
\cmp_out_reg0__7_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(4),
      I1 => inputA(4),
      I2 => inputA(5),
      I3 => inputB(5),
      O => \cmp_out_reg0__7_carry_i_2_n_0\
    );
\cmp_out_reg0__7_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(12),
      I1 => inputA(12),
      I2 => inputA(13),
      I3 => inputB(13),
      O => \cmp_out_reg0__7_carry_i_2__0_n_0\
    );
\cmp_out_reg0__7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(2),
      I1 => inputA(2),
      I2 => inputA(3),
      I3 => inputB(3),
      O => \cmp_out_reg0__7_carry_i_3_n_0\
    );
\cmp_out_reg0__7_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(10),
      I1 => inputA(10),
      I2 => inputA(11),
      I3 => inputB(11),
      O => \cmp_out_reg0__7_carry_i_3__0_n_0\
    );
\cmp_out_reg0__7_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(0),
      I1 => inputA(0),
      I2 => inputA(1),
      I3 => inputB(1),
      O => \cmp_out_reg0__7_carry_i_4_n_0\
    );
\cmp_out_reg0__7_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputB(8),
      I1 => inputA(8),
      I2 => inputA(9),
      I3 => inputB(9),
      O => \cmp_out_reg0__7_carry_i_4__0_n_0\
    );
\cmp_out_reg0__7_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(6),
      I1 => inputA(6),
      I2 => inputB(7),
      I3 => inputA(7),
      O => \cmp_out_reg0__7_carry_i_5_n_0\
    );
\cmp_out_reg0__7_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(14),
      I1 => inputA(14),
      I2 => inputB(15),
      I3 => inputA(15),
      O => \cmp_out_reg0__7_carry_i_5__0_n_0\
    );
\cmp_out_reg0__7_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(4),
      I1 => inputA(4),
      I2 => inputB(5),
      I3 => inputA(5),
      O => \cmp_out_reg0__7_carry_i_6_n_0\
    );
\cmp_out_reg0__7_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(12),
      I1 => inputA(12),
      I2 => inputB(13),
      I3 => inputA(13),
      O => \cmp_out_reg0__7_carry_i_6__0_n_0\
    );
\cmp_out_reg0__7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(2),
      I1 => inputA(2),
      I2 => inputB(3),
      I3 => inputA(3),
      O => \cmp_out_reg0__7_carry_i_7_n_0\
    );
\cmp_out_reg0__7_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(10),
      I1 => inputA(10),
      I2 => inputB(11),
      I3 => inputA(11),
      O => \cmp_out_reg0__7_carry_i_7__0_n_0\
    );
\cmp_out_reg0__7_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(0),
      I1 => inputA(0),
      I2 => inputB(1),
      I3 => inputA(1),
      O => \cmp_out_reg0__7_carry_i_8_n_0\
    );
\cmp_out_reg0__7_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(8),
      I1 => inputA(8),
      I2 => inputB(9),
      I3 => inputA(9),
      O => \cmp_out_reg0__7_carry_i_8__0_n_0\
    );
cmp_out_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cmp_out_reg0_carry_n_0,
      CO(2) => cmp_out_reg0_carry_n_1,
      CO(1) => cmp_out_reg0_carry_n_2,
      CO(0) => cmp_out_reg0_carry_n_3,
      CYINIT => '0',
      DI(3) => cmp_out_reg0_carry_i_1_n_0,
      DI(2) => cmp_out_reg0_carry_i_2_n_0,
      DI(1) => cmp_out_reg0_carry_i_3_n_0,
      DI(0) => cmp_out_reg0_carry_i_4_n_0,
      O(3 downto 0) => NLW_cmp_out_reg0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cmp_out_reg0_carry_i_5_n_0,
      S(2) => cmp_out_reg0_carry_i_6_n_0,
      S(1) => cmp_out_reg0_carry_i_7_n_0,
      S(0) => cmp_out_reg0_carry_i_8_n_0
    );
\cmp_out_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cmp_out_reg0_carry_n_0,
      CO(3) => \cmp_out_reg0_carry__0_n_0\,
      CO(2) => \cmp_out_reg0_carry__0_n_1\,
      CO(1) => \cmp_out_reg0_carry__0_n_2\,
      CO(0) => \cmp_out_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cmp_out_reg0_carry__0_i_1_n_0\,
      DI(2) => \cmp_out_reg0_carry__0_i_2_n_0\,
      DI(1) => \cmp_out_reg0_carry__0_i_3_n_0\,
      DI(0) => \cmp_out_reg0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_cmp_out_reg0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cmp_out_reg0_carry__0_i_5_n_0\,
      S(2) => \cmp_out_reg0_carry__0_i_6_n_0\,
      S(1) => \cmp_out_reg0_carry__0_i_7_n_0\,
      S(0) => \cmp_out_reg0_carry__0_i_8_n_0\
    );
\cmp_out_reg0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(14),
      I1 => inputB(14),
      I2 => inputB(15),
      I3 => inputA(15),
      O => \cmp_out_reg0_carry__0_i_1_n_0\
    );
\cmp_out_reg0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(12),
      I1 => inputB(12),
      I2 => inputB(13),
      I3 => inputA(13),
      O => \cmp_out_reg0_carry__0_i_2_n_0\
    );
\cmp_out_reg0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(10),
      I1 => inputB(10),
      I2 => inputB(11),
      I3 => inputA(11),
      O => \cmp_out_reg0_carry__0_i_3_n_0\
    );
\cmp_out_reg0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(8),
      I1 => inputB(8),
      I2 => inputB(9),
      I3 => inputA(9),
      O => \cmp_out_reg0_carry__0_i_4_n_0\
    );
\cmp_out_reg0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(14),
      I1 => inputA(14),
      I2 => inputB(15),
      I3 => inputA(15),
      O => \cmp_out_reg0_carry__0_i_5_n_0\
    );
\cmp_out_reg0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(12),
      I1 => inputA(12),
      I2 => inputB(13),
      I3 => inputA(13),
      O => \cmp_out_reg0_carry__0_i_6_n_0\
    );
\cmp_out_reg0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(10),
      I1 => inputA(10),
      I2 => inputB(11),
      I3 => inputA(11),
      O => \cmp_out_reg0_carry__0_i_7_n_0\
    );
\cmp_out_reg0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(8),
      I1 => inputA(8),
      I2 => inputB(9),
      I3 => inputA(9),
      O => \cmp_out_reg0_carry__0_i_8_n_0\
    );
cmp_out_reg0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(6),
      I1 => inputB(6),
      I2 => inputB(7),
      I3 => inputA(7),
      O => cmp_out_reg0_carry_i_1_n_0
    );
cmp_out_reg0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(4),
      I1 => inputB(4),
      I2 => inputB(5),
      I3 => inputA(5),
      O => cmp_out_reg0_carry_i_2_n_0
    );
cmp_out_reg0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(2),
      I1 => inputB(2),
      I2 => inputB(3),
      I3 => inputA(3),
      O => cmp_out_reg0_carry_i_3_n_0
    );
cmp_out_reg0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => inputA(0),
      I1 => inputB(0),
      I2 => inputB(1),
      I3 => inputA(1),
      O => cmp_out_reg0_carry_i_4_n_0
    );
cmp_out_reg0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(6),
      I1 => inputA(6),
      I2 => inputB(7),
      I3 => inputA(7),
      O => cmp_out_reg0_carry_i_5_n_0
    );
cmp_out_reg0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(4),
      I1 => inputA(4),
      I2 => inputB(5),
      I3 => inputA(5),
      O => cmp_out_reg0_carry_i_6_n_0
    );
cmp_out_reg0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(2),
      I1 => inputA(2),
      I2 => inputB(3),
      I3 => inputA(3),
      O => cmp_out_reg0_carry_i_7_n_0
    );
cmp_out_reg0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => inputB(0),
      I1 => inputA(0),
      I2 => inputB(1),
      I3 => inputA(1),
      O => cmp_out_reg0_carry_i_8_n_0
    );
\outputC[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_0_sn_1,
      I1 => \outputC[0]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[0]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(0),
      O => outputC(0)
    );
\outputC[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(0),
      I2 => inputB(0),
      I3 => op_add,
      I4 => data1(0),
      I5 => op_sub,
      O => \outputC[0]_INST_0_i_3_n_0\
    );
\outputC[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_10_sn_1,
      I1 => \outputC[10]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[10]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(10),
      O => outputC(10)
    );
\outputC[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(10),
      I2 => inputB(10),
      I3 => op_add,
      I4 => data1(10),
      I5 => op_sub,
      O => \outputC[10]_INST_0_i_3_n_0\
    );
\outputC[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_11_sn_1,
      I1 => \outputC[11]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[11]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(11),
      O => outputC(11)
    );
\outputC[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(11),
      I2 => inputB(11),
      I3 => op_add,
      I4 => data1(11),
      I5 => op_sub,
      O => \outputC[11]_INST_0_i_3_n_0\
    );
\outputC[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_12_sn_1,
      I1 => \outputC[12]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[12]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(12),
      O => outputC(12)
    );
\outputC[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(12),
      I2 => inputB(12),
      I3 => op_add,
      I4 => data1(12),
      I5 => op_sub,
      O => \outputC[12]_INST_0_i_3_n_0\
    );
\outputC[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_13_sn_1,
      I1 => \outputC[13]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[13]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(13),
      O => outputC(13)
    );
\outputC[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(13),
      I2 => inputB(13),
      I3 => op_add,
      I4 => data1(13),
      I5 => op_sub,
      O => \outputC[13]_INST_0_i_3_n_0\
    );
\outputC[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_14_sn_1,
      I1 => \outputC[14]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[14]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(14),
      O => outputC(14)
    );
\outputC[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(14),
      I2 => inputB(14),
      I3 => op_add,
      I4 => data1(14),
      I5 => op_sub,
      O => \outputC[14]_INST_0_i_3_n_0\
    );
\outputC[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_15_sn_1,
      I1 => \outputC[15]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[15]_INST_0_i_4_n_0\,
      I4 => op_add,
      I5 => data0(15),
      O => outputC(15)
    );
\outputC[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(15),
      I2 => inputB(15),
      I3 => op_add,
      I4 => data1(15),
      I5 => op_sub,
      O => \outputC[15]_INST_0_i_4_n_0\
    );
\outputC[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => outputC_1_sn_1,
      I1 => \outputC[0]_1\,
      I2 => \outputC[1]_0\,
      I3 => \outputC[1]_1\,
      I4 => \outputC[1]_INST_0_i_3_n_0\,
      O => outputC(1)
    );
\outputC[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => data0(1),
      I1 => \and_out__15\(0),
      I2 => data1(1),
      I3 => op_add,
      I4 => op_and,
      I5 => op_sub,
      O => \outputC[1]_INST_0_i_3_n_0\
    );
\outputC[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => outputC_2_sn_1,
      I1 => \outputC[0]_1\,
      I2 => \outputC[1]_0\,
      I3 => \outputC[2]_INST_0_i_2_n_0\,
      I4 => \outputC[2]_INST_0_i_3_n_0\,
      O => outputC(2)
    );
\outputC[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => inputA(3),
      I1 => \cmp_out_reg0_carry__0_n_0\,
      I2 => inputA(1),
      I3 => op_asr,
      I4 => op_cmp,
      I5 => op_asl,
      O => \outputC[2]_INST_0_i_2_n_0\
    );
\outputC[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => data0(2),
      I1 => \and_out__15\(1),
      I2 => data1(2),
      I3 => op_add,
      I4 => op_and,
      I5 => op_sub,
      O => \outputC[2]_INST_0_i_3_n_0\
    );
\outputC[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => outputC_3_sn_1,
      I1 => \outputC[0]_1\,
      I2 => \outputC[1]_0\,
      I3 => \outputC[3]_INST_0_i_3_n_0\,
      I4 => \outputC[3]_INST_0_i_4_n_0\,
      O => outputC(3)
    );
\outputC[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => inputA(4),
      I1 => cmp_out_reg0,
      I2 => inputA(2),
      I3 => op_asr,
      I4 => op_cmp,
      I5 => op_asl,
      O => \outputC[3]_INST_0_i_3_n_0\
    );
\outputC[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => data0(3),
      I1 => \and_out__15\(2),
      I2 => data1(3),
      I3 => op_add,
      I4 => op_and,
      I5 => op_sub,
      O => \outputC[3]_INST_0_i_4_n_0\
    );
\outputC[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_4_sn_1,
      I1 => \outputC[4]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[4]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(4),
      O => outputC(4)
    );
\outputC[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(4),
      I2 => inputB(4),
      I3 => op_add,
      I4 => data1(4),
      I5 => op_sub,
      O => \outputC[4]_INST_0_i_3_n_0\
    );
\outputC[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_5_sn_1,
      I1 => \outputC[5]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[5]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(5),
      O => outputC(5)
    );
\outputC[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(5),
      I2 => inputB(5),
      I3 => op_add,
      I4 => data1(5),
      I5 => op_sub,
      O => \outputC[5]_INST_0_i_3_n_0\
    );
\outputC[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_6_sn_1,
      I1 => \outputC[6]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[6]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(6),
      O => outputC(6)
    );
\outputC[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(6),
      I2 => inputB(6),
      I3 => op_add,
      I4 => data1(6),
      I5 => op_sub,
      O => \outputC[6]_INST_0_i_3_n_0\
    );
\outputC[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_7_sn_1,
      I1 => \outputC[7]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[7]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(7),
      O => outputC(7)
    );
\outputC[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(7),
      I2 => inputB(7),
      I3 => op_add,
      I4 => data1(7),
      I5 => op_sub,
      O => \outputC[7]_INST_0_i_3_n_0\
    );
\outputC[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_8_sn_1,
      I1 => \outputC[8]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[8]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(8),
      O => outputC(8)
    );
\outputC[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(8),
      I2 => inputB(8),
      I3 => op_add,
      I4 => data1(8),
      I5 => op_sub,
      O => \outputC[8]_INST_0_i_3_n_0\
    );
\outputC[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE0EFE0EFE0E"
    )
        port map (
      I0 => outputC_9_sn_1,
      I1 => \outputC[9]_0\,
      I2 => \outputC[0]_1\,
      I3 => \outputC[9]_INST_0_i_3_n_0\,
      I4 => op_add,
      I5 => data0(9),
      O => outputC(9)
    );
\outputC[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800080"
    )
        port map (
      I0 => op_and,
      I1 => inputA(9),
      I2 => inputB(9),
      I3 => op_add,
      I4 => data1(9),
      I5 => op_sub,
      O => \outputC[9]_INST_0_i_3_n_0\
    );
sub_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sub_out_carry_n_0,
      CO(2) => sub_out_carry_n_1,
      CO(1) => sub_out_carry_n_2,
      CO(0) => sub_out_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => inputA(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => sub_out_carry_i_1_n_0,
      S(2) => sub_out_carry_i_2_n_0,
      S(1) => sub_out_carry_i_3_n_0,
      S(0) => sub_out_carry_i_4_n_0
    );
\sub_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sub_out_carry_n_0,
      CO(3) => \sub_out_carry__0_n_0\,
      CO(2) => \sub_out_carry__0_n_1\,
      CO(1) => \sub_out_carry__0_n_2\,
      CO(0) => \sub_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => inputA(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \sub_out_carry__0_i_1_n_0\,
      S(2) => \sub_out_carry__0_i_2_n_0\,
      S(1) => \sub_out_carry__0_i_3_n_0\,
      S(0) => \sub_out_carry__0_i_4_n_0\
    );
\sub_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(7),
      I1 => inputB(7),
      O => \sub_out_carry__0_i_1_n_0\
    );
\sub_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(6),
      I1 => inputB(6),
      O => \sub_out_carry__0_i_2_n_0\
    );
\sub_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(5),
      I1 => inputB(5),
      O => \sub_out_carry__0_i_3_n_0\
    );
\sub_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(4),
      I1 => inputB(4),
      O => \sub_out_carry__0_i_4_n_0\
    );
\sub_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_out_carry__0_n_0\,
      CO(3) => \sub_out_carry__1_n_0\,
      CO(2) => \sub_out_carry__1_n_1\,
      CO(1) => \sub_out_carry__1_n_2\,
      CO(0) => \sub_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => inputA(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \sub_out_carry__1_i_1_n_0\,
      S(2) => \sub_out_carry__1_i_2_n_0\,
      S(1) => \sub_out_carry__1_i_3_n_0\,
      S(0) => \sub_out_carry__1_i_4_n_0\
    );
\sub_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(11),
      I1 => inputB(11),
      O => \sub_out_carry__1_i_1_n_0\
    );
\sub_out_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(10),
      I1 => inputB(10),
      O => \sub_out_carry__1_i_2_n_0\
    );
\sub_out_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(9),
      I1 => inputB(9),
      O => \sub_out_carry__1_i_3_n_0\
    );
\sub_out_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(8),
      I1 => inputB(8),
      O => \sub_out_carry__1_i_4_n_0\
    );
\sub_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_out_carry__1_n_0\,
      CO(3) => \NLW_sub_out_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \sub_out_carry__2_n_1\,
      CO(1) => \sub_out_carry__2_n_2\,
      CO(0) => \sub_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => inputA(14 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \sub_out_carry__2_i_1_n_0\,
      S(2) => \sub_out_carry__2_i_2_n_0\,
      S(1) => \sub_out_carry__2_i_3_n_0\,
      S(0) => \sub_out_carry__2_i_4_n_0\
    );
\sub_out_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(15),
      I1 => inputB(15),
      O => \sub_out_carry__2_i_1_n_0\
    );
\sub_out_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(14),
      I1 => inputB(14),
      O => \sub_out_carry__2_i_2_n_0\
    );
\sub_out_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(13),
      I1 => inputB(13),
      O => \sub_out_carry__2_i_3_n_0\
    );
\sub_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(12),
      I1 => inputB(12),
      O => \sub_out_carry__2_i_4_n_0\
    );
sub_out_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(3),
      I1 => inputB(3),
      O => sub_out_carry_i_1_n_0
    );
sub_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(2),
      I1 => inputB(2),
      O => sub_out_carry_i_2_n_0
    );
sub_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(1),
      I1 => inputB(1),
      O => sub_out_carry_i_3_n_0
    );
sub_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(0),
      I1 => inputB(0),
      O => sub_out_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALU_0_0 is
  port (
    inputA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inputB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outputC : out STD_LOGIC_VECTOR ( 15 downto 0 );
    op_add : in STD_LOGIC;
    op_sub : in STD_LOGIC;
    op_and : in STD_LOGIC;
    op_or : in STD_LOGIC;
    op_xor : in STD_LOGIC;
    op_nand : in STD_LOGIC;
    op_asr : in STD_LOGIC;
    op_asl : in STD_LOGIC;
    op_cmp : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ALU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ALU_0_0 : entity is "design_1_ALU_0_0,ALU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ALU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ALU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ALU_0_0 : entity is "ALU,Vivado 2018.3";
end design_1_ALU_0_0;

architecture STRUCTURE of design_1_ALU_0_0 is
  signal \and_out__15\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \outputC[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_5_n_1\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_5_n_2\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_5_n_3\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \outputC[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \outputC[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \outputC[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \outputC[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outputC[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outputC[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \NLW_outputC[0]_INST_0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outputC[0]_INST_0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outputC[0]_INST_0_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outputC[1]_INST_0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outputC[1]_INST_0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outputC[1]_INST_0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \outputC[1]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outputC[2]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outputC[2]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outputC[3]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \outputC[3]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outputC[3]_INST_0_i_5\ : label is "soft_lutpair2";
begin
U0: entity work.design_1_ALU_0_0_ALU
     port map (
      \and_out__15\(2 downto 0) => \and_out__15\(3 downto 1),
      inputA(15 downto 0) => inputA(15 downto 0),
      inputB(15 downto 0) => inputB(15 downto 0),
      op_add => op_add,
      op_and => op_and,
      op_asl => op_asl,
      op_asr => op_asr,
      op_cmp => op_cmp,
      op_sub => op_sub,
      outputC(15 downto 0) => outputC(15 downto 0),
      \outputC[0]_0\ => \outputC[0]_INST_0_i_2_n_0\,
      \outputC[0]_1\ => \outputC[15]_INST_0_i_3_n_0\,
      \outputC[10]_0\ => \outputC[10]_INST_0_i_2_n_0\,
      \outputC[11]_0\ => \outputC[11]_INST_0_i_2_n_0\,
      \outputC[12]_0\ => \outputC[12]_INST_0_i_2_n_0\,
      \outputC[13]_0\ => \outputC[13]_INST_0_i_2_n_0\,
      \outputC[14]_0\ => \outputC[14]_INST_0_i_2_n_0\,
      \outputC[15]_0\ => \outputC[15]_INST_0_i_2_n_0\,
      \outputC[1]_0\ => \outputC[3]_INST_0_i_2_n_0\,
      \outputC[1]_1\ => \outputC[1]_INST_0_i_2_n_0\,
      \outputC[4]_0\ => \outputC[4]_INST_0_i_2_n_0\,
      \outputC[5]_0\ => \outputC[5]_INST_0_i_2_n_0\,
      \outputC[6]_0\ => \outputC[6]_INST_0_i_2_n_0\,
      \outputC[7]_0\ => \outputC[7]_INST_0_i_2_n_0\,
      \outputC[8]_0\ => \outputC[8]_INST_0_i_2_n_0\,
      \outputC[9]_0\ => \outputC[9]_INST_0_i_2_n_0\,
      outputC_0_sp_1 => \outputC[0]_INST_0_i_1_n_0\,
      outputC_10_sp_1 => \outputC[10]_INST_0_i_1_n_0\,
      outputC_11_sp_1 => \outputC[11]_INST_0_i_1_n_0\,
      outputC_12_sp_1 => \outputC[12]_INST_0_i_1_n_0\,
      outputC_13_sp_1 => \outputC[13]_INST_0_i_1_n_0\,
      outputC_14_sp_1 => \outputC[14]_INST_0_i_1_n_0\,
      outputC_15_sp_1 => \outputC[15]_INST_0_i_1_n_0\,
      outputC_1_sp_1 => \outputC[1]_INST_0_i_1_n_0\,
      outputC_2_sp_1 => \outputC[2]_INST_0_i_1_n_0\,
      outputC_3_sp_1 => \outputC[3]_INST_0_i_1_n_0\,
      outputC_4_sp_1 => \outputC[4]_INST_0_i_1_n_0\,
      outputC_5_sp_1 => \outputC[5]_INST_0_i_1_n_0\,
      outputC_6_sp_1 => \outputC[6]_INST_0_i_1_n_0\,
      outputC_7_sp_1 => \outputC[7]_INST_0_i_1_n_0\,
      outputC_8_sp_1 => \outputC[8]_INST_0_i_1_n_0\,
      outputC_9_sp_1 => \outputC[9]_INST_0_i_1_n_0\
    );
\outputC[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(0),
      I1 => inputA(0),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[0]_INST_0_i_1_n_0\
    );
\outputC[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(3),
      I1 => inputA(3),
      I2 => inputA(5),
      I3 => inputB(5),
      I4 => inputA(4),
      I5 => inputB(4),
      O => \outputC[0]_INST_0_i_10_n_0\
    );
\outputC[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(0),
      I1 => inputA(0),
      I2 => inputA(2),
      I3 => inputB(2),
      I4 => inputA(1),
      I5 => inputB(1),
      O => \outputC[0]_INST_0_i_11_n_0\
    );
\outputC[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4F00400"
    )
        port map (
      I0 => op_asl,
      I1 => op_cmp,
      I2 => op_asr,
      I3 => \outputC[0]_INST_0_i_4_n_2\,
      I4 => inputA(1),
      I5 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[0]_INST_0_i_2_n_0\
    );
\outputC[0]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \outputC[0]_INST_0_i_5_n_0\,
      CO(3 downto 2) => \NLW_outputC[0]_INST_0_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outputC[0]_INST_0_i_4_n_2\,
      CO(0) => \outputC[0]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_outputC[0]_INST_0_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \outputC[0]_INST_0_i_6_n_0\,
      S(0) => \outputC[0]_INST_0_i_7_n_0\
    );
\outputC[0]_INST_0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outputC[0]_INST_0_i_5_n_0\,
      CO(2) => \outputC[0]_INST_0_i_5_n_1\,
      CO(1) => \outputC[0]_INST_0_i_5_n_2\,
      CO(0) => \outputC[0]_INST_0_i_5_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_outputC[0]_INST_0_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \outputC[0]_INST_0_i_8_n_0\,
      S(2) => \outputC[0]_INST_0_i_9_n_0\,
      S(1) => \outputC[0]_INST_0_i_10_n_0\,
      S(0) => \outputC[0]_INST_0_i_11_n_0\
    );
\outputC[0]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(15),
      I1 => inputB(15),
      O => \outputC[0]_INST_0_i_6_n_0\
    );
\outputC[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(12),
      I1 => inputA(12),
      I2 => inputA(14),
      I3 => inputB(14),
      I4 => inputA(13),
      I5 => inputB(13),
      O => \outputC[0]_INST_0_i_7_n_0\
    );
\outputC[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(9),
      I1 => inputA(9),
      I2 => inputA(11),
      I3 => inputB(11),
      I4 => inputA(10),
      I5 => inputB(10),
      O => \outputC[0]_INST_0_i_8_n_0\
    );
\outputC[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(6),
      I1 => inputA(6),
      I2 => inputA(8),
      I3 => inputB(8),
      I4 => inputA(7),
      I5 => inputB(7),
      O => \outputC[0]_INST_0_i_9_n_0\
    );
\outputC[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(10),
      I1 => inputA(10),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[10]_INST_0_i_1_n_0\
    );
\outputC[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(9),
      I3 => inputA(11),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[10]_INST_0_i_2_n_0\
    );
\outputC[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(11),
      I1 => inputA(11),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[11]_INST_0_i_1_n_0\
    );
\outputC[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(10),
      I3 => inputA(12),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[11]_INST_0_i_2_n_0\
    );
\outputC[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(12),
      I1 => inputA(12),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[12]_INST_0_i_1_n_0\
    );
\outputC[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(11),
      I3 => inputA(13),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[12]_INST_0_i_2_n_0\
    );
\outputC[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(13),
      I1 => inputA(13),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[13]_INST_0_i_1_n_0\
    );
\outputC[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(12),
      I3 => inputA(14),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[13]_INST_0_i_2_n_0\
    );
\outputC[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(14),
      I1 => inputA(14),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[14]_INST_0_i_1_n_0\
    );
\outputC[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(13),
      I3 => inputA(15),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[14]_INST_0_i_2_n_0\
    );
\outputC[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(15),
      I1 => inputA(15),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[15]_INST_0_i_1_n_0\
    );
\outputC[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(14),
      I3 => inputA(15),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[15]_INST_0_i_2_n_0\
    );
\outputC[15]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => op_sub,
      I1 => op_and,
      I2 => op_add,
      O => \outputC[15]_INST_0_i_3_n_0\
    );
\outputC[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(1),
      I1 => inputA(1),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[1]_INST_0_i_1_n_0\
    );
\outputC[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(6),
      I1 => inputA(6),
      I2 => inputA(8),
      I3 => inputB(8),
      I4 => inputA(7),
      I5 => inputB(7),
      O => \outputC[1]_INST_0_i_10_n_0\
    );
\outputC[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(3),
      I1 => inputA(3),
      I2 => inputA(5),
      I3 => inputB(5),
      I4 => inputA(4),
      I5 => inputB(4),
      O => \outputC[1]_INST_0_i_11_n_0\
    );
\outputC[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(0),
      I1 => inputA(0),
      I2 => inputA(2),
      I3 => inputB(2),
      I4 => inputA(1),
      I5 => inputB(1),
      O => \outputC[1]_INST_0_i_12_n_0\
    );
\outputC[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => inputA(2),
      I1 => \outputC[1]_INST_0_i_4_n_2\,
      I2 => inputA(0),
      I3 => op_asr,
      I4 => op_cmp,
      I5 => op_asl,
      O => \outputC[1]_INST_0_i_2_n_0\
    );
\outputC[1]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \outputC[1]_INST_0_i_6_n_0\,
      CO(3 downto 2) => \NLW_outputC[1]_INST_0_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outputC[1]_INST_0_i_4_n_2\,
      CO(0) => \outputC[1]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_outputC[1]_INST_0_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \outputC[1]_INST_0_i_7_n_0\,
      S(0) => \outputC[1]_INST_0_i_8_n_0\
    );
\outputC[1]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inputA(1),
      I1 => inputB(1),
      O => \and_out__15\(1)
    );
\outputC[1]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outputC[1]_INST_0_i_6_n_0\,
      CO(2) => \outputC[1]_INST_0_i_6_n_1\,
      CO(1) => \outputC[1]_INST_0_i_6_n_2\,
      CO(0) => \outputC[1]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_outputC[1]_INST_0_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \outputC[1]_INST_0_i_9_n_0\,
      S(2) => \outputC[1]_INST_0_i_10_n_0\,
      S(1) => \outputC[1]_INST_0_i_11_n_0\,
      S(0) => \outputC[1]_INST_0_i_12_n_0\
    );
\outputC[1]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => inputA(15),
      I1 => inputB(15),
      O => \outputC[1]_INST_0_i_7_n_0\
    );
\outputC[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(12),
      I1 => inputA(12),
      I2 => inputA(14),
      I3 => inputB(14),
      I4 => inputA(13),
      I5 => inputB(13),
      O => \outputC[1]_INST_0_i_8_n_0\
    );
\outputC[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => inputB(9),
      I1 => inputA(9),
      I2 => inputA(11),
      I3 => inputB(11),
      I4 => inputA(10),
      I5 => inputB(10),
      O => \outputC[1]_INST_0_i_9_n_0\
    );
\outputC[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(2),
      I1 => inputA(2),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[2]_INST_0_i_1_n_0\
    );
\outputC[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inputA(2),
      I1 => inputB(2),
      O => \and_out__15\(2)
    );
\outputC[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(3),
      I1 => inputA(3),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[3]_INST_0_i_1_n_0\
    );
\outputC[3]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => op_xor,
      I1 => op_nand,
      I2 => op_or,
      O => \outputC[3]_INST_0_i_2_n_0\
    );
\outputC[3]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inputA(3),
      I1 => inputB(3),
      O => \and_out__15\(3)
    );
\outputC[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(4),
      I1 => inputA(4),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[4]_INST_0_i_1_n_0\
    );
\outputC[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(3),
      I3 => inputA(5),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[4]_INST_0_i_2_n_0\
    );
\outputC[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(5),
      I1 => inputA(5),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[5]_INST_0_i_1_n_0\
    );
\outputC[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(4),
      I3 => inputA(6),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[5]_INST_0_i_2_n_0\
    );
\outputC[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(6),
      I1 => inputA(6),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[6]_INST_0_i_1_n_0\
    );
\outputC[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(5),
      I3 => inputA(7),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[6]_INST_0_i_2_n_0\
    );
\outputC[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(7),
      I1 => inputA(7),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[7]_INST_0_i_1_n_0\
    );
\outputC[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(6),
      I3 => inputA(8),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[7]_INST_0_i_2_n_0\
    );
\outputC[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(8),
      I1 => inputA(8),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[8]_INST_0_i_1_n_0\
    );
\outputC[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(7),
      I3 => inputA(9),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[8]_INST_0_i_2_n_0\
    );
\outputC[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E6E6E7E0"
    )
        port map (
      I0 => inputB(9),
      I1 => inputA(9),
      I2 => op_or,
      I3 => op_nand,
      I4 => op_xor,
      O => \outputC[9]_INST_0_i_1_n_0\
    );
\outputC[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EC20"
    )
        port map (
      I0 => op_asl,
      I1 => op_asr,
      I2 => inputA(8),
      I3 => inputA(10),
      I4 => \outputC[3]_INST_0_i_2_n_0\,
      O => \outputC[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
