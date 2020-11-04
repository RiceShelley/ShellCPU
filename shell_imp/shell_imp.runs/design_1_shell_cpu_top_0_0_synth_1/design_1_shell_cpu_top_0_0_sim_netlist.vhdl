-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Oct 30 22:03:02 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_shell_cpu_top_0_0_sim_netlist.vhdl
-- Design      : design_1_shell_cpu_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU is
  port (
    data0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sub_out_carry__2_i_7\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmp_out_reg0__7_carry__0_i_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \instruction[9]\ : out STD_LOGIC;
    \instruction[9]_0\ : out STD_LOGIC;
    \instruction[9]_1\ : out STD_LOGIC;
    \instruction[9]_2\ : out STD_LOGIC;
    \instruction[9]_3\ : out STD_LOGIC;
    \instruction[9]_4\ : out STD_LOGIC;
    \instruction[9]_5\ : out STD_LOGIC;
    \instruction[9]_6\ : out STD_LOGIC;
    \instruction[9]_7\ : out STD_LOGIC;
    \instruction[9]_8\ : out STD_LOGIC;
    \instruction[9]_9\ : out STD_LOGIC;
    \instruction[9]_10\ : out STD_LOGIC;
    \instruction[9]_11\ : out STD_LOGIC;
    \instruction[9]_12\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][4]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][4]_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][8]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][8]_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_reg[1][15]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \mem_reg[1][15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][0]_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][0]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][4]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][4]_i_6_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][8]_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][8]_i_6_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][12]_i_6_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \mem[1][12]_i_6_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmp_out_reg0_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmp_out_reg0_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][2]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][2]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmp_out_reg0__7_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmp_out_reg0__7_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][3]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem[1][3]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU is
  signal \add_out_carry__0_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_n_1\ : STD_LOGIC;
  signal \add_out_carry__0_n_2\ : STD_LOGIC;
  signal \add_out_carry__0_n_3\ : STD_LOGIC;
  signal \add_out_carry__1_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_n_1\ : STD_LOGIC;
  signal \add_out_carry__1_n_2\ : STD_LOGIC;
  signal \add_out_carry__1_n_3\ : STD_LOGIC;
  signal \add_out_carry__2_n_1\ : STD_LOGIC;
  signal \add_out_carry__2_n_2\ : STD_LOGIC;
  signal \add_out_carry__2_n_3\ : STD_LOGIC;
  signal add_out_carry_n_0 : STD_LOGIC;
  signal add_out_carry_n_1 : STD_LOGIC;
  signal add_out_carry_n_2 : STD_LOGIC;
  signal add_out_carry_n_3 : STD_LOGIC;
  signal \cmp_out_reg0__7_carry__0_n_1\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry__0_n_2\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry__0_n_3\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_0\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_1\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_2\ : STD_LOGIC;
  signal \cmp_out_reg0__7_carry_n_3\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \cmp_out_reg0_carry__0_n_3\ : STD_LOGIC;
  signal cmp_out_reg0_carry_n_0 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_1 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_2 : STD_LOGIC;
  signal cmp_out_reg0_carry_n_3 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \sub_out_carry__0_n_0\ : STD_LOGIC;
  signal \sub_out_carry__0_n_1\ : STD_LOGIC;
  signal \sub_out_carry__0_n_2\ : STD_LOGIC;
  signal \sub_out_carry__0_n_3\ : STD_LOGIC;
  signal \sub_out_carry__1_n_0\ : STD_LOGIC;
  signal \sub_out_carry__1_n_1\ : STD_LOGIC;
  signal \sub_out_carry__1_n_2\ : STD_LOGIC;
  signal \sub_out_carry__1_n_3\ : STD_LOGIC;
  signal \^sub_out_carry__2_i_7\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sub_out_carry__2_n_1\ : STD_LOGIC;
  signal \sub_out_carry__2_n_2\ : STD_LOGIC;
  signal \sub_out_carry__2_n_3\ : STD_LOGIC;
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
  \sub_out_carry__2_i_7\(4 downto 0) <= \^sub_out_carry__2_i_7\(4 downto 0);
add_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => add_out_carry_n_0,
      CO(2) => add_out_carry_n_1,
      CO(1) => add_out_carry_n_2,
      CO(0) => add_out_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\add_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => add_out_carry_n_0,
      CO(3) => \add_out_carry__0_n_0\,
      CO(2) => \add_out_carry__0_n_1\,
      CO(1) => \add_out_carry__0_n_2\,
      CO(0) => \add_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem[1][4]_i_5\(3 downto 0),
      O(3 downto 0) => data0(7 downto 4),
      S(3 downto 0) => \mem[1][4]_i_5_0\(3 downto 0)
    );
\add_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_out_carry__0_n_0\,
      CO(3) => \add_out_carry__1_n_0\,
      CO(2) => \add_out_carry__1_n_1\,
      CO(1) => \add_out_carry__1_n_2\,
      CO(0) => \add_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem[1][8]_i_5\(3 downto 0),
      O(3 downto 0) => data0(11 downto 8),
      S(3 downto 0) => \mem[1][8]_i_5_0\(3 downto 0)
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
      DI(2 downto 0) => \mem_reg[1][15]\(2 downto 0),
      O(3 downto 0) => data0(15 downto 12),
      S(3 downto 0) => \mem_reg[1][15]_0\(3 downto 0)
    );
\cmp_out_reg0__7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cmp_out_reg0__7_carry_n_0\,
      CO(2) => \cmp_out_reg0__7_carry_n_1\,
      CO(1) => \cmp_out_reg0__7_carry_n_2\,
      CO(0) => \cmp_out_reg0__7_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \cmp_out_reg0__7_carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_cmp_out_reg0__7_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \cmp_out_reg0__7_carry__0_1\(3 downto 0)
    );
\cmp_out_reg0__7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cmp_out_reg0__7_carry_n_0\,
      CO(3) => \cmp_out_reg0__7_carry__0_i_8\(0),
      CO(2) => \cmp_out_reg0__7_carry__0_n_1\,
      CO(1) => \cmp_out_reg0__7_carry__0_n_2\,
      CO(0) => \cmp_out_reg0__7_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem[1][3]_i_3\(3 downto 0),
      O(3 downto 0) => \NLW_cmp_out_reg0__7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \mem[1][3]_i_3_0\(3 downto 0)
    );
cmp_out_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cmp_out_reg0_carry_n_0,
      CO(2) => cmp_out_reg0_carry_n_1,
      CO(1) => cmp_out_reg0_carry_n_2,
      CO(0) => cmp_out_reg0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \cmp_out_reg0_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_cmp_out_reg0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \cmp_out_reg0_carry__0_1\(3 downto 0)
    );
\cmp_out_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cmp_out_reg0_carry_n_0,
      CO(3) => CO(0),
      CO(2) => \cmp_out_reg0_carry__0_n_1\,
      CO(1) => \cmp_out_reg0_carry__0_n_2\,
      CO(0) => \cmp_out_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem[1][2]_i_3\(3 downto 0),
      O(3 downto 0) => \NLW_cmp_out_reg0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \mem[1][2]_i_3_0\(3 downto 0)
    );
\mem[1][10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(10),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_8\
    );
\mem[1][11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(11),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_9\
    );
\mem[1][12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(12),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_10\
    );
\mem[1][13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(13),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_11\
    );
\mem[1][14]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(14),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_12\
    );
\mem[1][1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^sub_out_carry__2_i_7\(1),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]\
    );
\mem[1][2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^sub_out_carry__2_i_7\(2),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_0\
    );
\mem[1][3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^sub_out_carry__2_i_7\(3),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_1\
    );
\mem[1][4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(4),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_2\
    );
\mem[1][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(5),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_3\
    );
\mem[1][6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(6),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_4\
    );
\mem[1][7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(7),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_5\
    );
\mem[1][8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(8),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_6\
    );
\mem[1][9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => data1(9),
      I1 => instruction(0),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(2),
      O => \instruction[9]_7\
    );
sub_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sub_out_carry_n_0,
      CO(2) => sub_out_carry_n_1,
      CO(1) => sub_out_carry_n_2,
      CO(0) => sub_out_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \mem[1][0]_i_4\(3 downto 0),
      O(3 downto 0) => \^sub_out_carry__2_i_7\(3 downto 0),
      S(3 downto 0) => \mem[1][0]_i_4_0\(3 downto 0)
    );
\sub_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sub_out_carry_n_0,
      CO(3) => \sub_out_carry__0_n_0\,
      CO(2) => \sub_out_carry__0_n_1\,
      CO(1) => \sub_out_carry__0_n_2\,
      CO(0) => \sub_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem[1][4]_i_6_0\(3 downto 0),
      O(3 downto 0) => data1(7 downto 4),
      S(3 downto 0) => \mem[1][4]_i_6_1\(3 downto 0)
    );
\sub_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sub_out_carry__0_n_0\,
      CO(3) => \sub_out_carry__1_n_0\,
      CO(2) => \sub_out_carry__1_n_1\,
      CO(1) => \sub_out_carry__1_n_2\,
      CO(0) => \sub_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem[1][8]_i_6_0\(3 downto 0),
      O(3 downto 0) => data1(11 downto 8),
      S(3 downto 0) => \mem[1][8]_i_6_1\(3 downto 0)
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
      DI(2 downto 0) => \mem[1][12]_i_6_0\(2 downto 0),
      O(3) => \^sub_out_carry__2_i_7\(4),
      O(2 downto 0) => data1(14 downto 12),
      S(3 downto 0) => \mem[1][12]_i_6_1\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  port (
    b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \pc[3]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc[7]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ins_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pc[11]_i_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc[15]_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal \c_carry__0_n_0\ : STD_LOGIC;
  signal \c_carry__0_n_1\ : STD_LOGIC;
  signal \c_carry__0_n_2\ : STD_LOGIC;
  signal \c_carry__0_n_3\ : STD_LOGIC;
  signal \c_carry__1_n_0\ : STD_LOGIC;
  signal \c_carry__1_n_1\ : STD_LOGIC;
  signal \c_carry__1_n_2\ : STD_LOGIC;
  signal \c_carry__1_n_3\ : STD_LOGIC;
  signal \c_carry__2_n_1\ : STD_LOGIC;
  signal \c_carry__2_n_2\ : STD_LOGIC;
  signal \c_carry__2_n_3\ : STD_LOGIC;
  signal c_carry_n_0 : STD_LOGIC;
  signal c_carry_n_1 : STD_LOGIC;
  signal c_carry_n_2 : STD_LOGIC;
  signal c_carry_n_3 : STD_LOGIC;
  signal \NLW_c_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
c_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c_carry_n_0,
      CO(2) => c_carry_n_1,
      CO(1) => c_carry_n_2,
      CO(0) => c_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => instruction(3 downto 0),
      O(3 downto 0) => b(3 downto 0),
      S(3 downto 0) => \pc[3]_i_6\(3 downto 0)
    );
\c_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => c_carry_n_0,
      CO(3) => \c_carry__0_n_0\,
      CO(2) => \c_carry__0_n_1\,
      CO(1) => \c_carry__0_n_2\,
      CO(0) => \c_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => instruction(7 downto 4),
      O(3 downto 0) => b(7 downto 4),
      S(3 downto 0) => \pc[7]_i_5\(3 downto 0)
    );
\c_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_carry__0_n_0\,
      CO(3) => \c_carry__1_n_0\,
      CO(2) => \c_carry__1_n_1\,
      CO(1) => \c_carry__1_n_2\,
      CO(0) => \c_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => ins_addr(0),
      DI(2) => DI(0),
      DI(1 downto 0) => instruction(9 downto 8),
      O(3 downto 0) => b(11 downto 8),
      S(3 downto 0) => \pc[11]_i_5\(3 downto 0)
    );
\c_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_carry__1_n_0\,
      CO(3) => \NLW_c_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \c_carry__2_n_1\,
      CO(1) => \c_carry__2_n_2\,
      CO(0) => \c_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => ins_addr(3 downto 1),
      O(3 downto 0) => b(15 downto 12),
      S(3 downto 0) => \pc[15]_i_6\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    next_ins_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \mem[1][1]_i_2\ : in STD_LOGIC;
    ins_addr : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "adder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  signal \c_carry__0_n_0\ : STD_LOGIC;
  signal \c_carry__0_n_1\ : STD_LOGIC;
  signal \c_carry__0_n_2\ : STD_LOGIC;
  signal \c_carry__0_n_3\ : STD_LOGIC;
  signal \c_carry__1_n_0\ : STD_LOGIC;
  signal \c_carry__1_n_1\ : STD_LOGIC;
  signal \c_carry__1_n_2\ : STD_LOGIC;
  signal \c_carry__1_n_3\ : STD_LOGIC;
  signal \c_carry__2_n_2\ : STD_LOGIC;
  signal \c_carry__2_n_3\ : STD_LOGIC;
  signal c_carry_n_0 : STD_LOGIC;
  signal c_carry_n_1 : STD_LOGIC;
  signal c_carry_n_2 : STD_LOGIC;
  signal c_carry_n_3 : STD_LOGIC;
  signal \NLW_c_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_c_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
c_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c_carry_n_0,
      CO(2) => c_carry_n_1,
      CO(1) => c_carry_n_2,
      CO(0) => c_carry_n_3,
      CYINIT => \mem[1][1]_i_2\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_ins_addr(3 downto 0),
      S(3 downto 0) => ins_addr(3 downto 0)
    );
\c_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => c_carry_n_0,
      CO(3) => \c_carry__0_n_0\,
      CO(2) => \c_carry__0_n_1\,
      CO(1) => \c_carry__0_n_2\,
      CO(0) => \c_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_ins_addr(7 downto 4),
      S(3 downto 0) => ins_addr(7 downto 4)
    );
\c_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_carry__0_n_0\,
      CO(3) => \c_carry__1_n_0\,
      CO(2) => \c_carry__1_n_1\,
      CO(1) => \c_carry__1_n_2\,
      CO(0) => \c_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_ins_addr(11 downto 8),
      S(3 downto 0) => ins_addr(11 downto 8)
    );
\c_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_carry__1_n_0\,
      CO(3 downto 2) => \NLW_c_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \c_carry__2_n_2\,
      CO(0) => \c_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_c_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => next_ins_addr(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => ins_addr(14 downto 12)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmp_status_reg is
  port (
    \instruction[13]\ : out STD_LOGIC;
    \instruction[11]\ : out STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \cmp_status_reg[0]_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \cmp_status_reg[3]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \cmp_status_reg[2]_0\ : in STD_LOGIC;
    \cmp_status_reg[1]_0\ : in STD_LOGIC;
    \cmp_status_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmp_status_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmp_status_reg is
  signal \cmp_status[3]_i_1_n_0\ : STD_LOGIC;
  signal cmp_status_reg_eq_sig : STD_LOGIC;
  signal cmp_status_reg_gt_sig : STD_LOGIC;
  signal cmp_status_reg_lt_sig : STD_LOGIC;
  signal cmp_status_reg_ne_sig : STD_LOGIC;
  signal \pc[3]_i_7_n_0\ : STD_LOGIC;
  signal \pc[3]_i_8_n_0\ : STD_LOGIC;
begin
\cmp_status[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cmp_status_reg[0]_0\,
      I1 => instruction(5),
      I2 => instruction(4),
      O => \cmp_status[3]_i_1_n_0\
    );
\cmp_status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cmp_status[3]_i_1_n_0\,
      D => \cmp_status_reg[0]_1\,
      Q => cmp_status_reg_eq_sig,
      R => rst
    );
\cmp_status_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cmp_status[3]_i_1_n_0\,
      D => \cmp_status_reg[1]_0\,
      Q => cmp_status_reg_ne_sig,
      R => rst
    );
\cmp_status_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cmp_status[3]_i_1_n_0\,
      D => \cmp_status_reg[2]_0\,
      Q => cmp_status_reg_gt_sig,
      R => rst
    );
\cmp_status_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cmp_status[3]_i_1_n_0\,
      D => \cmp_status_reg[3]_0\,
      Q => cmp_status_reg_lt_sig,
      R => rst
    );
\mem[1][15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(1),
      I2 => instruction(6),
      I3 => instruction(0),
      O => \instruction[11]\
    );
\pc[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF44F"
    )
        port map (
      I0 => \pc[3]_i_7_n_0\,
      I1 => \pc[3]_i_8_n_0\,
      I2 => instruction(4),
      I3 => instruction(5),
      I4 => instruction(6),
      O => \instruction[13]\
    );
\pc[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => cmp_status_reg_lt_sig,
      I1 => instruction(2),
      I2 => instruction(3),
      I3 => cmp_status_reg_gt_sig,
      O => \pc[3]_i_7_n_0\
    );
\pc[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30313331"
    )
        port map (
      I0 => cmp_status_reg_eq_sig,
      I1 => instruction(5),
      I2 => instruction(3),
      I3 => instruction(2),
      I4 => cmp_status_reg_ne_sig,
      O => \pc[3]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prog_cnt_reg is
  port (
    \pc_reg[0]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[15]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pc_reg[0]_1\ : out STD_LOGIC;
    data_mem_1_sp_1 : out STD_LOGIC;
    from_stack_2_sp_1 : out STD_LOGIC;
    from_stack_3_sp_1 : out STD_LOGIC;
    data_mem_4_sp_1 : out STD_LOGIC;
    from_stack_5_sp_1 : out STD_LOGIC;
    data_mem_6_sp_1 : out STD_LOGIC;
    from_stack_7_sp_1 : out STD_LOGIC;
    data_mem_8_sp_1 : out STD_LOGIC;
    data_mem_9_sp_1 : out STD_LOGIC;
    data_mem_10_sp_1 : out STD_LOGIC;
    from_stack_11_sp_1 : out STD_LOGIC;
    from_stack_12_sp_1 : out STD_LOGIC;
    from_stack_13_sp_1 : out STD_LOGIC;
    data_mem_14_sp_1 : out STD_LOGIC;
    data_mem_15_sp_1 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \instruction[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[10]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \pc_reg[3]_0\ : in STD_LOGIC;
    \pc_reg[3]_1\ : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \pc_reg[3]_2\ : in STD_LOGIC;
    \pc_reg[3]_3\ : in STD_LOGIC;
    \pc_reg[7]_0\ : in STD_LOGIC;
    \pc_reg[7]_1\ : in STD_LOGIC;
    \pc_reg[7]_2\ : in STD_LOGIC;
    \pc_reg[7]_3\ : in STD_LOGIC;
    \pc_reg[11]_0\ : in STD_LOGIC;
    \pc_reg[11]_1\ : in STD_LOGIC;
    \pc_reg[11]_2\ : in STD_LOGIC;
    \pc_reg[11]_3\ : in STD_LOGIC;
    \pc_reg[15]_1\ : in STD_LOGIC;
    \pc_reg[15]_2\ : in STD_LOGIC;
    \pc_reg[15]_3\ : in STD_LOGIC;
    \pc_reg[15]_4\ : in STD_LOGIC;
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    next_ins_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \pc_reg[3]_4\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prog_cnt_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prog_cnt_reg is
  signal \^s\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_mem_10_sn_1 : STD_LOGIC;
  signal data_mem_14_sn_1 : STD_LOGIC;
  signal data_mem_15_sn_1 : STD_LOGIC;
  signal data_mem_1_sn_1 : STD_LOGIC;
  signal data_mem_4_sn_1 : STD_LOGIC;
  signal data_mem_6_sn_1 : STD_LOGIC;
  signal data_mem_8_sn_1 : STD_LOGIC;
  signal data_mem_9_sn_1 : STD_LOGIC;
  signal from_stack_11_sn_1 : STD_LOGIC;
  signal from_stack_12_sn_1 : STD_LOGIC;
  signal from_stack_13_sn_1 : STD_LOGIC;
  signal from_stack_2_sn_1 : STD_LOGIC;
  signal from_stack_3_sn_1 : STD_LOGIC;
  signal from_stack_5_sn_1 : STD_LOGIC;
  signal from_stack_7_sn_1 : STD_LOGIC;
  signal \pc[11]_i_2_n_0\ : STD_LOGIC;
  signal \pc[11]_i_3_n_0\ : STD_LOGIC;
  signal \pc[11]_i_4_n_0\ : STD_LOGIC;
  signal \pc[11]_i_5_n_0\ : STD_LOGIC;
  signal \pc[15]_i_1_n_0\ : STD_LOGIC;
  signal \pc[15]_i_3_n_0\ : STD_LOGIC;
  signal \pc[15]_i_4_n_0\ : STD_LOGIC;
  signal \pc[15]_i_5_n_0\ : STD_LOGIC;
  signal \pc[15]_i_6_n_0\ : STD_LOGIC;
  signal \pc[3]_i_3_n_0\ : STD_LOGIC;
  signal \pc[3]_i_4_n_0\ : STD_LOGIC;
  signal \pc[3]_i_5_n_0\ : STD_LOGIC;
  signal \pc[3]_i_6_n_0\ : STD_LOGIC;
  signal \pc[7]_i_2_n_0\ : STD_LOGIC;
  signal \pc[7]_i_3_n_0\ : STD_LOGIC;
  signal \pc[7]_i_4_n_0\ : STD_LOGIC;
  signal \pc[7]_i_5_n_0\ : STD_LOGIC;
  signal \^pc_reg[0]_0\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \^pc_reg[12]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^pc_reg[15]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal \^pc_reg[8]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pc_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  S(3 downto 0) <= \^s\(3 downto 0);
  data_mem_10_sp_1 <= data_mem_10_sn_1;
  data_mem_14_sp_1 <= data_mem_14_sn_1;
  data_mem_15_sp_1 <= data_mem_15_sn_1;
  data_mem_1_sp_1 <= data_mem_1_sn_1;
  data_mem_4_sp_1 <= data_mem_4_sn_1;
  data_mem_6_sp_1 <= data_mem_6_sn_1;
  data_mem_8_sp_1 <= data_mem_8_sn_1;
  data_mem_9_sp_1 <= data_mem_9_sn_1;
  from_stack_11_sp_1 <= from_stack_11_sn_1;
  from_stack_12_sp_1 <= from_stack_12_sn_1;
  from_stack_13_sp_1 <= from_stack_13_sn_1;
  from_stack_2_sp_1 <= from_stack_2_sn_1;
  from_stack_3_sp_1 <= from_stack_3_sn_1;
  from_stack_5_sp_1 <= from_stack_5_sn_1;
  from_stack_7_sp_1 <= from_stack_7_sn_1;
  \pc_reg[0]_0\ <= \^pc_reg[0]_0\;
  \pc_reg[12]_0\(3 downto 0) <= \^pc_reg[12]_0\(3 downto 0);
  \pc_reg[15]_0\(2 downto 0) <= \^pc_reg[15]_0\(2 downto 0);
  \pc_reg[8]_0\(3 downto 0) <= \^pc_reg[8]_0\(3 downto 0);
\c_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(7),
      I1 => \^pc_reg[8]_0\(2),
      O => \instruction[7]\(3)
    );
\c_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(6),
      I1 => \^pc_reg[8]_0\(1),
      O => \instruction[7]\(2)
    );
\c_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(5),
      I1 => \^pc_reg[8]_0\(0),
      O => \instruction[7]\(1)
    );
\c_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(4),
      I1 => \^s\(3),
      O => \instruction[7]\(0)
    );
\c_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => instruction(10),
      O => DI(0)
    );
\c_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^pc_reg[12]_0\(1),
      I1 => \^pc_reg[12]_0\(2),
      O => \pc_reg[10]_0\(3)
    );
\c_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pc_reg[12]_0\(1),
      I1 => instruction(10),
      O => \pc_reg[10]_0\(2)
    );
\c_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(9),
      I1 => \^pc_reg[12]_0\(0),
      O => \pc_reg[10]_0\(1)
    );
\c_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(8),
      I1 => \^pc_reg[8]_0\(3),
      O => \pc_reg[10]_0\(0)
    );
\c_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^pc_reg[15]_0\(1),
      I1 => \^pc_reg[15]_0\(2),
      O => \pc_reg[14]_0\(3)
    );
\c_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^pc_reg[15]_0\(0),
      I1 => \^pc_reg[15]_0\(1),
      O => \pc_reg[14]_0\(2)
    );
\c_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^pc_reg[12]_0\(3),
      I1 => \^pc_reg[15]_0\(0),
      O => \pc_reg[14]_0\(1)
    );
\c_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^pc_reg[12]_0\(2),
      I1 => \^pc_reg[12]_0\(3),
      O => \pc_reg[14]_0\(0)
    );
c_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(3),
      I1 => \^s\(2),
      O => \instruction[3]\(3)
    );
c_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(2),
      I1 => \^s\(1),
      O => \instruction[3]\(2)
    );
c_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(1),
      I1 => \^s\(0),
      O => \instruction[3]\(1)
    );
c_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(0),
      I1 => \^pc_reg[0]_0\,
      O => \instruction[3]\(0)
    );
\mem[1][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF000050C0000050"
    )
        port map (
      I0 => \^pc_reg[0]_0\,
      I1 => from_stack(0),
      I2 => instruction(12),
      I3 => instruction(13),
      I4 => instruction(11),
      I5 => data_mem(0),
      O => \pc_reg[0]_1\
    );
\mem[1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA0000F0CA000000"
    )
        port map (
      I0 => data_mem(10),
      I1 => from_stack(10),
      I2 => instruction(12),
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => next_ins_addr(9),
      O => data_mem_10_sn_1
    );
\mem[1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0000A0C00000A0"
    )
        port map (
      I0 => next_ins_addr(10),
      I1 => from_stack(11),
      I2 => instruction(12),
      I3 => instruction(13),
      I4 => instruction(11),
      I5 => data_mem(11),
      O => from_stack_11_sn_1
    );
\mem[1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00FC000A000C000"
    )
        port map (
      I0 => from_stack(12),
      I1 => data_mem(12),
      I2 => instruction(11),
      I3 => instruction(13),
      I4 => instruction(12),
      I5 => next_ins_addr(11),
      O => from_stack_12_sn_1
    );
\mem[1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0000C0A00000C0"
    )
        port map (
      I0 => from_stack(13),
      I1 => next_ins_addr(12),
      I2 => instruction(12),
      I3 => instruction(13),
      I4 => instruction(11),
      I5 => data_mem(13),
      O => from_stack_13_sn_1
    );
\mem[1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA0000F0CA000000"
    )
        port map (
      I0 => data_mem(14),
      I1 => from_stack(14),
      I2 => instruction(12),
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => next_ins_addr(13),
      O => data_mem_14_sn_1
    );
\mem[1][15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA0000F0CA000000"
    )
        port map (
      I0 => data_mem(15),
      I1 => from_stack(15),
      I2 => instruction(12),
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => next_ins_addr(14),
      O => data_mem_15_sn_1
    );
\mem[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00AC000000AC000"
    )
        port map (
      I0 => next_ins_addr(0),
      I1 => data_mem(1),
      I2 => instruction(11),
      I3 => instruction(13),
      I4 => instruction(12),
      I5 => from_stack(1),
      O => data_mem_1_sn_1
    );
\mem[1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00FC000A000C000"
    )
        port map (
      I0 => from_stack(2),
      I1 => data_mem(2),
      I2 => instruction(11),
      I3 => instruction(13),
      I4 => instruction(12),
      I5 => next_ins_addr(1),
      O => from_stack_2_sn_1
    );
\mem[1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0000C0A00000C0"
    )
        port map (
      I0 => from_stack(3),
      I1 => next_ins_addr(2),
      I2 => instruction(12),
      I3 => instruction(13),
      I4 => instruction(11),
      I5 => data_mem(3),
      O => from_stack_3_sn_1
    );
\mem[1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A00C0000A00C00"
    )
        port map (
      I0 => data_mem(4),
      I1 => next_ins_addr(3),
      I2 => instruction(13),
      I3 => instruction(12),
      I4 => instruction(11),
      I5 => from_stack(4),
      O => data_mem_4_sn_1
    );
\mem[1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0000A0C00000A0"
    )
        port map (
      I0 => next_ins_addr(4),
      I1 => from_stack(5),
      I2 => instruction(12),
      I3 => instruction(13),
      I4 => instruction(11),
      I5 => data_mem(5),
      O => from_stack_5_sn_1
    );
\mem[1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A00C0000A00C00"
    )
        port map (
      I0 => data_mem(6),
      I1 => next_ins_addr(5),
      I2 => instruction(13),
      I3 => instruction(12),
      I4 => instruction(11),
      I5 => from_stack(6),
      O => data_mem_6_sn_1
    );
\mem[1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0000C0A00000C0"
    )
        port map (
      I0 => from_stack(7),
      I1 => next_ins_addr(6),
      I2 => instruction(12),
      I3 => instruction(13),
      I4 => instruction(11),
      I5 => data_mem(7),
      O => from_stack_7_sn_1
    );
\mem[1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA0000F0CA000000"
    )
        port map (
      I0 => data_mem(8),
      I1 => from_stack(8),
      I2 => instruction(12),
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => next_ins_addr(7),
      O => data_mem_8_sn_1
    );
\mem[1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A00C0000A00C00"
    )
        port map (
      I0 => data_mem(9),
      I1 => next_ins_addr(8),
      I2 => instruction(13),
      I3 => instruction(12),
      I4 => instruction(11),
      I5 => from_stack(9),
      O => data_mem_9_sn_1
    );
\pc[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^pc_reg[12]_0\(2),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[11]_3\,
      I3 => instruction(12),
      I4 => b(11),
      O => \pc[11]_i_2_n_0\
    );
\pc[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^pc_reg[12]_0\(1),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[11]_2\,
      I3 => instruction(12),
      I4 => b(10),
      O => \pc[11]_i_3_n_0\
    );
\pc[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^pc_reg[12]_0\(0),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[11]_1\,
      I3 => instruction(12),
      I4 => b(9),
      O => \pc[11]_i_4_n_0\
    );
\pc[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^pc_reg[8]_0\(3),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[11]_0\,
      I3 => instruction(12),
      I4 => b(8),
      O => \pc[11]_i_5_n_0\
    );
\pc[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(12),
      I2 => instruction(11),
      O => \pc[15]_i_1_n_0\
    );
\pc[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^pc_reg[15]_0\(2),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[15]_4\,
      I3 => instruction(12),
      I4 => b(15),
      O => \pc[15]_i_3_n_0\
    );
\pc[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^pc_reg[15]_0\(1),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[15]_3\,
      I3 => instruction(12),
      I4 => b(14),
      O => \pc[15]_i_4_n_0\
    );
\pc[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^pc_reg[15]_0\(0),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[15]_2\,
      I3 => instruction(12),
      I4 => b(13),
      O => \pc[15]_i_5_n_0\
    );
\pc[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^pc_reg[12]_0\(3),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[15]_1\,
      I3 => instruction(12),
      I4 => b(12),
      O => \pc[15]_i_6_n_0\
    );
\pc[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^s\(2),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[3]_3\,
      I3 => instruction(12),
      I4 => b(3),
      O => \pc[3]_i_3_n_0\
    );
\pc[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^s\(1),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[3]_2\,
      I3 => instruction(12),
      I4 => b(2),
      O => \pc[3]_i_4_n_0\
    );
\pc[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^s\(0),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[3]_1\,
      I3 => instruction(12),
      I4 => b(1),
      O => \pc[3]_i_5_n_0\
    );
\pc[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF2E2E"
    )
        port map (
      I0 => b(0),
      I1 => instruction(12),
      I2 => \pc_reg[3]_4\,
      I3 => \^pc_reg[0]_0\,
      I4 => \pc_reg[3]_0\,
      O => \pc[3]_i_6_n_0\
    );
\pc[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^pc_reg[8]_0\(2),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[7]_3\,
      I3 => instruction(12),
      I4 => b(7),
      O => \pc[7]_i_2_n_0\
    );
\pc[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^pc_reg[8]_0\(1),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[7]_2\,
      I3 => instruction(12),
      I4 => b(6),
      O => \pc[7]_i_3_n_0\
    );
\pc[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^pc_reg[8]_0\(0),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[7]_1\,
      I3 => instruction(12),
      I4 => b(5),
      O => \pc[7]_i_4_n_0\
    );
\pc[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \^s\(3),
      I1 => \pc_reg[3]_0\,
      I2 => \pc_reg[7]_0\,
      I3 => instruction(12),
      I4 => b(4),
      O => \pc[7]_i_5_n_0\
    );
\pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[3]_i_1_n_7\,
      Q => \^pc_reg[0]_0\
    );
\pc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[11]_i_1_n_5\,
      Q => \^pc_reg[12]_0\(1)
    );
\pc_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[11]_i_1_n_4\,
      Q => \^pc_reg[12]_0\(2)
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
\pc_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[15]_i_2_n_7\,
      Q => \^pc_reg[12]_0\(3)
    );
\pc_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[15]_i_2_n_6\,
      Q => \^pc_reg[15]_0\(0)
    );
\pc_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[15]_i_2_n_5\,
      Q => \^pc_reg[15]_0\(1)
    );
\pc_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[15]_i_2_n_4\,
      Q => \^pc_reg[15]_0\(2)
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
\pc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[3]_i_1_n_6\,
      Q => \^s\(0)
    );
\pc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[3]_i_1_n_5\,
      Q => \^s\(1)
    );
\pc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[3]_i_1_n_4\,
      Q => \^s\(2)
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
      DI(0) => \pc_reg[3]_0\,
      O(3) => \pc_reg[3]_i_1_n_4\,
      O(2) => \pc_reg[3]_i_1_n_5\,
      O(1) => \pc_reg[3]_i_1_n_6\,
      O(0) => \pc_reg[3]_i_1_n_7\,
      S(3) => \pc[3]_i_3_n_0\,
      S(2) => \pc[3]_i_4_n_0\,
      S(1) => \pc[3]_i_5_n_0\,
      S(0) => \pc[3]_i_6_n_0\
    );
\pc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[7]_i_1_n_7\,
      Q => \^s\(3)
    );
\pc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[7]_i_1_n_6\,
      Q => \^pc_reg[8]_0\(0)
    );
\pc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[7]_i_1_n_5\,
      Q => \^pc_reg[8]_0\(1)
    );
\pc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[7]_i_1_n_4\,
      Q => \^pc_reg[8]_0\(2)
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
\pc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[11]_i_1_n_7\,
      Q => \^pc_reg[8]_0\(3)
    );
\pc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      CLR => rst,
      D => \pc_reg[11]_i_1_n_6\,
      Q => \^pc_reg[12]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_file is
  port (
    instruction_10_sp_1 : out STD_LOGIC;
    instruction_8_sp_1 : out STD_LOGIC;
    \instruction[8]_0\ : out STD_LOGIC;
    instruction_12_sp_1 : out STD_LOGIC;
    instruction_9_sp_1 : out STD_LOGIC;
    \instruction[8]_1\ : out STD_LOGIC;
    \instruction[9]_0\ : out STD_LOGIC;
    \mem_reg[1][3]_0\ : out STD_LOGIC;
    \instruction[9]_1\ : out STD_LOGIC;
    \instruction[8]_2\ : out STD_LOGIC;
    \instruction[8]_3\ : out STD_LOGIC;
    \mem_reg[1][6]_0\ : out STD_LOGIC;
    \mem_reg[1][7]_0\ : out STD_LOGIC;
    \mem_reg[1][8]_0\ : out STD_LOGIC;
    \mem_reg[1][9]_0\ : out STD_LOGIC;
    \instruction[8]_4\ : out STD_LOGIC;
    \instruction[8]_5\ : out STD_LOGIC;
    \instruction[8]_6\ : out STD_LOGIC;
    \instruction[8]_7\ : out STD_LOGIC;
    \instruction[8]_8\ : out STD_LOGIC;
    \instruction[8]_9\ : out STD_LOGIC;
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \instruction[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[12]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_reg[1][7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \regA[11]_INST_0_i_1_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \regA[14]_INST_0_i_1_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \mem_reg[1][3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_reg[1][7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \regA[11]_INST_0_i_1_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \regA[14]_INST_0_i_1_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \instruction[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[12]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[4]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[4]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[12]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[12]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction[12]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[1][3]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[1][0]_0\ : in STD_LOGIC;
    \mem_reg[1][15]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \mem_reg[1][1]_0\ : in STD_LOGIC;
    \mem_reg[1][2]_0\ : in STD_LOGIC;
    \mem_reg[1][3]_3\ : in STD_LOGIC;
    \mem_reg[1][4]_0\ : in STD_LOGIC;
    \mem_reg[1][5]_0\ : in STD_LOGIC;
    \mem_reg[1][6]_1\ : in STD_LOGIC;
    \mem_reg[1][7]_3\ : in STD_LOGIC;
    \mem_reg[1][8]_1\ : in STD_LOGIC;
    \mem_reg[1][9]_1\ : in STD_LOGIC;
    \mem_reg[1][10]_0\ : in STD_LOGIC;
    \mem_reg[1][11]_0\ : in STD_LOGIC;
    \mem_reg[1][12]_0\ : in STD_LOGIC;
    \mem_reg[1][13]_0\ : in STD_LOGIC;
    \mem_reg[1][14]_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \mem_reg[6][0]_0\ : in STD_LOGIC;
    \sp_reg_reg[0]\ : in STD_LOGIC;
    \sp_reg_reg[0]_0\ : in STD_LOGIC;
    stack_ptr : in STD_LOGIC_VECTOR ( 0 to 0 );
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \mem_reg[1][0]_1\ : in STD_LOGIC;
    \mem_reg[1][1]_1\ : in STD_LOGIC;
    \mem_reg[1][2]_1\ : in STD_LOGIC;
    \mem_reg[1][3]_4\ : in STD_LOGIC;
    \mem_reg[1][4]_1\ : in STD_LOGIC;
    \mem_reg[1][5]_1\ : in STD_LOGIC;
    \mem_reg[1][6]_2\ : in STD_LOGIC;
    \mem_reg[1][7]_4\ : in STD_LOGIC;
    \mem_reg[1][8]_2\ : in STD_LOGIC;
    \mem_reg[1][9]_2\ : in STD_LOGIC;
    \mem_reg[1][10]_1\ : in STD_LOGIC;
    \mem_reg[1][11]_1\ : in STD_LOGIC;
    \mem_reg[1][12]_1\ : in STD_LOGIC;
    \mem_reg[1][13]_1\ : in STD_LOGIC;
    \mem_reg[1][14]_1\ : in STD_LOGIC;
    \mem_reg[1][15]_1\ : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_file;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_file is
  signal \add_out_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \add_out_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \add_out_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \add_out_carry__2_i_9_n_0\ : STD_LOGIC;
  signal add_out_carry_i_10_n_0 : STD_LOGIC;
  signal add_out_carry_i_11_n_0 : STD_LOGIC;
  signal add_out_carry_i_13_n_0 : STD_LOGIC;
  signal add_out_carry_i_9_n_0 : STD_LOGIC;
  signal \cmp_status[0]_i_10_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_11_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_12_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_13_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_2_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_3_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_4_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_5_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_8_n_0\ : STD_LOGIC;
  signal \cmp_status[0]_i_9_n_0\ : STD_LOGIC;
  signal \cmp_status[1]_i_2_n_0\ : STD_LOGIC;
  signal \cmp_status[2]_i_2_n_0\ : STD_LOGIC;
  signal \cmp_status[3]_i_4_n_0\ : STD_LOGIC;
  signal \cmp_status_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \cmp_status_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \cmp_status_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \cmp_status_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \cmp_status_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \cmp_status_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \^instruction[8]_0\ : STD_LOGIC;
  signal \^instruction[8]_1\ : STD_LOGIC;
  signal \^instruction[8]_2\ : STD_LOGIC;
  signal \^instruction[8]_3\ : STD_LOGIC;
  signal \^instruction[8]_4\ : STD_LOGIC;
  signal \^instruction[8]_5\ : STD_LOGIC;
  signal \^instruction[8]_6\ : STD_LOGIC;
  signal \^instruction[8]_7\ : STD_LOGIC;
  signal \^instruction[8]_8\ : STD_LOGIC;
  signal \^instruction[8]_9\ : STD_LOGIC;
  signal instruction_10_sn_1 : STD_LOGIC;
  signal instruction_12_sn_1 : STD_LOGIC;
  signal instruction_8_sn_1 : STD_LOGIC;
  signal instruction_9_sn_1 : STD_LOGIC;
  signal \mem[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][10]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][10]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][10]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][10]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][11]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][11]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][11]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][11]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][12]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][12]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][12]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][12]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][13]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][13]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][13]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][13]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_6_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_7_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_8_n_0\ : STD_LOGIC;
  signal \mem[1][14]_i_9_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_10_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_11_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_12_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_13_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_15_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_2_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_6_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_7_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_8_n_0\ : STD_LOGIC;
  signal \mem[1][15]_i_9_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_10_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_11_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_12_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_13_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_14_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][1]_i_9_n_0\ : STD_LOGIC;
  signal \mem[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][2]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][2]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][3]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][4]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][4]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][4]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][5]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][5]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][5]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][6]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][6]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][6]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][7]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][8]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][8]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][8]_i_5_n_0\ : STD_LOGIC;
  signal \mem[1][9]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1][9]_i_3_n_0\ : STD_LOGIC;
  signal \mem[1][9]_i_4_n_0\ : STD_LOGIC;
  signal \mem[1][9]_i_5_n_0\ : STD_LOGIC;
  signal \mem[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[4][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[5][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[6][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[7][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[1][15]_i_5_n_0\ : STD_LOGIC;
  signal \mem_reg[1][1]_i_6_n_2\ : STD_LOGIC;
  signal \mem_reg[1][1]_i_6_n_3\ : STD_LOGIC;
  signal \mem_reg[1][1]_i_8_n_0\ : STD_LOGIC;
  signal \mem_reg[1][1]_i_8_n_1\ : STD_LOGIC;
  signal \mem_reg[1][1]_i_8_n_2\ : STD_LOGIC;
  signal \mem_reg[1][1]_i_8_n_3\ : STD_LOGIC;
  signal \^mem_reg[1][3]_0\ : STD_LOGIC;
  signal \^mem_reg[1][6]_0\ : STD_LOGIC;
  signal \^mem_reg[1][7]_0\ : STD_LOGIC;
  signal \^mem_reg[1][8]_0\ : STD_LOGIC;
  signal \^mem_reg[1][9]_0\ : STD_LOGIC;
  signal \mem_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[6]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[7]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mux_2_to_1_1_c : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \outvalue[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outvalue[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outvalue[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \regA[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regA[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \regB[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \regB[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \NLW_cmp_status_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cmp_status_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cmp_status_reg[0]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_reg[1][1]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_mem_reg[1][1]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_reg[1][1]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of add_out_carry_i_13 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cmp_status[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cmp_status[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmp_status[0]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cmp_status[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cmp_status[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem[1][10]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mem[1][10]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem[1][11]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem[1][11]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mem[1][12]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem[1][12]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem[1][13]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mem[1][13]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mem[1][14]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mem[1][14]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mem[1][14]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mem[1][14]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mem[1][15]_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \mem[1][15]_i_15\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mem[1][15]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mem[1][2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem[1][4]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mem[1][4]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mem[1][5]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem[1][6]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mem[1][7]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mem[1][9]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \regA[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \regA[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \regA[11]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \regA[12]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regA[13]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regA[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \regA[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \regA[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \regA[3]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \regA[4]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \regA[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \regA[6]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \regA[8]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \regA[9]_INST_0\ : label is "soft_lutpair19";
begin
  \instruction[8]_0\ <= \^instruction[8]_0\;
  \instruction[8]_1\ <= \^instruction[8]_1\;
  \instruction[8]_2\ <= \^instruction[8]_2\;
  \instruction[8]_3\ <= \^instruction[8]_3\;
  \instruction[8]_4\ <= \^instruction[8]_4\;
  \instruction[8]_5\ <= \^instruction[8]_5\;
  \instruction[8]_6\ <= \^instruction[8]_6\;
  \instruction[8]_7\ <= \^instruction[8]_7\;
  \instruction[8]_8\ <= \^instruction[8]_8\;
  \instruction[8]_9\ <= \^instruction[8]_9\;
  instruction_10_sp_1 <= instruction_10_sn_1;
  instruction_12_sp_1 <= instruction_12_sn_1;
  instruction_8_sp_1 <= instruction_8_sn_1;
  instruction_9_sp_1 <= instruction_9_sn_1;
  \mem_reg[1][3]_0\ <= \^mem_reg[1][3]_0\;
  \mem_reg[1][6]_0\ <= \^mem_reg[1][6]_0\;
  \mem_reg[1][7]_0\ <= \^mem_reg[1][7]_0\;
  \mem_reg[1][8]_0\ <= \^mem_reg[1][8]_0\;
  \mem_reg[1][9]_0\ <= \^mem_reg[1][9]_0\;
\add_out_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[7]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[7]_INST_0_i_2_n_0\,
      O => \mem_reg[1][7]_1\(3)
    );
\add_out_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D000D"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(10),
      I2 => instruction(13),
      I3 => \regB[6]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[6]_INST_0_i_3_n_0\,
      O => mux_2_to_1_1_c(6)
    );
\add_out_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"707F7070707F7F7F"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(5),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[5]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[5]_INST_0_i_1_n_0\,
      O => \add_out_carry__0_i_11_n_0\
    );
\add_out_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"707F7070707F7F7F"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(4),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[4]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[4]_INST_0_i_1_n_0\,
      O => \add_out_carry__0_i_12_n_0\
    );
\add_out_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[6]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[6]_INST_0_i_2_n_0\,
      O => \mem_reg[1][7]_1\(2)
    );
\add_out_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_3\,
      O => \mem_reg[1][7]_1\(1)
    );
\add_out_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_2\,
      O => \mem_reg[1][7]_1\(0)
    );
\add_out_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mem_reg[1][7]_0\,
      I1 => mux_2_to_1_1_c(7),
      O => \instruction[12]_2\(3)
    );
\add_out_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mem_reg[1][6]_0\,
      I1 => mux_2_to_1_1_c(6),
      O => \instruction[12]_2\(2)
    );
\add_out_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_3\,
      I1 => \add_out_carry__0_i_11_n_0\,
      O => \instruction[12]_2\(1)
    );
\add_out_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_2\,
      I1 => \add_out_carry__0_i_12_n_0\,
      O => \instruction[12]_2\(0)
    );
\add_out_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D000D"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(10),
      I2 => instruction(13),
      I3 => \regB[7]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[7]_INST_0_i_3_n_0\,
      O => mux_2_to_1_1_c(7)
    );
\add_out_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_5\,
      O => \regA[11]_INST_0_i_1_0\(3)
    );
\add_out_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DFD0D0D0DFDFDF"
    )
        port map (
      I0 => instruction(0),
      I1 => instruction(15),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[10]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[10]_INST_0_i_1_n_0\,
      O => \add_out_carry__1_i_10_n_0\
    );
\add_out_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D000D"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(10),
      I2 => instruction(13),
      I3 => \regB[9]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[9]_INST_0_i_3_n_0\,
      O => mux_2_to_1_1_c(9)
    );
\add_out_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000D0D0D000D"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(10),
      I2 => instruction(13),
      I3 => \regB[8]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[8]_INST_0_i_3_n_0\,
      O => mux_2_to_1_1_c(8)
    );
\add_out_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_4\,
      O => \regA[11]_INST_0_i_1_0\(2)
    );
\add_out_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[9]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[9]_INST_0_i_2_n_0\,
      O => \regA[11]_INST_0_i_1_0\(1)
    );
\add_out_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[8]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[8]_INST_0_i_2_n_0\,
      O => \regA[11]_INST_0_i_1_0\(0)
    );
\add_out_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_5\,
      I1 => \add_out_carry__1_i_9_n_0\,
      O => \instruction[1]\(3)
    );
\add_out_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      O => \instruction[1]\(2)
    );
\add_out_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mem_reg[1][9]_0\,
      I1 => mux_2_to_1_1_c(9),
      O => \instruction[1]\(1)
    );
\add_out_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mem_reg[1][8]_0\,
      I1 => mux_2_to_1_1_c(8),
      O => \instruction[1]\(0)
    );
\add_out_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDF0FFF000"
    )
        port map (
      I0 => instruction(1),
      I1 => instruction(15),
      I2 => \regB[11]_INST_0_i_3_n_0\,
      I3 => \regB[14]_INST_0_i_1_n_0\,
      I4 => \regB[11]_INST_0_i_2_n_0\,
      I5 => add_out_carry_i_13_n_0,
      O => \add_out_carry__1_i_9_n_0\
    );
\add_out_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_8\,
      O => \regA[14]_INST_0_i_1_0\(2)
    );
\add_out_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDF0FFF000"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(15),
      I2 => \regB[13]_INST_0_i_3_n_0\,
      I3 => \regB[14]_INST_0_i_1_n_0\,
      I4 => \regB[13]_INST_0_i_2_n_0\,
      I5 => add_out_carry_i_13_n_0,
      O => \add_out_carry__2_i_10_n_0\
    );
\add_out_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DFD0D0D0DFDFDF"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(15),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[12]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[12]_INST_0_i_1_n_0\,
      O => \add_out_carry__2_i_11_n_0\
    );
\add_out_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_7\,
      O => \regA[14]_INST_0_i_1_0\(1)
    );
\add_out_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_6\,
      O => \regA[14]_INST_0_i_1_0\(0)
    );
\add_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_9\,
      I1 => \add_out_carry__2_i_8_n_0\,
      O => \instruction[5]_0\(3)
    );
\add_out_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      O => \instruction[5]_0\(2)
    );
\add_out_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_7\,
      I1 => \add_out_carry__2_i_10_n_0\,
      O => \instruction[5]_0\(1)
    );
\add_out_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_6\,
      I1 => \add_out_carry__2_i_11_n_0\,
      O => \instruction[5]_0\(0)
    );
\add_out_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDF0FFF000"
    )
        port map (
      I0 => instruction(5),
      I1 => instruction(15),
      I2 => \regB[15]_INST_0_i_3_n_0\,
      I3 => \regB[14]_INST_0_i_1_n_0\,
      I4 => \regB[15]_INST_0_i_2_n_0\,
      I5 => add_out_carry_i_13_n_0,
      O => \add_out_carry__2_i_8_n_0\
    );
\add_out_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DFD0D0D0DFDFDF"
    )
        port map (
      I0 => instruction(4),
      I1 => instruction(15),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[14]_INST_0_i_3_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[14]_INST_0_i_2_n_0\,
      O => \add_out_carry__2_i_9_n_0\
    );
add_out_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[3]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[3]_INST_0_i_2_n_0\,
      O => DI(3)
    );
add_out_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"707F7070707F7F7F"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(2),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[2]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[2]_INST_0_i_1_n_0\,
      O => add_out_carry_i_10_n_0
    );
add_out_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"707F7070707F7F7F"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(1),
      I2 => add_out_carry_i_13_n_0,
      I3 => \regB[1]_INST_0_i_2_n_0\,
      I4 => \regB[14]_INST_0_i_1_n_0\,
      I5 => \regB[1]_INST_0_i_1_n_0\,
      O => add_out_carry_i_11_n_0
    );
add_out_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000B8B8B8B8"
    )
        port map (
      I0 => \regB[0]_INST_0_i_2_n_0\,
      I1 => \regB[14]_INST_0_i_1_n_0\,
      I2 => \regB[0]_INST_0_i_1_n_0\,
      I3 => instruction(15),
      I4 => instruction(0),
      I5 => add_out_carry_i_13_n_0,
      O => mux_2_to_1_1_c(0)
    );
add_out_carry_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(10),
      I2 => instruction(12),
      O => add_out_carry_i_13_n_0
    );
add_out_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_1\,
      O => DI(2)
    );
add_out_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => instruction_8_sn_1,
      O => DI(1)
    );
add_out_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_0\,
      O => DI(0)
    );
add_out_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mem_reg[1][3]_0\,
      I1 => add_out_carry_i_9_n_0,
      O => S(3)
    );
add_out_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      O => S(2)
    );
add_out_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction_8_sn_1,
      I1 => add_out_carry_i_11_n_0,
      O => S(1)
    );
add_out_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_0\,
      I1 => mux_2_to_1_1_c(0),
      O => S(0)
    );
add_out_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777F0FFF000"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(3),
      I2 => \regB[3]_INST_0_i_3_n_0\,
      I3 => \regB[14]_INST_0_i_1_n_0\,
      I4 => \regB[3]_INST_0_i_2_n_0\,
      I5 => add_out_carry_i_13_n_0,
      O => add_out_carry_i_9_n_0
    );
\cmp_out_reg0__7_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022F"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      I2 => \^instruction[8]_9\,
      I3 => \add_out_carry__2_i_8_n_0\,
      O => \instruction[4]_0\(3)
    );
\cmp_out_reg0__7_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => \add_out_carry__2_i_10_n_0\,
      I1 => \^instruction[8]_7\,
      I2 => \add_out_carry__2_i_11_n_0\,
      I3 => \^instruction[8]_6\,
      O => \instruction[4]_0\(2)
    );
\cmp_out_reg0__7_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \add_out_carry__1_i_10_n_0\,
      I1 => \^instruction[8]_4\,
      I2 => \^instruction[8]_5\,
      I3 => \add_out_carry__1_i_9_n_0\,
      O => \instruction[4]_0\(1)
    );
\cmp_out_reg0__7_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mux_2_to_1_1_c(9),
      I1 => \^mem_reg[1][9]_0\,
      I2 => mux_2_to_1_1_c(8),
      I3 => \^mem_reg[1][8]_0\,
      O => \instruction[4]_0\(0)
    );
\cmp_out_reg0__7_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      I2 => \^instruction[8]_9\,
      I3 => \add_out_carry__2_i_8_n_0\,
      O => \instruction[4]_1\(3)
    );
\cmp_out_reg0__7_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^instruction[8]_6\,
      I1 => \add_out_carry__2_i_11_n_0\,
      I2 => \^instruction[8]_7\,
      I3 => \add_out_carry__2_i_10_n_0\,
      O => \instruction[4]_1\(2)
    );
\cmp_out_reg0__7_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      I2 => \^instruction[8]_5\,
      I3 => \add_out_carry__1_i_9_n_0\,
      O => \instruction[4]_1\(1)
    );
\cmp_out_reg0__7_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^mem_reg[1][8]_0\,
      I1 => mux_2_to_1_1_c(8),
      I2 => \^mem_reg[1][9]_0\,
      I3 => mux_2_to_1_1_c(9),
      O => \instruction[4]_1\(0)
    );
\cmp_out_reg0__7_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => mux_2_to_1_1_c(7),
      I1 => \^mem_reg[1][7]_0\,
      I2 => mux_2_to_1_1_c(6),
      I3 => \^mem_reg[1][6]_0\,
      O => \instruction[12]_1\(3)
    );
\cmp_out_reg0__7_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => \add_out_carry__0_i_11_n_0\,
      I1 => \^instruction[8]_3\,
      I2 => \add_out_carry__0_i_12_n_0\,
      I3 => \^instruction[8]_2\,
      O => \instruction[12]_1\(2)
    );
\cmp_out_reg0__7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"044F"
    )
        port map (
      I0 => add_out_carry_i_10_n_0,
      I1 => \^instruction[8]_1\,
      I2 => add_out_carry_i_9_n_0,
      I3 => \^mem_reg[1][3]_0\,
      O => \instruction[12]_1\(1)
    );
\cmp_out_reg0__7_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => add_out_carry_i_11_n_0,
      I1 => instruction_8_sn_1,
      I2 => mux_2_to_1_1_c(0),
      I3 => \^instruction[8]_0\,
      O => \instruction[12]_1\(0)
    );
\cmp_out_reg0__7_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^mem_reg[1][6]_0\,
      I1 => mux_2_to_1_1_c(6),
      I2 => \^mem_reg[1][7]_0\,
      I3 => mux_2_to_1_1_c(7),
      O => \instruction[12]_4\(3)
    );
\cmp_out_reg0__7_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^instruction[8]_3\,
      I1 => \add_out_carry__0_i_11_n_0\,
      I2 => \^instruction[8]_2\,
      I3 => \add_out_carry__0_i_12_n_0\,
      O => \instruction[12]_4\(2)
    );
\cmp_out_reg0__7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      I2 => \^mem_reg[1][3]_0\,
      I3 => add_out_carry_i_9_n_0,
      O => \instruction[12]_4\(1)
    );
\cmp_out_reg0__7_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => instruction_8_sn_1,
      I1 => add_out_carry_i_11_n_0,
      I2 => \^instruction[8]_0\,
      I3 => mux_2_to_1_1_c(0),
      O => \instruction[12]_4\(0)
    );
\cmp_out_reg0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F220"
    )
        port map (
      I0 => \add_out_carry__2_i_9_n_0\,
      I1 => \^instruction[8]_8\,
      I2 => \^instruction[8]_9\,
      I3 => \add_out_carry__2_i_8_n_0\,
      O => \instruction[4]\(3)
    );
\cmp_out_reg0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^instruction[8]_6\,
      I1 => \add_out_carry__2_i_11_n_0\,
      I2 => \add_out_carry__2_i_10_n_0\,
      I3 => \^instruction[8]_7\,
      O => \instruction[4]\(2)
    );
\cmp_out_reg0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      I2 => \^instruction[8]_5\,
      I3 => \add_out_carry__1_i_9_n_0\,
      O => \instruction[4]\(1)
    );
\cmp_out_reg0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => mux_2_to_1_1_c(9),
      I1 => \^mem_reg[1][9]_0\,
      I2 => mux_2_to_1_1_c(8),
      I3 => \^mem_reg[1][8]_0\,
      O => \instruction[4]\(0)
    );
\cmp_out_reg0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      I2 => \^instruction[8]_9\,
      I3 => \add_out_carry__2_i_8_n_0\,
      O => \instruction[4]_2\(3)
    );
\cmp_out_reg0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^instruction[8]_6\,
      I1 => \add_out_carry__2_i_11_n_0\,
      I2 => \^instruction[8]_7\,
      I3 => \add_out_carry__2_i_10_n_0\,
      O => \instruction[4]_2\(2)
    );
\cmp_out_reg0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      I2 => \^instruction[8]_5\,
      I3 => \add_out_carry__1_i_9_n_0\,
      O => \instruction[4]_2\(1)
    );
\cmp_out_reg0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^mem_reg[1][8]_0\,
      I1 => mux_2_to_1_1_c(8),
      I2 => \^mem_reg[1][9]_0\,
      I3 => mux_2_to_1_1_c(9),
      O => \instruction[4]_2\(0)
    );
cmp_out_reg0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => mux_2_to_1_1_c(7),
      I1 => \^mem_reg[1][7]_0\,
      I2 => mux_2_to_1_1_c(6),
      I3 => \^mem_reg[1][6]_0\,
      O => \instruction[12]_0\(3)
    );
cmp_out_reg0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => \^instruction[8]_2\,
      I1 => \add_out_carry__0_i_12_n_0\,
      I2 => \add_out_carry__0_i_11_n_0\,
      I3 => \^instruction[8]_3\,
      O => \instruction[12]_0\(2)
    );
cmp_out_reg0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      I2 => add_out_carry_i_9_n_0,
      I3 => \^mem_reg[1][3]_0\,
      O => \instruction[12]_0\(1)
    );
cmp_out_reg0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10F1"
    )
        port map (
      I0 => \^instruction[8]_0\,
      I1 => mux_2_to_1_1_c(0),
      I2 => add_out_carry_i_11_n_0,
      I3 => instruction_8_sn_1,
      O => \instruction[12]_0\(0)
    );
cmp_out_reg0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^mem_reg[1][6]_0\,
      I1 => mux_2_to_1_1_c(6),
      I2 => \^mem_reg[1][7]_0\,
      I3 => mux_2_to_1_1_c(7),
      O => \instruction[12]_5\(3)
    );
cmp_out_reg0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^instruction[8]_3\,
      I1 => \add_out_carry__0_i_11_n_0\,
      I2 => \^instruction[8]_2\,
      I3 => \add_out_carry__0_i_12_n_0\,
      O => \instruction[12]_5\(2)
    );
cmp_out_reg0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      I2 => \^mem_reg[1][3]_0\,
      I3 => add_out_carry_i_9_n_0,
      O => \instruction[12]_5\(1)
    );
cmp_out_reg0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => instruction_8_sn_1,
      I1 => add_out_carry_i_11_n_0,
      I2 => \^instruction[8]_0\,
      I3 => mux_2_to_1_1_c(0),
      O => \instruction[12]_5\(0)
    );
\cmp_status[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEFFFEF"
    )
        port map (
      I0 => \cmp_status[0]_i_2_n_0\,
      I1 => \mem[1][0]_i_4_n_0\,
      I2 => instruction_8_sn_1,
      I3 => \cmp_status[0]_i_3_n_0\,
      I4 => \cmp_status[0]_i_4_n_0\,
      I5 => \cmp_status[0]_i_5_n_0\,
      O => instruction_10_sn_1
    );
\cmp_status[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      I2 => \^instruction[8]_5\,
      I3 => \add_out_carry__1_i_9_n_0\,
      I4 => \^mem_reg[1][9]_0\,
      I5 => mux_2_to_1_1_c(9),
      O => \cmp_status[0]_i_10_n_0\
    );
\cmp_status[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^mem_reg[1][6]_0\,
      I1 => mux_2_to_1_1_c(6),
      I2 => \^mem_reg[1][7]_0\,
      I3 => mux_2_to_1_1_c(7),
      I4 => \^mem_reg[1][8]_0\,
      I5 => mux_2_to_1_1_c(8),
      O => \cmp_status[0]_i_11_n_0\
    );
\cmp_status[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \^instruction[8]_3\,
      I1 => \add_out_carry__0_i_11_n_0\,
      I2 => \^instruction[8]_2\,
      I3 => \add_out_carry__0_i_12_n_0\,
      I4 => \^mem_reg[1][3]_0\,
      I5 => add_out_carry_i_9_n_0,
      O => \cmp_status[0]_i_12_n_0\
    );
\cmp_status[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      I2 => instruction_8_sn_1,
      I3 => add_out_carry_i_11_n_0,
      I4 => \^instruction[8]_0\,
      I5 => mux_2_to_1_1_c(0),
      O => \cmp_status[0]_i_13_n_0\
    );
\cmp_status[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A0A2A"
    )
        port map (
      I0 => data0(0),
      I1 => instruction(10),
      I2 => instruction(15),
      I3 => instruction(11),
      I4 => instruction(9),
      O => \cmp_status[0]_i_2_n_0\
    );
\cmp_status[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => instruction(11),
      I1 => instruction(12),
      I2 => instruction(10),
      I3 => instruction(15),
      I4 => instruction(9),
      O => \cmp_status[0]_i_3_n_0\
    );
\cmp_status[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFFFFFFFFF"
    )
        port map (
      I0 => instruction(9),
      I1 => instruction(15),
      I2 => instruction(10),
      I3 => instruction(11),
      I4 => instruction(12),
      I5 => \cmp_status_reg[0]_i_6_n_2\,
      O => \cmp_status[0]_i_4_n_0\
    );
\cmp_status[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2EFE3EF"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_0\,
      I2 => mux_2_to_1_1_c(0),
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \cmp_status[0]_i_5_n_0\
    );
\cmp_status[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_out_carry__2_i_8_n_0\,
      I1 => \^instruction[8]_9\,
      O => \cmp_status[0]_i_8_n_0\
    );
\cmp_status[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      I2 => \^instruction[8]_6\,
      I3 => \add_out_carry__2_i_11_n_0\,
      I4 => \^instruction[8]_7\,
      I5 => \add_out_carry__2_i_10_n_0\,
      O => \cmp_status[0]_i_9_n_0\
    );
\cmp_status[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(1),
      I2 => \cmp_status[1]_i_2_n_0\,
      I3 => \mem[1][1]_i_4_n_0\,
      I4 => \mem[1][1]_i_3_n_0\,
      O => instruction_9_sn_1
    );
\cmp_status[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0101"
    )
        port map (
      I0 => \mem[1][15]_i_13_n_0\,
      I1 => add_out_carry_i_11_n_0,
      I2 => instruction_8_sn_1,
      I3 => \mem_reg[1][0]_0\,
      I4 => \mem_reg[1][15]_0\(1),
      O => \cmp_status[1]_i_2_n_0\
    );
\cmp_status[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(2),
      I2 => \cmp_status[2]_i_2_n_0\,
      I3 => \mem[1][2]_i_4_n_0\,
      I4 => \mem[1][2]_i_3_n_0\,
      O => \instruction[9]_0\
    );
\cmp_status[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0101"
    )
        port map (
      I0 => \mem[1][15]_i_13_n_0\,
      I1 => add_out_carry_i_10_n_0,
      I2 => \^instruction[8]_1\,
      I3 => \mem_reg[1][0]_0\,
      I4 => \mem_reg[1][15]_0\(2),
      O => \cmp_status[2]_i_2_n_0\
    );
\cmp_status[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(3),
      I2 => \cmp_status[3]_i_4_n_0\,
      I3 => \mem[1][3]_i_4_n_0\,
      I4 => \mem[1][3]_i_3_n_0\,
      O => \instruction[9]_1\
    );
\cmp_status[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(11),
      I2 => instruction(10),
      I3 => instruction(15),
      I4 => instruction(9),
      O => instruction_12_sn_1
    );
\cmp_status[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => \mem[1][15]_i_13_n_0\,
      I1 => \^mem_reg[1][3]_0\,
      I2 => add_out_carry_i_9_n_0,
      I3 => \mem_reg[1][0]_0\,
      I4 => \mem_reg[1][15]_0\(3),
      O => \cmp_status[3]_i_4_n_0\
    );
\cmp_status_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cmp_status_reg[0]_i_7_n_0\,
      CO(3 downto 2) => \NLW_cmp_status_reg[0]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cmp_status_reg[0]_i_6_n_2\,
      CO(0) => \cmp_status_reg[0]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cmp_status_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \cmp_status[0]_i_8_n_0\,
      S(0) => \cmp_status[0]_i_9_n_0\
    );
\cmp_status_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cmp_status_reg[0]_i_7_n_0\,
      CO(2) => \cmp_status_reg[0]_i_7_n_1\,
      CO(1) => \cmp_status_reg[0]_i_7_n_2\,
      CO(0) => \cmp_status_reg[0]_i_7_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cmp_status_reg[0]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \cmp_status[0]_i_10_n_0\,
      S(2) => \cmp_status[0]_i_11_n_0\,
      S(1) => \cmp_status[0]_i_12_n_0\,
      S(0) => \cmp_status[0]_i_13_n_0\
    );
\mem[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFBFBFFFB"
    )
        port map (
      I0 => \mem_reg[1][0]_1\,
      I1 => \mem[1][0]_i_3_n_0\,
      I2 => \mem[1][0]_i_4_n_0\,
      I3 => data0(0),
      I4 => \mem[1][15]_i_7_n_0\,
      I5 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][0]_i_1_n_0\
    );
\mem[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000080A0AA80"
    )
        port map (
      I0 => \mem[1][0]_i_5_n_0\,
      I1 => \mem[1][14]_i_8_n_0\,
      I2 => \mem[1][14]_i_7_n_0\,
      I3 => mux_2_to_1_1_c(0),
      I4 => \^instruction[8]_0\,
      I5 => \mem[1][14]_i_6_n_0\,
      O => \mem[1][0]_i_3_n_0\
    );
\mem[1][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => \mem[1][15]_i_13_n_0\,
      I1 => mux_2_to_1_1_c(0),
      I2 => \^instruction[8]_0\,
      I3 => \mem_reg[1][0]_0\,
      I4 => \mem_reg[1][15]_0\(0),
      O => \mem[1][0]_i_4_n_0\
    );
\mem[1][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBFBFB0B0B0"
    )
        port map (
      I0 => instruction_12_sn_1,
      I1 => \cmp_status_reg[0]_i_6_n_2\,
      I2 => \cmp_status[0]_i_3_n_0\,
      I3 => \regA[1]_INST_0_i_3_n_0\,
      I4 => \regA[15]_INST_0_i_1_n_0\,
      I5 => \regA[1]_INST_0_i_2_n_0\,
      O => \mem[1][0]_i_5_n_0\
    );
\mem[1][10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][10]_1\,
      I1 => \mem[1][10]_i_3_n_0\,
      I2 => \mem[1][10]_i_4_n_0\,
      I3 => \mem[1][10]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][10]_i_1_n_0\
    );
\mem[1][10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_4\,
      I2 => \add_out_carry__1_i_10_n_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][10]_i_3_n_0\
    );
\mem[1][10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \cmp_status[0]_i_3_n_0\,
      I1 => \^instruction[8]_5\,
      I2 => \mem[1][14]_i_9_n_0\,
      I3 => \^mem_reg[1][9]_0\,
      O => \mem[1][10]_i_4_n_0\
    );
\mem[1][10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(10),
      I2 => \mem_reg[1][10]_0\,
      I3 => \^instruction[8]_4\,
      I4 => \add_out_carry__1_i_10_n_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][10]_i_5_n_0\
    );
\mem[1][11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][11]_1\,
      I1 => \mem[1][11]_i_3_n_0\,
      I2 => \mem[1][11]_i_4_n_0\,
      I3 => \mem[1][11]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][11]_i_1_n_0\
    );
\mem[1][11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \add_out_carry__1_i_9_n_0\,
      I2 => \^instruction[8]_5\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][11]_i_3_n_0\
    );
\mem[1][11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => \cmp_status[0]_i_3_n_0\,
      I1 => \^instruction[8]_6\,
      I2 => \^instruction[8]_4\,
      I3 => \mem[1][14]_i_9_n_0\,
      O => \mem[1][11]_i_4_n_0\
    );
\mem[1][11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(11),
      I2 => \mem_reg[1][11]_0\,
      I3 => \add_out_carry__1_i_9_n_0\,
      I4 => \^instruction[8]_5\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][11]_i_5_n_0\
    );
\mem[1][12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][12]_1\,
      I1 => \mem[1][12]_i_3_n_0\,
      I2 => \mem[1][12]_i_4_n_0\,
      I3 => \mem[1][12]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][12]_i_1_n_0\
    );
\mem[1][12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_6\,
      I2 => \add_out_carry__2_i_11_n_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][12]_i_3_n_0\
    );
\mem[1][12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => \cmp_status[0]_i_3_n_0\,
      I1 => \^instruction[8]_7\,
      I2 => \^instruction[8]_5\,
      I3 => \mem[1][14]_i_9_n_0\,
      O => \mem[1][12]_i_4_n_0\
    );
\mem[1][12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(12),
      I2 => \mem_reg[1][12]_0\,
      I3 => \^instruction[8]_6\,
      I4 => \add_out_carry__2_i_11_n_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][12]_i_5_n_0\
    );
\mem[1][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][13]_1\,
      I1 => \mem[1][13]_i_3_n_0\,
      I2 => \mem[1][13]_i_4_n_0\,
      I3 => \mem[1][13]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][13]_i_1_n_0\
    );
\mem[1][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \add_out_carry__2_i_10_n_0\,
      I2 => \^instruction[8]_7\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][13]_i_3_n_0\
    );
\mem[1][13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => \cmp_status[0]_i_3_n_0\,
      I1 => \^instruction[8]_8\,
      I2 => \^instruction[8]_6\,
      I3 => \mem[1][14]_i_9_n_0\,
      O => \mem[1][13]_i_4_n_0\
    );
\mem[1][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(13),
      I2 => \mem_reg[1][13]_0\,
      I3 => \add_out_carry__2_i_10_n_0\,
      I4 => \^instruction[8]_7\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][13]_i_5_n_0\
    );
\mem[1][14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][14]_1\,
      I1 => \mem[1][14]_i_3_n_0\,
      I2 => \mem[1][14]_i_4_n_0\,
      I3 => \mem[1][14]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][14]_i_1_n_0\
    );
\mem[1][14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_8\,
      I2 => \add_out_carry__2_i_9_n_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][14]_i_3_n_0\
    );
\mem[1][14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^instruction[8]_9\,
      I1 => \cmp_status[0]_i_3_n_0\,
      I2 => \^instruction[8]_7\,
      I3 => \mem[1][14]_i_9_n_0\,
      O => \mem[1][14]_i_4_n_0\
    );
\mem[1][14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(14),
      I2 => \mem_reg[1][14]_0\,
      I3 => \^instruction[8]_8\,
      I4 => \add_out_carry__2_i_9_n_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][14]_i_5_n_0\
    );
\mem[1][14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => instruction(11),
      I1 => instruction(12),
      I2 => instruction(10),
      I3 => instruction(15),
      I4 => instruction(9),
      O => \mem[1][14]_i_6_n_0\
    );
\mem[1][14]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => instruction(11),
      I1 => instruction(15),
      I2 => instruction(10),
      I3 => instruction(9),
      O => \mem[1][14]_i_7_n_0\
    );
\mem[1][14]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => instruction(9),
      I1 => instruction(11),
      I2 => instruction(15),
      I3 => instruction(10),
      O => \mem[1][14]_i_8_n_0\
    );
\mem[1][14]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => instruction(11),
      I1 => instruction(12),
      I2 => instruction(10),
      I3 => instruction(15),
      I4 => instruction(9),
      O => \mem[1][14]_i_9_n_0\
    );
\mem[1][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => rst,
      I1 => instruction(8),
      I2 => instruction(6),
      I3 => instruction(7),
      I4 => \mem[1][15]_i_3_n_0\,
      O => \mem[1][15]_i_1_n_0\
    );
\mem[1][15]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3F3FF7F"
    )
        port map (
      I0 => instruction(9),
      I1 => instruction(15),
      I2 => instruction(10),
      I3 => instruction(12),
      I4 => instruction(11),
      O => \mem[1][15]_i_10_n_0\
    );
\mem[1][15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A3030303030"
    )
        port map (
      I0 => \mem[1][14]_i_7_n_0\,
      I1 => \mem[1][14]_i_6_n_0\,
      I2 => \^instruction[8]_9\,
      I3 => add_out_carry_i_13_n_0,
      I4 => \regB[15]_INST_0_i_1_n_0\,
      I5 => \mem[1][15]_i_15_n_0\,
      O => \mem[1][15]_i_11_n_0\
    );
\mem[1][15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^instruction[8]_9\,
      I1 => \cmp_status[0]_i_3_n_0\,
      I2 => \^instruction[8]_8\,
      I3 => \mem[1][14]_i_9_n_0\,
      O => \mem[1][15]_i_12_n_0\
    );
\mem[1][15]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => instruction(9),
      I1 => instruction(11),
      I2 => instruction(15),
      I3 => instruction(12),
      I4 => instruction(10),
      O => \mem[1][15]_i_13_n_0\
    );
\mem[1][15]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBFFBF"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(5),
      I2 => instruction(12),
      I3 => instruction(10),
      I4 => instruction(13),
      O => \mem[1][15]_i_15_n_0\
    );
\mem[1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFBFBFFFB"
    )
        port map (
      I0 => \mem_reg[1][15]_1\,
      I1 => \mem_reg[1][15]_i_5_n_0\,
      I2 => \mem[1][15]_i_6_n_0\,
      I3 => data0(15),
      I4 => \mem[1][15]_i_7_n_0\,
      I5 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][15]_i_2_n_0\
    );
\mem[1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAABAAAA"
    )
        port map (
      I0 => \mem_reg[6][0]_0\,
      I1 => instruction(12),
      I2 => instruction(11),
      I3 => instruction(10),
      I4 => instruction(9),
      I5 => \mem[1][15]_i_9_n_0\,
      O => \mem[1][15]_i_3_n_0\
    );
\mem[1][15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => \mem[1][15]_i_13_n_0\,
      I1 => \^instruction[8]_9\,
      I2 => \add_out_carry__2_i_8_n_0\,
      I3 => \mem_reg[1][0]_0\,
      I4 => \mem_reg[1][15]_0\(4),
      O => \mem[1][15]_i_6_n_0\
    );
\mem[1][15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => instruction(9),
      I1 => instruction(11),
      I2 => instruction(15),
      I3 => instruction(10),
      O => \mem[1][15]_i_7_n_0\
    );
\mem[1][15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(13),
      O => \mem[1][15]_i_8_n_0\
    );
\mem[1][15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E0FF00FF00FF"
    )
        port map (
      I0 => instruction(10),
      I1 => instruction(11),
      I2 => instruction(12),
      I3 => instruction(14),
      I4 => instruction(13),
      I5 => instruction(15),
      O => \mem[1][15]_i_9_n_0\
    );
\mem[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][1]_1\,
      I1 => \mem[1][1]_i_3_n_0\,
      I2 => \mem[1][1]_i_4_n_0\,
      I3 => \mem[1][1]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][1]_i_1_n_0\
    );
\mem[1][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      I2 => \^instruction[8]_6\,
      I3 => \add_out_carry__2_i_11_n_0\,
      I4 => \^instruction[8]_7\,
      I5 => \add_out_carry__2_i_10_n_0\,
      O => \mem[1][1]_i_10_n_0\
    );
\mem[1][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      I2 => \^instruction[8]_5\,
      I3 => \add_out_carry__1_i_9_n_0\,
      I4 => \^mem_reg[1][9]_0\,
      I5 => mux_2_to_1_1_c(9),
      O => \mem[1][1]_i_11_n_0\
    );
\mem[1][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^mem_reg[1][6]_0\,
      I1 => mux_2_to_1_1_c(6),
      I2 => \^mem_reg[1][7]_0\,
      I3 => mux_2_to_1_1_c(7),
      I4 => \^mem_reg[1][8]_0\,
      I5 => mux_2_to_1_1_c(8),
      O => \mem[1][1]_i_12_n_0\
    );
\mem[1][1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \^instruction[8]_3\,
      I1 => \add_out_carry__0_i_11_n_0\,
      I2 => \^instruction[8]_2\,
      I3 => \add_out_carry__0_i_12_n_0\,
      I4 => \^mem_reg[1][3]_0\,
      I5 => add_out_carry_i_9_n_0,
      O => \mem[1][1]_i_13_n_0\
    );
\mem[1][1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      I2 => instruction_8_sn_1,
      I3 => add_out_carry_i_11_n_0,
      I4 => \^instruction[8]_0\,
      I5 => mux_2_to_1_1_c(0),
      O => \mem[1][1]_i_14_n_0\
    );
\mem[1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => \mem[1][14]_i_9_n_0\,
      I1 => \^instruction[8]_0\,
      I2 => \mem_reg[1][1]_i_6_n_2\,
      I3 => instruction_12_sn_1,
      I4 => \cmp_status[0]_i_3_n_0\,
      I5 => \^instruction[8]_1\,
      O => \mem[1][1]_i_3_n_0\
    );
\mem[1][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D501C101"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => instruction_8_sn_1,
      I2 => add_out_carry_i_11_n_0,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][1]_i_4_n_0\
    );
\mem[1][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(1),
      I2 => \mem_reg[1][1]_0\,
      I3 => instruction_8_sn_1,
      I4 => add_out_carry_i_11_n_0,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][1]_i_5_n_0\
    );
\mem[1][1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \add_out_carry__2_i_8_n_0\,
      I1 => \^instruction[8]_9\,
      O => \mem[1][1]_i_9_n_0\
    );
\mem[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][2]_1\,
      I1 => \mem[1][2]_i_3_n_0\,
      I2 => \mem[1][2]_i_4_n_0\,
      I3 => \mem[1][2]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][2]_i_1_n_0\
    );
\mem[1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \mem[1][14]_i_9_n_0\,
      I1 => instruction_8_sn_1,
      I2 => CO(0),
      I3 => instruction_12_sn_1,
      I4 => \cmp_status[0]_i_3_n_0\,
      I5 => \^mem_reg[1][3]_0\,
      O => \mem[1][2]_i_3_n_0\
    );
\mem[1][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D501C101"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_1\,
      I2 => add_out_carry_i_10_n_0,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][2]_i_4_n_0\
    );
\mem[1][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(2),
      I2 => \mem_reg[1][2]_0\,
      I3 => \^instruction[8]_1\,
      I4 => add_out_carry_i_10_n_0,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][2]_i_5_n_0\
    );
\mem[1][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][3]_4\,
      I1 => \mem[1][3]_i_3_n_0\,
      I2 => \mem[1][3]_i_4_n_0\,
      I3 => \mem[1][3]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][3]_i_1_n_0\
    );
\mem[1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => \mem[1][14]_i_9_n_0\,
      I1 => \^instruction[8]_1\,
      I2 => \mem_reg[1][3]_2\(0),
      I3 => instruction_12_sn_1,
      I4 => \cmp_status[0]_i_3_n_0\,
      I5 => \^instruction[8]_2\,
      O => \mem[1][3]_i_3_n_0\
    );
\mem[1][3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0F08"
    )
        port map (
      I0 => \mem[1][14]_i_7_n_0\,
      I1 => \mem[1][14]_i_8_n_0\,
      I2 => \mem[1][14]_i_6_n_0\,
      I3 => \^mem_reg[1][3]_0\,
      I4 => add_out_carry_i_9_n_0,
      O => \mem[1][3]_i_4_n_0\
    );
\mem[1][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4FFF4F4"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(3),
      I2 => \mem_reg[1][3]_3\,
      I3 => add_out_carry_i_9_n_0,
      I4 => \^mem_reg[1][3]_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][3]_i_5_n_0\
    );
\mem[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][4]_1\,
      I1 => \mem[1][4]_i_3_n_0\,
      I2 => \mem[1][4]_i_4_n_0\,
      I3 => \mem[1][4]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][4]_i_1_n_0\
    );
\mem[1][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_2\,
      I2 => \add_out_carry__0_i_12_n_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][4]_i_3_n_0\
    );
\mem[1][4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \cmp_status[0]_i_3_n_0\,
      I1 => \^instruction[8]_3\,
      I2 => \mem[1][14]_i_9_n_0\,
      I3 => \^mem_reg[1][3]_0\,
      O => \mem[1][4]_i_4_n_0\
    );
\mem[1][4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(4),
      I2 => \mem_reg[1][4]_0\,
      I3 => \^instruction[8]_2\,
      I4 => \add_out_carry__0_i_12_n_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][4]_i_5_n_0\
    );
\mem[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][5]_1\,
      I1 => \mem[1][5]_i_3_n_0\,
      I2 => \mem[1][5]_i_4_n_0\,
      I3 => \mem[1][5]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][5]_i_1_n_0\
    );
\mem[1][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFE3EFE"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => \^instruction[8]_3\,
      I2 => \add_out_carry__0_i_11_n_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][5]_i_3_n_0\
    );
\mem[1][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \mem[1][14]_i_9_n_0\,
      I1 => \^instruction[8]_2\,
      I2 => \cmp_status[0]_i_3_n_0\,
      I3 => \^mem_reg[1][6]_0\,
      O => \mem[1][5]_i_4_n_0\
    );
\mem[1][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F4FF"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(5),
      I2 => \mem_reg[1][5]_0\,
      I3 => \^instruction[8]_3\,
      I4 => \add_out_carry__0_i_11_n_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][5]_i_5_n_0\
    );
\mem[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][6]_2\,
      I1 => \mem[1][6]_i_3_n_0\,
      I2 => \mem[1][6]_i_4_n_0\,
      I3 => \mem[1][6]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][6]_i_1_n_0\
    );
\mem[1][6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8BFBCBF"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => mux_2_to_1_1_c(6),
      I2 => \^mem_reg[1][6]_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][6]_i_3_n_0\
    );
\mem[1][6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^mem_reg[1][7]_0\,
      I1 => \cmp_status[0]_i_3_n_0\,
      I2 => \^instruction[8]_3\,
      I3 => \mem[1][14]_i_9_n_0\,
      O => \mem[1][6]_i_4_n_0\
    );
\mem[1][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4FFF4F4F4"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(6),
      I2 => \mem_reg[1][6]_1\,
      I3 => mux_2_to_1_1_c(6),
      I4 => \^mem_reg[1][6]_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][6]_i_5_n_0\
    );
\mem[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][7]_4\,
      I1 => \mem[1][7]_i_3_n_0\,
      I2 => \mem[1][7]_i_4_n_0\,
      I3 => \mem[1][7]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][7]_i_1_n_0\
    );
\mem[1][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8BFBCBF"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => mux_2_to_1_1_c(7),
      I2 => \^mem_reg[1][7]_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][7]_i_3_n_0\
    );
\mem[1][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DDD"
    )
        port map (
      I0 => \^mem_reg[1][8]_0\,
      I1 => \cmp_status[0]_i_3_n_0\,
      I2 => \mem[1][14]_i_9_n_0\,
      I3 => \^mem_reg[1][6]_0\,
      O => \mem[1][7]_i_4_n_0\
    );
\mem[1][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4FFF4F4F4"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(7),
      I2 => \mem_reg[1][7]_3\,
      I3 => mux_2_to_1_1_c(7),
      I4 => \^mem_reg[1][7]_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][7]_i_5_n_0\
    );
\mem[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][8]_2\,
      I1 => \mem[1][8]_i_3_n_0\,
      I2 => \mem[1][8]_i_4_n_0\,
      I3 => \mem[1][8]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][8]_i_1_n_0\
    );
\mem[1][8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8BFBCBF"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => mux_2_to_1_1_c(8),
      I2 => \^mem_reg[1][8]_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][8]_i_3_n_0\
    );
\mem[1][8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DDD"
    )
        port map (
      I0 => \^mem_reg[1][9]_0\,
      I1 => \cmp_status[0]_i_3_n_0\,
      I2 => \mem[1][14]_i_9_n_0\,
      I3 => \^mem_reg[1][7]_0\,
      O => \mem[1][8]_i_4_n_0\
    );
\mem[1][8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4FFF4F4F4"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(8),
      I2 => \mem_reg[1][8]_1\,
      I3 => mux_2_to_1_1_c(8),
      I4 => \^mem_reg[1][8]_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][8]_i_5_n_0\
    );
\mem[1][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \mem_reg[1][9]_2\,
      I1 => \mem[1][9]_i_3_n_0\,
      I2 => \mem[1][9]_i_4_n_0\,
      I3 => \mem[1][9]_i_5_n_0\,
      I4 => \mem[1][15]_i_8_n_0\,
      O => \mem[1][9]_i_1_n_0\
    );
\mem[1][9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8BFBCBF"
    )
        port map (
      I0 => \mem[1][14]_i_6_n_0\,
      I1 => mux_2_to_1_1_c(9),
      I2 => \^mem_reg[1][9]_0\,
      I3 => \mem[1][14]_i_7_n_0\,
      I4 => \mem[1][14]_i_8_n_0\,
      O => \mem[1][9]_i_3_n_0\
    );
\mem[1][9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \cmp_status[0]_i_3_n_0\,
      I1 => \^instruction[8]_4\,
      I2 => \mem[1][14]_i_9_n_0\,
      I3 => \^mem_reg[1][8]_0\,
      O => \mem[1][9]_i_4_n_0\
    );
\mem[1][9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4FFF4F4F4"
    )
        port map (
      I0 => \mem[1][15]_i_7_n_0\,
      I1 => data0(9),
      I2 => \mem_reg[1][9]_1\,
      I3 => mux_2_to_1_1_c(9),
      I4 => \^mem_reg[1][9]_0\,
      I5 => \mem[1][15]_i_13_n_0\,
      O => \mem[1][9]_i_5_n_0\
    );
\mem[2][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0F8"
    )
        port map (
      I0 => instruction(7),
      I1 => \mem[1][15]_i_3_n_0\,
      I2 => rst,
      I3 => instruction(6),
      I4 => instruction(8),
      O => \mem[2][15]_i_1_n_0\
    );
\mem[3][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F8F0"
    )
        port map (
      I0 => instruction(7),
      I1 => \mem[1][15]_i_3_n_0\,
      I2 => rst,
      I3 => instruction(6),
      I4 => instruction(8),
      O => \mem[3][15]_i_1_n_0\
    );
\mem[4][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => rst,
      I1 => instruction(7),
      I2 => instruction(8),
      I3 => instruction(6),
      I4 => \mem[1][15]_i_3_n_0\,
      O => \mem[4][15]_i_1_n_0\
    );
\mem[5][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => rst,
      I1 => instruction(6),
      I2 => instruction(7),
      I3 => instruction(8),
      I4 => \mem[1][15]_i_3_n_0\,
      O => \mem[5][15]_i_1_n_0\
    );
\mem[6][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F8F0F0"
    )
        port map (
      I0 => instruction(7),
      I1 => \mem[1][15]_i_3_n_0\,
      I2 => rst,
      I3 => instruction(6),
      I4 => instruction(8),
      O => \mem[6][15]_i_1_n_0\
    );
\mem[7][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F0F0F0"
    )
        port map (
      I0 => instruction(7),
      I1 => \mem[1][15]_i_3_n_0\,
      I2 => rst,
      I3 => instruction(6),
      I4 => instruction(8),
      O => \mem[7][15]_i_1_n_0\
    );
\mem_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[1]\(0),
      R => rst
    );
\mem_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[1]\(10),
      R => rst
    );
\mem_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[1]\(11),
      R => rst
    );
\mem_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[1]\(12),
      R => rst
    );
\mem_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[1]\(13),
      R => rst
    );
\mem_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[1]\(14),
      R => rst
    );
\mem_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[1]\(15),
      R => rst
    );
\mem_reg[1][15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[1][15]_i_11_n_0\,
      I1 => \mem[1][15]_i_12_n_0\,
      O => \mem_reg[1][15]_i_5_n_0\,
      S => \mem[1][15]_i_10_n_0\
    );
\mem_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[1]\(1),
      R => rst
    );
\mem_reg[1][1]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_reg[1][1]_i_8_n_0\,
      CO(3 downto 2) => \NLW_mem_reg[1][1]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \mem_reg[1][1]_i_6_n_2\,
      CO(0) => \mem_reg[1][1]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_mem_reg[1][1]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \mem[1][1]_i_9_n_0\,
      S(0) => \mem[1][1]_i_10_n_0\
    );
\mem_reg[1][1]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_reg[1][1]_i_8_n_0\,
      CO(2) => \mem_reg[1][1]_i_8_n_1\,
      CO(1) => \mem_reg[1][1]_i_8_n_2\,
      CO(0) => \mem_reg[1][1]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_mem_reg[1][1]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \mem[1][1]_i_11_n_0\,
      S(2) => \mem[1][1]_i_12_n_0\,
      S(1) => \mem[1][1]_i_13_n_0\,
      S(0) => \mem[1][1]_i_14_n_0\
    );
\mem_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[1]\(2),
      R => rst
    );
\mem_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[1]\(3),
      R => rst
    );
\mem_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[1]\(4),
      R => rst
    );
\mem_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[1]\(5),
      R => rst
    );
\mem_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[1]\(6),
      R => rst
    );
\mem_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[1]\(7),
      R => rst
    );
\mem_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[1]\(8),
      R => rst
    );
\mem_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[1]\(9),
      R => rst
    );
\mem_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[2]\(0),
      R => rst
    );
\mem_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[2]\(10),
      R => rst
    );
\mem_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[2]\(11),
      R => rst
    );
\mem_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[2]\(12),
      R => rst
    );
\mem_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[2]\(13),
      R => rst
    );
\mem_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[2]\(14),
      R => rst
    );
\mem_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[2]\(15),
      R => rst
    );
\mem_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[2]\(1),
      R => rst
    );
\mem_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[2]\(2),
      R => rst
    );
\mem_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[2]\(3),
      R => rst
    );
\mem_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[2]\(4),
      R => rst
    );
\mem_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[2]\(5),
      R => rst
    );
\mem_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[2]\(6),
      R => rst
    );
\mem_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[2]\(7),
      R => rst
    );
\mem_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[2]\(8),
      R => rst
    );
\mem_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[2]\(9),
      R => rst
    );
\mem_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[3]\(0),
      R => rst
    );
\mem_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[3]\(10),
      R => rst
    );
\mem_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[3]\(11),
      R => rst
    );
\mem_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[3]\(12),
      R => rst
    );
\mem_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[3]\(13),
      R => rst
    );
\mem_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[3]\(14),
      R => rst
    );
\mem_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[3]\(15),
      R => rst
    );
\mem_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[3]\(1),
      R => rst
    );
\mem_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[3]\(2),
      R => rst
    );
\mem_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[3]\(3),
      R => rst
    );
\mem_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[3]\(4),
      R => rst
    );
\mem_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[3]\(5),
      R => rst
    );
\mem_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[3]\(6),
      R => rst
    );
\mem_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[3]\(7),
      R => rst
    );
\mem_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[3]\(8),
      R => rst
    );
\mem_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[3]\(9),
      R => rst
    );
\mem_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[4]\(0),
      R => rst
    );
\mem_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[4]\(10),
      R => rst
    );
\mem_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[4]\(11),
      R => rst
    );
\mem_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[4]\(12),
      R => rst
    );
\mem_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[4]\(13),
      R => rst
    );
\mem_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[4]\(14),
      R => rst
    );
\mem_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[4]\(15),
      R => rst
    );
\mem_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[4]\(1),
      R => rst
    );
\mem_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[4]\(2),
      R => rst
    );
\mem_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[4]\(3),
      R => rst
    );
\mem_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[4]\(4),
      R => rst
    );
\mem_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[4]\(5),
      R => rst
    );
\mem_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[4]\(6),
      R => rst
    );
\mem_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[4]\(7),
      R => rst
    );
\mem_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[4]\(8),
      R => rst
    );
\mem_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[4]\(9),
      R => rst
    );
\mem_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[5]\(0),
      R => rst
    );
\mem_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[5]\(10),
      R => rst
    );
\mem_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[5]\(11),
      R => rst
    );
\mem_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[5]\(12),
      R => rst
    );
\mem_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[5]\(13),
      R => rst
    );
\mem_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[5]\(14),
      R => rst
    );
\mem_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[5]\(15),
      R => rst
    );
\mem_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[5]\(1),
      R => rst
    );
\mem_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[5]\(2),
      R => rst
    );
\mem_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[5]\(3),
      R => rst
    );
\mem_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[5]\(4),
      R => rst
    );
\mem_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[5]\(5),
      R => rst
    );
\mem_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[5]\(6),
      R => rst
    );
\mem_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[5]\(7),
      R => rst
    );
\mem_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[5]\(8),
      R => rst
    );
\mem_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[5]\(9),
      R => rst
    );
\mem_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[6]\(0),
      R => rst
    );
\mem_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[6]\(10),
      R => rst
    );
\mem_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[6]\(11),
      R => rst
    );
\mem_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[6]\(12),
      R => rst
    );
\mem_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[6]\(13),
      R => rst
    );
\mem_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[6]\(14),
      R => rst
    );
\mem_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[6]\(15),
      R => rst
    );
\mem_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[6]\(1),
      R => rst
    );
\mem_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[6]\(2),
      R => rst
    );
\mem_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[6]\(3),
      R => rst
    );
\mem_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[6]\(4),
      R => rst
    );
\mem_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[6]\(5),
      R => rst
    );
\mem_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[6]\(6),
      R => rst
    );
\mem_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[6]\(7),
      R => rst
    );
\mem_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[6]\(8),
      R => rst
    );
\mem_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[6]\(9),
      R => rst
    );
\mem_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][0]_i_1_n_0\,
      Q => \mem_reg[7]\(0),
      R => rst
    );
\mem_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][10]_i_1_n_0\,
      Q => \mem_reg[7]\(10),
      R => rst
    );
\mem_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][11]_i_1_n_0\,
      Q => \mem_reg[7]\(11),
      R => rst
    );
\mem_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][12]_i_1_n_0\,
      Q => \mem_reg[7]\(12),
      R => rst
    );
\mem_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][13]_i_1_n_0\,
      Q => \mem_reg[7]\(13),
      R => rst
    );
\mem_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][14]_i_1_n_0\,
      Q => \mem_reg[7]\(14),
      R => rst
    );
\mem_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][15]_i_2_n_0\,
      Q => \mem_reg[7]\(15),
      R => rst
    );
\mem_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][1]_i_1_n_0\,
      Q => \mem_reg[7]\(1),
      R => rst
    );
\mem_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][2]_i_1_n_0\,
      Q => \mem_reg[7]\(2),
      R => rst
    );
\mem_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][3]_i_1_n_0\,
      Q => \mem_reg[7]\(3),
      R => rst
    );
\mem_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][4]_i_1_n_0\,
      Q => \mem_reg[7]\(4),
      R => rst
    );
\mem_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][5]_i_1_n_0\,
      Q => \mem_reg[7]\(5),
      R => rst
    );
\mem_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][6]_i_1_n_0\,
      Q => \mem_reg[7]\(6),
      R => rst
    );
\mem_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][7]_i_1_n_0\,
      Q => \mem_reg[7]\(7),
      R => rst
    );
\mem_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][8]_i_1_n_0\,
      Q => \mem_reg[7]\(8),
      R => rst
    );
\mem_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7][15]_i_1_n_0\,
      D => \mem[1][9]_i_1_n_0\,
      Q => \mem_reg[7]\(9),
      R => rst
    );
\outvalue[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[0]_INST_0_i_1_n_0\,
      I1 => \outvalue[0]_INST_0_i_2_n_0\,
      O => outvalue(0),
      S => inr(2)
    );
\outvalue[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(0),
      I1 => \mem_reg[2]\(0),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(0),
      O => \outvalue[0]_INST_0_i_1_n_0\
    );
\outvalue[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(0),
      I1 => \mem_reg[6]\(0),
      I2 => inr(1),
      I3 => \mem_reg[5]\(0),
      I4 => inr(0),
      I5 => \mem_reg[4]\(0),
      O => \outvalue[0]_INST_0_i_2_n_0\
    );
\outvalue[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[10]_INST_0_i_1_n_0\,
      I1 => \outvalue[10]_INST_0_i_2_n_0\,
      O => outvalue(10),
      S => inr(2)
    );
\outvalue[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(10),
      I1 => \mem_reg[2]\(10),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(10),
      O => \outvalue[10]_INST_0_i_1_n_0\
    );
\outvalue[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(10),
      I1 => \mem_reg[6]\(10),
      I2 => inr(1),
      I3 => \mem_reg[5]\(10),
      I4 => inr(0),
      I5 => \mem_reg[4]\(10),
      O => \outvalue[10]_INST_0_i_2_n_0\
    );
\outvalue[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[11]_INST_0_i_1_n_0\,
      I1 => \outvalue[11]_INST_0_i_2_n_0\,
      O => outvalue(11),
      S => inr(2)
    );
\outvalue[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(11),
      I1 => \mem_reg[2]\(11),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(11),
      O => \outvalue[11]_INST_0_i_1_n_0\
    );
\outvalue[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(11),
      I1 => \mem_reg[6]\(11),
      I2 => inr(1),
      I3 => \mem_reg[5]\(11),
      I4 => inr(0),
      I5 => \mem_reg[4]\(11),
      O => \outvalue[11]_INST_0_i_2_n_0\
    );
\outvalue[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[12]_INST_0_i_1_n_0\,
      I1 => \outvalue[12]_INST_0_i_2_n_0\,
      O => outvalue(12),
      S => inr(2)
    );
\outvalue[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(12),
      I1 => \mem_reg[2]\(12),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(12),
      O => \outvalue[12]_INST_0_i_1_n_0\
    );
\outvalue[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(12),
      I1 => \mem_reg[6]\(12),
      I2 => inr(1),
      I3 => \mem_reg[5]\(12),
      I4 => inr(0),
      I5 => \mem_reg[4]\(12),
      O => \outvalue[12]_INST_0_i_2_n_0\
    );
\outvalue[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[13]_INST_0_i_1_n_0\,
      I1 => \outvalue[13]_INST_0_i_2_n_0\,
      O => outvalue(13),
      S => inr(2)
    );
\outvalue[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(13),
      I1 => \mem_reg[2]\(13),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(13),
      O => \outvalue[13]_INST_0_i_1_n_0\
    );
\outvalue[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(13),
      I1 => \mem_reg[6]\(13),
      I2 => inr(1),
      I3 => \mem_reg[5]\(13),
      I4 => inr(0),
      I5 => \mem_reg[4]\(13),
      O => \outvalue[13]_INST_0_i_2_n_0\
    );
\outvalue[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[14]_INST_0_i_1_n_0\,
      I1 => \outvalue[14]_INST_0_i_2_n_0\,
      O => outvalue(14),
      S => inr(2)
    );
\outvalue[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(14),
      I1 => \mem_reg[2]\(14),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(14),
      O => \outvalue[14]_INST_0_i_1_n_0\
    );
\outvalue[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(14),
      I1 => \mem_reg[6]\(14),
      I2 => inr(1),
      I3 => \mem_reg[5]\(14),
      I4 => inr(0),
      I5 => \mem_reg[4]\(14),
      O => \outvalue[14]_INST_0_i_2_n_0\
    );
\outvalue[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[15]_INST_0_i_1_n_0\,
      I1 => \outvalue[15]_INST_0_i_2_n_0\,
      O => outvalue(15),
      S => inr(2)
    );
\outvalue[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(15),
      I1 => \mem_reg[2]\(15),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(15),
      O => \outvalue[15]_INST_0_i_1_n_0\
    );
\outvalue[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(15),
      I1 => \mem_reg[6]\(15),
      I2 => inr(1),
      I3 => \mem_reg[5]\(15),
      I4 => inr(0),
      I5 => \mem_reg[4]\(15),
      O => \outvalue[15]_INST_0_i_2_n_0\
    );
\outvalue[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[1]_INST_0_i_1_n_0\,
      I1 => \outvalue[1]_INST_0_i_2_n_0\,
      O => outvalue(1),
      S => inr(2)
    );
\outvalue[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(1),
      I1 => \mem_reg[2]\(1),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(1),
      O => \outvalue[1]_INST_0_i_1_n_0\
    );
\outvalue[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(1),
      I1 => \mem_reg[6]\(1),
      I2 => inr(1),
      I3 => \mem_reg[5]\(1),
      I4 => inr(0),
      I5 => \mem_reg[4]\(1),
      O => \outvalue[1]_INST_0_i_2_n_0\
    );
\outvalue[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[2]_INST_0_i_1_n_0\,
      I1 => \outvalue[2]_INST_0_i_2_n_0\,
      O => outvalue(2),
      S => inr(2)
    );
\outvalue[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(2),
      I1 => \mem_reg[2]\(2),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(2),
      O => \outvalue[2]_INST_0_i_1_n_0\
    );
\outvalue[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(2),
      I1 => \mem_reg[6]\(2),
      I2 => inr(1),
      I3 => \mem_reg[5]\(2),
      I4 => inr(0),
      I5 => \mem_reg[4]\(2),
      O => \outvalue[2]_INST_0_i_2_n_0\
    );
\outvalue[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[3]_INST_0_i_1_n_0\,
      I1 => \outvalue[3]_INST_0_i_2_n_0\,
      O => outvalue(3),
      S => inr(2)
    );
\outvalue[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(3),
      I1 => \mem_reg[2]\(3),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(3),
      O => \outvalue[3]_INST_0_i_1_n_0\
    );
\outvalue[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(3),
      I1 => \mem_reg[6]\(3),
      I2 => inr(1),
      I3 => \mem_reg[5]\(3),
      I4 => inr(0),
      I5 => \mem_reg[4]\(3),
      O => \outvalue[3]_INST_0_i_2_n_0\
    );
\outvalue[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[4]_INST_0_i_1_n_0\,
      I1 => \outvalue[4]_INST_0_i_2_n_0\,
      O => outvalue(4),
      S => inr(2)
    );
\outvalue[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(4),
      I1 => \mem_reg[2]\(4),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(4),
      O => \outvalue[4]_INST_0_i_1_n_0\
    );
\outvalue[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(4),
      I1 => \mem_reg[6]\(4),
      I2 => inr(1),
      I3 => \mem_reg[5]\(4),
      I4 => inr(0),
      I5 => \mem_reg[4]\(4),
      O => \outvalue[4]_INST_0_i_2_n_0\
    );
\outvalue[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[5]_INST_0_i_1_n_0\,
      I1 => \outvalue[5]_INST_0_i_2_n_0\,
      O => outvalue(5),
      S => inr(2)
    );
\outvalue[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(5),
      I1 => \mem_reg[2]\(5),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(5),
      O => \outvalue[5]_INST_0_i_1_n_0\
    );
\outvalue[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(5),
      I1 => \mem_reg[6]\(5),
      I2 => inr(1),
      I3 => \mem_reg[5]\(5),
      I4 => inr(0),
      I5 => \mem_reg[4]\(5),
      O => \outvalue[5]_INST_0_i_2_n_0\
    );
\outvalue[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[6]_INST_0_i_1_n_0\,
      I1 => \outvalue[6]_INST_0_i_2_n_0\,
      O => outvalue(6),
      S => inr(2)
    );
\outvalue[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(6),
      I1 => \mem_reg[2]\(6),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(6),
      O => \outvalue[6]_INST_0_i_1_n_0\
    );
\outvalue[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(6),
      I1 => \mem_reg[6]\(6),
      I2 => inr(1),
      I3 => \mem_reg[5]\(6),
      I4 => inr(0),
      I5 => \mem_reg[4]\(6),
      O => \outvalue[6]_INST_0_i_2_n_0\
    );
\outvalue[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[7]_INST_0_i_1_n_0\,
      I1 => \outvalue[7]_INST_0_i_2_n_0\,
      O => outvalue(7),
      S => inr(2)
    );
\outvalue[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(7),
      I1 => \mem_reg[2]\(7),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(7),
      O => \outvalue[7]_INST_0_i_1_n_0\
    );
\outvalue[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(7),
      I1 => \mem_reg[6]\(7),
      I2 => inr(1),
      I3 => \mem_reg[5]\(7),
      I4 => inr(0),
      I5 => \mem_reg[4]\(7),
      O => \outvalue[7]_INST_0_i_2_n_0\
    );
\outvalue[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[8]_INST_0_i_1_n_0\,
      I1 => \outvalue[8]_INST_0_i_2_n_0\,
      O => outvalue(8),
      S => inr(2)
    );
\outvalue[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(8),
      I1 => \mem_reg[2]\(8),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(8),
      O => \outvalue[8]_INST_0_i_1_n_0\
    );
\outvalue[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(8),
      I1 => \mem_reg[6]\(8),
      I2 => inr(1),
      I3 => \mem_reg[5]\(8),
      I4 => inr(0),
      I5 => \mem_reg[4]\(8),
      O => \outvalue[8]_INST_0_i_2_n_0\
    );
\outvalue[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \outvalue[9]_INST_0_i_1_n_0\,
      I1 => \outvalue[9]_INST_0_i_2_n_0\,
      O => outvalue(9),
      S => inr(2)
    );
\outvalue[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \mem_reg[3]\(9),
      I1 => \mem_reg[2]\(9),
      I2 => inr(1),
      I3 => inr(0),
      I4 => \mem_reg[1]\(9),
      O => \outvalue[9]_INST_0_i_1_n_0\
    );
\outvalue[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(9),
      I1 => \mem_reg[6]\(9),
      I2 => inr(1),
      I3 => \mem_reg[5]\(9),
      I4 => inr(0),
      I5 => \mem_reg[4]\(9),
      O => \outvalue[9]_INST_0_i_2_n_0\
    );
\regA[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_0\,
      O => regA(0)
    );
\regA[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[0]_INST_0_i_2_n_0\,
      I1 => \regA[0]_INST_0_i_3_n_0\,
      O => \^instruction[8]_0\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(0),
      I1 => \mem_reg[5]\(0),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(0),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(0),
      O => \regA[0]_INST_0_i_2_n_0\
    );
\regA[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(0),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(0),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(0),
      O => \regA[0]_INST_0_i_3_n_0\
    );
\regA[10]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_4\,
      O => regA(5)
    );
\regA[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[10]_INST_0_i_2_n_0\,
      I1 => \regA[10]_INST_0_i_3_n_0\,
      O => \^instruction[8]_4\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(10),
      I1 => \mem_reg[5]\(10),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(10),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(10),
      O => \regA[10]_INST_0_i_2_n_0\
    );
\regA[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(10),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(10),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(10),
      O => \regA[10]_INST_0_i_3_n_0\
    );
\regA[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_5\,
      O => regA(6)
    );
\regA[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[11]_INST_0_i_2_n_0\,
      I1 => \regA[11]_INST_0_i_3_n_0\,
      O => \^instruction[8]_5\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(11),
      I1 => \mem_reg[5]\(11),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(11),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(11),
      O => \regA[11]_INST_0_i_2_n_0\
    );
\regA[11]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(11),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(11),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(11),
      O => \regA[11]_INST_0_i_3_n_0\
    );
\regA[12]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_6\,
      O => regA(7)
    );
\regA[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[12]_INST_0_i_2_n_0\,
      I1 => \regA[12]_INST_0_i_3_n_0\,
      O => \^instruction[8]_6\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(12),
      I1 => \mem_reg[5]\(12),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(12),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(12),
      O => \regA[12]_INST_0_i_2_n_0\
    );
\regA[12]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(12),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(12),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(12),
      O => \regA[12]_INST_0_i_3_n_0\
    );
\regA[13]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_7\,
      O => regA(8)
    );
\regA[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[13]_INST_0_i_2_n_0\,
      I1 => \regA[13]_INST_0_i_3_n_0\,
      O => \^instruction[8]_7\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(13),
      I1 => \mem_reg[5]\(13),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(13),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(13),
      O => \regA[13]_INST_0_i_2_n_0\
    );
\regA[13]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(13),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(13),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(13),
      O => \regA[13]_INST_0_i_3_n_0\
    );
\regA[14]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_8\,
      O => regA(9)
    );
\regA[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[14]_INST_0_i_2_n_0\,
      I1 => \regA[14]_INST_0_i_3_n_0\,
      O => \^instruction[8]_8\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(14),
      I1 => \mem_reg[5]\(14),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(14),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(14),
      O => \regA[14]_INST_0_i_2_n_0\
    );
\regA[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(14),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(14),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(14),
      O => \regA[14]_INST_0_i_3_n_0\
    );
\regA[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[15]_INST_0_i_2_n_0\,
      I1 => \regA[15]_INST_0_i_3_n_0\,
      O => \^instruction[8]_9\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C1C4C1C5FDF7FDF"
    )
        port map (
      I0 => instruction(8),
      I1 => instruction(13),
      I2 => instruction(15),
      I3 => instruction(14),
      I4 => instruction(12),
      I5 => instruction(5),
      O => \regA[15]_INST_0_i_1_n_0\
    );
\regA[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(15),
      I1 => \mem_reg[5]\(15),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(15),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(15),
      O => \regA[15]_INST_0_i_2_n_0\
    );
\regA[15]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(15),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(15),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(15),
      O => \regA[15]_INST_0_i_3_n_0\
    );
\regA[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37371151F7F7DD5D"
    )
        port map (
      I0 => instruction(4),
      I1 => instruction(15),
      I2 => instruction(14),
      I3 => instruction(12),
      I4 => instruction(13),
      I5 => instruction(7),
      O => \regA[15]_INST_0_i_4_n_0\
    );
\regA[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37371151F7F7DD5D"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(15),
      I2 => instruction(14),
      I3 => instruction(12),
      I4 => instruction(13),
      I5 => instruction(6),
      O => \regA[15]_INST_0_i_5_n_0\
    );
\regA[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => instruction_8_sn_1,
      O => regA(1)
    );
\regA[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[1]_INST_0_i_2_n_0\,
      I1 => \regA[1]_INST_0_i_3_n_0\,
      O => instruction_8_sn_1,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(1),
      I1 => \mem_reg[5]\(1),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(1),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(1),
      O => \regA[1]_INST_0_i_2_n_0\
    );
\regA[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(1),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(1),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(1),
      O => \regA[1]_INST_0_i_3_n_0\
    );
\regA[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_1\,
      O => regA(2)
    );
\regA[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[2]_INST_0_i_2_n_0\,
      I1 => \regA[2]_INST_0_i_3_n_0\,
      O => \^instruction[8]_1\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(2),
      I1 => \mem_reg[5]\(2),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(2),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(2),
      O => \regA[2]_INST_0_i_2_n_0\
    );
\regA[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(2),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(2),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(2),
      O => \regA[2]_INST_0_i_3_n_0\
    );
\regA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[3]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[3]_INST_0_i_2_n_0\,
      O => \^mem_reg[1][3]_0\
    );
\regA[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(3),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(3),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(3),
      O => \regA[3]_INST_0_i_1_n_0\
    );
\regA[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(3),
      I1 => \mem_reg[5]\(3),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(3),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(3),
      O => \regA[3]_INST_0_i_2_n_0\
    );
\regA[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_2\,
      O => regA(3)
    );
\regA[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[4]_INST_0_i_2_n_0\,
      I1 => \regA[4]_INST_0_i_3_n_0\,
      O => \^instruction[8]_2\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(4),
      I1 => \mem_reg[5]\(4),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(4),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(4),
      O => \regA[4]_INST_0_i_2_n_0\
    );
\regA[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(4),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(4),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(4),
      O => \regA[4]_INST_0_i_3_n_0\
    );
\regA[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_3\,
      O => regA(4)
    );
\regA[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[5]_INST_0_i_2_n_0\,
      I1 => \regA[5]_INST_0_i_3_n_0\,
      O => \^instruction[8]_3\,
      S => \regA[15]_INST_0_i_1_n_0\
    );
\regA[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(5),
      I1 => \mem_reg[5]\(5),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(5),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(5),
      O => \regA[5]_INST_0_i_2_n_0\
    );
\regA[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(5),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(5),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(5),
      O => \regA[5]_INST_0_i_3_n_0\
    );
\regA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[6]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[6]_INST_0_i_2_n_0\,
      O => \^mem_reg[1][6]_0\
    );
\regA[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(6),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(6),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(6),
      O => \regA[6]_INST_0_i_1_n_0\
    );
\regA[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(6),
      I1 => \mem_reg[5]\(6),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(6),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(6),
      O => \regA[6]_INST_0_i_2_n_0\
    );
\regA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[7]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[7]_INST_0_i_2_n_0\,
      O => \^mem_reg[1][7]_0\
    );
\regA[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(7),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(7),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(7),
      O => \regA[7]_INST_0_i_1_n_0\
    );
\regA[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(7),
      I1 => \mem_reg[5]\(7),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(7),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(7),
      O => \regA[7]_INST_0_i_2_n_0\
    );
\regA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[8]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[8]_INST_0_i_2_n_0\,
      O => \^mem_reg[1][8]_0\
    );
\regA[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(8),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(8),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(8),
      O => \regA[8]_INST_0_i_1_n_0\
    );
\regA[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(8),
      I1 => \mem_reg[5]\(8),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(8),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(8),
      O => \regA[8]_INST_0_i_2_n_0\
    );
\regA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[9]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[9]_INST_0_i_2_n_0\,
      O => \^mem_reg[1][9]_0\
    );
\regA[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(9),
      I1 => \regA[15]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(9),
      I3 => \regA[15]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(9),
      O => \regA[9]_INST_0_i_1_n_0\
    );
\regA[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(9),
      I1 => \mem_reg[5]\(9),
      I2 => \regA[15]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(9),
      I4 => \regA[15]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(9),
      O => \regA[9]_INST_0_i_2_n_0\
    );
\regB[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[0]_INST_0_i_1_n_0\,
      I1 => \regB[0]_INST_0_i_2_n_0\,
      O => regB(0),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(0),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(0),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(0),
      O => \regB[0]_INST_0_i_1_n_0\
    );
\regB[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(0),
      I1 => \mem_reg[5]\(0),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(0),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(0),
      O => \regB[0]_INST_0_i_2_n_0\
    );
\regB[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[10]_INST_0_i_1_n_0\,
      I1 => \regB[10]_INST_0_i_2_n_0\,
      O => regB(10),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(10),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(10),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(10),
      O => \regB[10]_INST_0_i_1_n_0\
    );
\regB[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(10),
      I1 => \mem_reg[5]\(10),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(10),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(10),
      O => \regB[10]_INST_0_i_2_n_0\
    );
\regB[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[11]_INST_0_i_1_n_0\,
      O => regB(11)
    );
\regB[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[11]_INST_0_i_2_n_0\,
      I1 => \regB[11]_INST_0_i_3_n_0\,
      O => \regB[11]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(11),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(11),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(11),
      O => \regB[11]_INST_0_i_2_n_0\
    );
\regB[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(11),
      I1 => \mem_reg[5]\(11),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(11),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(11),
      O => \regB[11]_INST_0_i_3_n_0\
    );
\regB[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[12]_INST_0_i_1_n_0\,
      I1 => \regB[12]_INST_0_i_2_n_0\,
      O => regB(12),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(12),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(12),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(12),
      O => \regB[12]_INST_0_i_1_n_0\
    );
\regB[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(12),
      I1 => \mem_reg[5]\(12),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(12),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(12),
      O => \regB[12]_INST_0_i_2_n_0\
    );
\regB[13]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[13]_INST_0_i_1_n_0\,
      O => regB(13)
    );
\regB[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[13]_INST_0_i_2_n_0\,
      I1 => \regB[13]_INST_0_i_3_n_0\,
      O => \regB[13]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(13),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(13),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(13),
      O => \regB[13]_INST_0_i_2_n_0\
    );
\regB[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(13),
      I1 => \mem_reg[5]\(13),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(13),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(13),
      O => \regB[13]_INST_0_i_3_n_0\
    );
\regB[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[14]_INST_0_i_2_n_0\,
      I1 => \regB[14]_INST_0_i_3_n_0\,
      O => regB(14),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[14]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => instruction(5),
      I1 => instruction(12),
      I2 => instruction(14),
      I3 => instruction(2),
      O => \regB[14]_INST_0_i_1_n_0\
    );
\regB[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(14),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(14),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(14),
      O => \regB[14]_INST_0_i_2_n_0\
    );
\regB[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(14),
      I1 => \mem_reg[5]\(14),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(14),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(14),
      O => \regB[14]_INST_0_i_3_n_0\
    );
\regB[14]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => instruction(4),
      I1 => instruction(12),
      I2 => instruction(14),
      I3 => instruction(1),
      O => \regB[14]_INST_0_i_4_n_0\
    );
\regB[14]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(12),
      I2 => instruction(14),
      I3 => instruction(0),
      O => \regB[14]_INST_0_i_5_n_0\
    );
\regB[15]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[15]_INST_0_i_1_n_0\,
      O => regB(15)
    );
\regB[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[15]_INST_0_i_2_n_0\,
      I1 => \regB[15]_INST_0_i_3_n_0\,
      O => \regB[15]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F503F5F3"
    )
        port map (
      I0 => \mem_reg[2]\(15),
      I1 => \mem_reg[3]\(15),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[1]\(15),
      O => \regB[15]_INST_0_i_2_n_0\
    );
\regB[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \mem_reg[6]\(15),
      I1 => \mem_reg[7]\(15),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[4]\(15),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[5]\(15),
      O => \regB[15]_INST_0_i_3_n_0\
    );
\regB[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[1]_INST_0_i_1_n_0\,
      I1 => \regB[1]_INST_0_i_2_n_0\,
      O => regB(1),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(1),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(1),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(1),
      O => \regB[1]_INST_0_i_1_n_0\
    );
\regB[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(1),
      I1 => \mem_reg[5]\(1),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(1),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(1),
      O => \regB[1]_INST_0_i_2_n_0\
    );
\regB[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[2]_INST_0_i_1_n_0\,
      I1 => \regB[2]_INST_0_i_2_n_0\,
      O => regB(2),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(2),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(2),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(2),
      O => \regB[2]_INST_0_i_1_n_0\
    );
\regB[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(2),
      I1 => \mem_reg[5]\(2),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(2),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(2),
      O => \regB[2]_INST_0_i_2_n_0\
    );
\regB[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[3]_INST_0_i_1_n_0\,
      O => regB(3)
    );
\regB[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[3]_INST_0_i_2_n_0\,
      I1 => \regB[3]_INST_0_i_3_n_0\,
      O => \regB[3]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(3),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(3),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(3),
      O => \regB[3]_INST_0_i_2_n_0\
    );
\regB[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(3),
      I1 => \mem_reg[5]\(3),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(3),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(3),
      O => \regB[3]_INST_0_i_3_n_0\
    );
\regB[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[4]_INST_0_i_1_n_0\,
      I1 => \regB[4]_INST_0_i_2_n_0\,
      O => regB(4),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(4),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(4),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(4),
      O => \regB[4]_INST_0_i_1_n_0\
    );
\regB[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(4),
      I1 => \mem_reg[5]\(4),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(4),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(4),
      O => \regB[4]_INST_0_i_2_n_0\
    );
\regB[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[5]_INST_0_i_1_n_0\,
      I1 => \regB[5]_INST_0_i_2_n_0\,
      O => regB(5),
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \mem_reg[1]\(5),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(5),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(5),
      O => \regB[5]_INST_0_i_1_n_0\
    );
\regB[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[4]\(5),
      I1 => \mem_reg[5]\(5),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(5),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(5),
      O => \regB[5]_INST_0_i_2_n_0\
    );
\regB[6]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[6]_INST_0_i_1_n_0\,
      O => regB(6)
    );
\regB[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[6]_INST_0_i_2_n_0\,
      I1 => \regB[6]_INST_0_i_3_n_0\,
      O => \regB[6]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(6),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(6),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(6),
      O => \regB[6]_INST_0_i_2_n_0\
    );
\regB[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(6),
      I1 => \mem_reg[5]\(6),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(6),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(6),
      O => \regB[6]_INST_0_i_3_n_0\
    );
\regB[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[7]_INST_0_i_1_n_0\,
      O => regB(7)
    );
\regB[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[7]_INST_0_i_2_n_0\,
      I1 => \regB[7]_INST_0_i_3_n_0\,
      O => \regB[7]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(7),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(7),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(7),
      O => \regB[7]_INST_0_i_2_n_0\
    );
\regB[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(7),
      I1 => \mem_reg[5]\(7),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(7),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(7),
      O => \regB[7]_INST_0_i_3_n_0\
    );
\regB[8]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[8]_INST_0_i_1_n_0\,
      O => regB(8)
    );
\regB[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[8]_INST_0_i_2_n_0\,
      I1 => \regB[8]_INST_0_i_3_n_0\,
      O => \regB[8]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(8),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(8),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(8),
      O => \regB[8]_INST_0_i_2_n_0\
    );
\regB[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(8),
      I1 => \mem_reg[5]\(8),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(8),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(8),
      O => \regB[8]_INST_0_i_3_n_0\
    );
\regB[9]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regB[9]_INST_0_i_1_n_0\,
      O => regB(9)
    );
\regB[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[9]_INST_0_i_2_n_0\,
      I1 => \regB[9]_INST_0_i_3_n_0\,
      O => \regB[9]_INST_0_i_1_n_0\,
      S => \regB[14]_INST_0_i_1_n_0\
    );
\regB[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \mem_reg[1]\(9),
      I1 => \regB[14]_INST_0_i_4_n_0\,
      I2 => \mem_reg[2]\(9),
      I3 => \regB[14]_INST_0_i_5_n_0\,
      I4 => \mem_reg[3]\(9),
      O => \regB[9]_INST_0_i_2_n_0\
    );
\regB[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \mem_reg[4]\(9),
      I1 => \mem_reg[5]\(9),
      I2 => \regB[14]_INST_0_i_4_n_0\,
      I3 => \mem_reg[6]\(9),
      I4 => \regB[14]_INST_0_i_5_n_0\,
      I5 => \mem_reg[7]\(9),
      O => \regB[9]_INST_0_i_3_n_0\
    );
\sp_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => \sp_reg_reg[0]\,
      I1 => \^instruction[8]_0\,
      I2 => \sp_reg_reg[0]_0\,
      I3 => stack_ptr(0),
      O => D(0)
    );
\sub_out_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[7]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[7]_INST_0_i_2_n_0\,
      O => \mem_reg[1][7]_2\(3)
    );
\sub_out_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[6]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[6]_INST_0_i_2_n_0\,
      O => \mem_reg[1][7]_2\(2)
    );
\sub_out_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_3\,
      O => \mem_reg[1][7]_2\(1)
    );
\sub_out_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_2\,
      O => \mem_reg[1][7]_2\(0)
    );
\sub_out_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mem_reg[1][7]_0\,
      I1 => mux_2_to_1_1_c(7),
      O => \instruction[12]_3\(3)
    );
\sub_out_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mem_reg[1][6]_0\,
      I1 => mux_2_to_1_1_c(6),
      O => \instruction[12]_3\(2)
    );
\sub_out_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_3\,
      I1 => \add_out_carry__0_i_11_n_0\,
      O => \instruction[12]_3\(1)
    );
\sub_out_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_2\,
      I1 => \add_out_carry__0_i_12_n_0\,
      O => \instruction[12]_3\(0)
    );
\sub_out_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_5\,
      O => \regA[11]_INST_0_i_1_1\(3)
    );
\sub_out_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_4\,
      O => \regA[11]_INST_0_i_1_1\(2)
    );
\sub_out_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[9]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[9]_INST_0_i_2_n_0\,
      O => \regA[11]_INST_0_i_1_1\(1)
    );
\sub_out_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[8]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[8]_INST_0_i_2_n_0\,
      O => \regA[11]_INST_0_i_1_1\(0)
    );
\sub_out_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_5\,
      I1 => \add_out_carry__1_i_9_n_0\,
      O => \instruction[1]_0\(3)
    );
\sub_out_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_4\,
      I1 => \add_out_carry__1_i_10_n_0\,
      O => \instruction[1]_0\(2)
    );
\sub_out_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mem_reg[1][9]_0\,
      I1 => mux_2_to_1_1_c(9),
      O => \instruction[1]_0\(1)
    );
\sub_out_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^mem_reg[1][8]_0\,
      I1 => mux_2_to_1_1_c(8),
      O => \instruction[1]_0\(0)
    );
\sub_out_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_8\,
      O => \regA[14]_INST_0_i_1_1\(2)
    );
\sub_out_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_7\,
      O => \regA[14]_INST_0_i_1_1\(1)
    );
\sub_out_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_6\,
      O => \regA[14]_INST_0_i_1_1\(0)
    );
\sub_out_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_9\,
      I1 => \add_out_carry__2_i_8_n_0\,
      O => \instruction[5]\(3)
    );
\sub_out_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_8\,
      I1 => \add_out_carry__2_i_9_n_0\,
      O => \instruction[5]\(2)
    );
\sub_out_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_7\,
      I1 => \add_out_carry__2_i_10_n_0\,
      O => \instruction[5]\(1)
    );
\sub_out_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_6\,
      I1 => \add_out_carry__2_i_11_n_0\,
      O => \instruction[5]\(0)
    );
sub_out_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regA[3]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_1_n_0\,
      I2 => \regA[3]_INST_0_i_2_n_0\,
      O => \mem_reg[1][3]_1\(3)
    );
sub_out_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_1\,
      O => \mem_reg[1][3]_1\(2)
    );
sub_out_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => instruction_8_sn_1,
      O => \mem_reg[1][3]_1\(1)
    );
sub_out_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^instruction[8]_0\,
      O => \mem_reg[1][3]_1\(0)
    );
sub_out_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^mem_reg[1][3]_0\,
      I1 => add_out_carry_i_9_n_0,
      O => \instruction[15]\(3)
    );
sub_out_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction[8]_1\,
      I1 => add_out_carry_i_10_n_0,
      O => \instruction[15]\(2)
    );
sub_out_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => instruction_8_sn_1,
      I1 => add_out_carry_i_11_n_0,
      O => \instruction[15]\(1)
    );
sub_out_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction[8]_0\,
      I1 => mux_2_to_1_1_c(0),
      O => \instruction[15]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stack_ptr_reg is
  port (
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_0 : out STD_LOGIC;
    rst_1 : out STD_LOGIC;
    \instruction[15]\ : out STD_LOGIC;
    \sp_reg_reg[15]_0\ : in STD_LOGIC;
    \sp_reg_reg[14]_0\ : in STD_LOGIC;
    \sp_reg_reg[13]_0\ : in STD_LOGIC;
    \sp_reg_reg[12]_0\ : in STD_LOGIC;
    \sp_reg_reg[11]_0\ : in STD_LOGIC;
    \sp_reg_reg[10]_0\ : in STD_LOGIC;
    \sp_reg_reg[9]_0\ : in STD_LOGIC;
    \sp_reg_reg[8]_0\ : in STD_LOGIC;
    \sp_reg_reg[7]_0\ : in STD_LOGIC;
    \sp_reg_reg[6]_0\ : in STD_LOGIC;
    \sp_reg_reg[5]_0\ : in STD_LOGIC;
    \sp_reg_reg[4]_0\ : in STD_LOGIC;
    \sp_reg_reg[3]_0\ : in STD_LOGIC;
    \sp_reg_reg[2]_0\ : in STD_LOGIC;
    \sp_reg_reg[1]_0\ : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stack_ptr_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stack_ptr_reg is
  signal \^instruction[15]\ : STD_LOGIC;
  signal \^rst_0\ : STD_LOGIC;
  signal \^rst_1\ : STD_LOGIC;
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
  signal \sp_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \sp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sp_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \^stack_ptr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_sp_reg0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sp_reg0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of sp_reg0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sp_reg0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sp_reg0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \sp_reg0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \instruction[15]\ <= \^instruction[15]\;
  rst_0 <= \^rst_0\;
  rst_1 <= \^rst_1\;
  stack_ptr(15 downto 0) <= \^stack_ptr\(15 downto 0);
sp_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sp_reg0_carry_n_0,
      CO(2) => sp_reg0_carry_n_1,
      CO(1) => sp_reg0_carry_n_2,
      CO(0) => sp_reg0_carry_n_3,
      CYINIT => \^stack_ptr\(0),
      DI(3 downto 1) => \^stack_ptr\(3 downto 1),
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
      DI(3 downto 0) => \^stack_ptr\(7 downto 4),
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
      I0 => \^stack_ptr\(7),
      I1 => \^stack_ptr\(8),
      O => \sp_reg0_carry__0_i_1_n_0\
    );
\sp_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(6),
      I1 => \^stack_ptr\(7),
      O => \sp_reg0_carry__0_i_2_n_0\
    );
\sp_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(5),
      I1 => \^stack_ptr\(6),
      O => \sp_reg0_carry__0_i_3_n_0\
    );
\sp_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(4),
      I1 => \^stack_ptr\(5),
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
      DI(3 downto 0) => \^stack_ptr\(11 downto 8),
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
      I0 => \^stack_ptr\(11),
      I1 => \^stack_ptr\(12),
      O => \sp_reg0_carry__1_i_1_n_0\
    );
\sp_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(10),
      I1 => \^stack_ptr\(11),
      O => \sp_reg0_carry__1_i_2_n_0\
    );
\sp_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(9),
      I1 => \^stack_ptr\(10),
      O => \sp_reg0_carry__1_i_3_n_0\
    );
\sp_reg0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(8),
      I1 => \^stack_ptr\(9),
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
      DI(1 downto 0) => \^stack_ptr\(13 downto 12),
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
      I0 => \^stack_ptr\(14),
      I1 => \^stack_ptr\(15),
      O => \sp_reg0_carry__2_i_1_n_0\
    );
\sp_reg0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(13),
      I1 => \^stack_ptr\(14),
      O => \sp_reg0_carry__2_i_2_n_0\
    );
\sp_reg0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(12),
      I1 => \^stack_ptr\(13),
      O => \sp_reg0_carry__2_i_3_n_0\
    );
sp_reg0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^stack_ptr\(1),
      O => sp_reg0_carry_i_1_n_0
    );
sp_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(3),
      I1 => \^stack_ptr\(4),
      O => sp_reg0_carry_i_2_n_0
    );
sp_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(2),
      I1 => \^stack_ptr\(3),
      O => sp_reg0_carry_i_3_n_0
    );
sp_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^stack_ptr\(1),
      I1 => \^stack_ptr\(2),
      O => sp_reg0_carry_i_4_n_0
    );
sp_reg0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \^stack_ptr\(1),
      I1 => instruction(0),
      I2 => \^instruction[15]\,
      I3 => instruction(1),
      I4 => instruction(2),
      I5 => instruction(3),
      O => sp_reg0_carry_i_5_n_0
    );
\sp_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__1_n_6\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[10]_0\,
      O => \sp_reg[10]_i_1_n_0\
    );
\sp_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__1_n_5\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[11]_0\,
      O => \sp_reg[11]_i_1_n_0\
    );
\sp_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__1_n_4\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[12]_0\,
      O => \sp_reg[12]_i_1_n_0\
    );
\sp_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__2_n_7\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[13]_0\,
      O => \sp_reg[13]_i_1_n_0\
    );
\sp_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__2_n_6\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[14]_0\,
      O => \sp_reg[14]_i_1_n_0\
    );
\sp_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000015"
    )
        port map (
      I0 => \^instruction[15]\,
      I1 => instruction(0),
      I2 => instruction(1),
      I3 => instruction(3),
      I4 => instruction(2),
      I5 => rst,
      O => \sp_reg[15]_i_1_n_0\
    );
\sp_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__2_n_5\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[15]_0\,
      O => \sp_reg[15]_i_2_n_0\
    );
\sp_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => rst,
      I1 => instruction(2),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(0),
      I5 => \^instruction[15]\,
      O => \^rst_0\
    );
\sp_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => rst,
      I1 => instruction(2),
      I2 => instruction(3),
      I3 => instruction(1),
      I4 => instruction(0),
      I5 => \^instruction[15]\,
      O => \^rst_1\
    );
\sp_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => sp_reg0_carry_n_7,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[1]_0\,
      O => \sp_reg[1]_i_1_n_0\
    );
\sp_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => sp_reg0_carry_n_6,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[2]_0\,
      O => \sp_reg[2]_i_1_n_0\
    );
\sp_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rst_0\,
      I1 => sp_reg0_carry_n_5,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[3]_0\,
      O => \sp_reg[3]_i_1_n_0\
    );
\sp_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => sp_reg0_carry_n_4,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[4]_0\,
      O => \sp_reg[4]_i_1_n_0\
    );
\sp_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__0_n_7\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[5]_0\,
      O => \sp_reg[5]_i_1_n_0\
    );
\sp_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__0_n_6\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[6]_0\,
      O => \sp_reg[6]_i_1_n_0\
    );
\sp_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__0_n_5\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[7]_0\,
      O => \sp_reg[7]_i_1_n_0\
    );
\sp_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__0_n_4\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[8]_0\,
      O => \sp_reg[8]_i_1_n_0\
    );
\sp_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^rst_0\,
      I1 => \sp_reg0_carry__1_n_7\,
      I2 => \^rst_1\,
      I3 => \sp_reg_reg[9]_0\,
      O => \sp_reg[9]_i_1_n_0\
    );
\sp_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => D(0),
      Q => \^stack_ptr\(0),
      R => '0'
    );
\sp_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[10]_i_1_n_0\,
      Q => \^stack_ptr\(10),
      R => '0'
    );
\sp_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[11]_i_1_n_0\,
      Q => \^stack_ptr\(11),
      R => '0'
    );
\sp_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[12]_i_1_n_0\,
      Q => \^stack_ptr\(12),
      R => '0'
    );
\sp_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[13]_i_1_n_0\,
      Q => \^stack_ptr\(13),
      R => '0'
    );
\sp_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[14]_i_1_n_0\,
      Q => \^stack_ptr\(14),
      R => '0'
    );
\sp_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[15]_i_2_n_0\,
      Q => \^stack_ptr\(15),
      R => '0'
    );
\sp_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[1]_i_1_n_0\,
      Q => \^stack_ptr\(1),
      R => '0'
    );
\sp_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[2]_i_1_n_0\,
      Q => \^stack_ptr\(2),
      R => '0'
    );
\sp_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[3]_i_1_n_0\,
      Q => \^stack_ptr\(3),
      R => '0'
    );
\sp_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[4]_i_1_n_0\,
      Q => \^stack_ptr\(4),
      R => '0'
    );
\sp_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[5]_i_1_n_0\,
      Q => \^stack_ptr\(5),
      R => '0'
    );
\sp_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[6]_i_1_n_0\,
      Q => \^stack_ptr\(6),
      R => '0'
    );
\sp_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[7]_i_1_n_0\,
      Q => \^stack_ptr\(7),
      R => '0'
    );
\sp_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[8]_i_1_n_0\,
      Q => \^stack_ptr\(8),
      R => '0'
    );
\sp_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sp_reg[15]_i_1_n_0\,
      D => \sp_reg[9]_i_1_n_0\,
      Q => \^stack_ptr\(9),
      R => '0'
    );
stack_wr_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => instruction(6),
      I1 => instruction(4),
      I2 => instruction(5),
      O => \^instruction[15]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_cpu_top is
  port (
    \pc_reg[0]\ : out STD_LOGIC;
    ins_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \mem_reg[1][3]\ : out STD_LOGIC;
    \mem_reg[1][6]\ : out STD_LOGIC;
    \mem_reg[1][7]\ : out STD_LOGIC;
    \mem_reg[1][8]\ : out STD_LOGIC;
    \mem_reg[1][9]\ : out STD_LOGIC;
    instruction_8_sp_1 : out STD_LOGIC;
    instruction_15_sp_1 : out STD_LOGIC;
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 9 downto 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_cpu_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_cpu_top is
  signal ALU_inst_n_21 : STD_LOGIC;
  signal ALU_inst_n_23 : STD_LOGIC;
  signal ALU_inst_n_24 : STD_LOGIC;
  signal ALU_inst_n_25 : STD_LOGIC;
  signal ALU_inst_n_26 : STD_LOGIC;
  signal ALU_inst_n_27 : STD_LOGIC;
  signal ALU_inst_n_28 : STD_LOGIC;
  signal ALU_inst_n_29 : STD_LOGIC;
  signal ALU_inst_n_30 : STD_LOGIC;
  signal ALU_inst_n_31 : STD_LOGIC;
  signal ALU_inst_n_32 : STD_LOGIC;
  signal ALU_inst_n_33 : STD_LOGIC;
  signal ALU_inst_n_34 : STD_LOGIC;
  signal ALU_inst_n_35 : STD_LOGIC;
  signal ALU_inst_n_36 : STD_LOGIC;
  signal PC_n_16 : STD_LOGIC;
  signal PC_n_17 : STD_LOGIC;
  signal PC_n_18 : STD_LOGIC;
  signal PC_n_19 : STD_LOGIC;
  signal PC_n_20 : STD_LOGIC;
  signal PC_n_21 : STD_LOGIC;
  signal PC_n_22 : STD_LOGIC;
  signal PC_n_23 : STD_LOGIC;
  signal PC_n_24 : STD_LOGIC;
  signal PC_n_25 : STD_LOGIC;
  signal PC_n_26 : STD_LOGIC;
  signal PC_n_27 : STD_LOGIC;
  signal PC_n_28 : STD_LOGIC;
  signal PC_n_29 : STD_LOGIC;
  signal PC_n_30 : STD_LOGIC;
  signal PC_n_31 : STD_LOGIC;
  signal PC_n_32 : STD_LOGIC;
  signal PC_n_33 : STD_LOGIC;
  signal PC_n_34 : STD_LOGIC;
  signal PC_n_35 : STD_LOGIC;
  signal PC_n_36 : STD_LOGIC;
  signal PC_n_37 : STD_LOGIC;
  signal PC_n_38 : STD_LOGIC;
  signal PC_n_39 : STD_LOGIC;
  signal PC_n_40 : STD_LOGIC;
  signal PC_n_41 : STD_LOGIC;
  signal PC_n_42 : STD_LOGIC;
  signal PC_n_43 : STD_LOGIC;
  signal PC_n_44 : STD_LOGIC;
  signal PC_n_45 : STD_LOGIC;
  signal PC_n_46 : STD_LOGIC;
  signal PC_n_47 : STD_LOGIC;
  signal PC_n_48 : STD_LOGIC;
  signal b : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cmp_out_reg0 : STD_LOGIC;
  signal cmp_status_reg_inst_n_0 : STD_LOGIC;
  signal cmp_status_reg_inst_n_1 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ins_addr\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal instruction_15_sn_1 : STD_LOGIC;
  signal instruction_8_sn_1 : STD_LOGIC;
  signal \^mem_reg[1][3]\ : STD_LOGIC;
  signal \^mem_reg[1][6]\ : STD_LOGIC;
  signal \^mem_reg[1][7]\ : STD_LOGIC;
  signal \^mem_reg[1][8]\ : STD_LOGIC;
  signal \^mem_reg[1][9]\ : STD_LOGIC;
  signal next_ins_addr : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^pc_reg[0]\ : STD_LOGIC;
  signal reg_file_inst_n_0 : STD_LOGIC;
  signal reg_file_inst_n_1 : STD_LOGIC;
  signal reg_file_inst_n_10 : STD_LOGIC;
  signal reg_file_inst_n_100 : STD_LOGIC;
  signal reg_file_inst_n_101 : STD_LOGIC;
  signal reg_file_inst_n_102 : STD_LOGIC;
  signal reg_file_inst_n_103 : STD_LOGIC;
  signal reg_file_inst_n_104 : STD_LOGIC;
  signal reg_file_inst_n_105 : STD_LOGIC;
  signal reg_file_inst_n_106 : STD_LOGIC;
  signal reg_file_inst_n_107 : STD_LOGIC;
  signal reg_file_inst_n_108 : STD_LOGIC;
  signal reg_file_inst_n_109 : STD_LOGIC;
  signal reg_file_inst_n_110 : STD_LOGIC;
  signal reg_file_inst_n_111 : STD_LOGIC;
  signal reg_file_inst_n_112 : STD_LOGIC;
  signal reg_file_inst_n_113 : STD_LOGIC;
  signal reg_file_inst_n_114 : STD_LOGIC;
  signal reg_file_inst_n_115 : STD_LOGIC;
  signal reg_file_inst_n_116 : STD_LOGIC;
  signal reg_file_inst_n_117 : STD_LOGIC;
  signal reg_file_inst_n_118 : STD_LOGIC;
  signal reg_file_inst_n_119 : STD_LOGIC;
  signal reg_file_inst_n_120 : STD_LOGIC;
  signal reg_file_inst_n_121 : STD_LOGIC;
  signal reg_file_inst_n_122 : STD_LOGIC;
  signal reg_file_inst_n_123 : STD_LOGIC;
  signal reg_file_inst_n_124 : STD_LOGIC;
  signal reg_file_inst_n_125 : STD_LOGIC;
  signal reg_file_inst_n_126 : STD_LOGIC;
  signal reg_file_inst_n_127 : STD_LOGIC;
  signal reg_file_inst_n_128 : STD_LOGIC;
  signal reg_file_inst_n_129 : STD_LOGIC;
  signal reg_file_inst_n_130 : STD_LOGIC;
  signal reg_file_inst_n_131 : STD_LOGIC;
  signal reg_file_inst_n_132 : STD_LOGIC;
  signal reg_file_inst_n_133 : STD_LOGIC;
  signal reg_file_inst_n_134 : STD_LOGIC;
  signal reg_file_inst_n_135 : STD_LOGIC;
  signal reg_file_inst_n_136 : STD_LOGIC;
  signal reg_file_inst_n_137 : STD_LOGIC;
  signal reg_file_inst_n_138 : STD_LOGIC;
  signal reg_file_inst_n_139 : STD_LOGIC;
  signal reg_file_inst_n_140 : STD_LOGIC;
  signal reg_file_inst_n_141 : STD_LOGIC;
  signal reg_file_inst_n_142 : STD_LOGIC;
  signal reg_file_inst_n_143 : STD_LOGIC;
  signal reg_file_inst_n_144 : STD_LOGIC;
  signal reg_file_inst_n_145 : STD_LOGIC;
  signal reg_file_inst_n_146 : STD_LOGIC;
  signal reg_file_inst_n_147 : STD_LOGIC;
  signal reg_file_inst_n_148 : STD_LOGIC;
  signal reg_file_inst_n_149 : STD_LOGIC;
  signal reg_file_inst_n_15 : STD_LOGIC;
  signal reg_file_inst_n_150 : STD_LOGIC;
  signal reg_file_inst_n_151 : STD_LOGIC;
  signal reg_file_inst_n_152 : STD_LOGIC;
  signal reg_file_inst_n_153 : STD_LOGIC;
  signal reg_file_inst_n_154 : STD_LOGIC;
  signal reg_file_inst_n_155 : STD_LOGIC;
  signal reg_file_inst_n_156 : STD_LOGIC;
  signal reg_file_inst_n_157 : STD_LOGIC;
  signal reg_file_inst_n_16 : STD_LOGIC;
  signal reg_file_inst_n_17 : STD_LOGIC;
  signal reg_file_inst_n_18 : STD_LOGIC;
  signal reg_file_inst_n_19 : STD_LOGIC;
  signal reg_file_inst_n_2 : STD_LOGIC;
  signal reg_file_inst_n_3 : STD_LOGIC;
  signal reg_file_inst_n_37 : STD_LOGIC;
  signal reg_file_inst_n_38 : STD_LOGIC;
  signal reg_file_inst_n_39 : STD_LOGIC;
  signal reg_file_inst_n_4 : STD_LOGIC;
  signal reg_file_inst_n_40 : STD_LOGIC;
  signal reg_file_inst_n_41 : STD_LOGIC;
  signal reg_file_inst_n_42 : STD_LOGIC;
  signal reg_file_inst_n_43 : STD_LOGIC;
  signal reg_file_inst_n_44 : STD_LOGIC;
  signal reg_file_inst_n_45 : STD_LOGIC;
  signal reg_file_inst_n_46 : STD_LOGIC;
  signal reg_file_inst_n_47 : STD_LOGIC;
  signal reg_file_inst_n_48 : STD_LOGIC;
  signal reg_file_inst_n_49 : STD_LOGIC;
  signal reg_file_inst_n_5 : STD_LOGIC;
  signal reg_file_inst_n_50 : STD_LOGIC;
  signal reg_file_inst_n_51 : STD_LOGIC;
  signal reg_file_inst_n_52 : STD_LOGIC;
  signal reg_file_inst_n_6 : STD_LOGIC;
  signal reg_file_inst_n_63 : STD_LOGIC;
  signal reg_file_inst_n_8 : STD_LOGIC;
  signal reg_file_inst_n_80 : STD_LOGIC;
  signal reg_file_inst_n_81 : STD_LOGIC;
  signal reg_file_inst_n_82 : STD_LOGIC;
  signal reg_file_inst_n_83 : STD_LOGIC;
  signal reg_file_inst_n_84 : STD_LOGIC;
  signal reg_file_inst_n_85 : STD_LOGIC;
  signal reg_file_inst_n_86 : STD_LOGIC;
  signal reg_file_inst_n_87 : STD_LOGIC;
  signal reg_file_inst_n_88 : STD_LOGIC;
  signal reg_file_inst_n_89 : STD_LOGIC;
  signal reg_file_inst_n_9 : STD_LOGIC;
  signal reg_file_inst_n_90 : STD_LOGIC;
  signal reg_file_inst_n_91 : STD_LOGIC;
  signal reg_file_inst_n_92 : STD_LOGIC;
  signal reg_file_inst_n_93 : STD_LOGIC;
  signal reg_file_inst_n_94 : STD_LOGIC;
  signal reg_file_inst_n_95 : STD_LOGIC;
  signal reg_file_inst_n_96 : STD_LOGIC;
  signal reg_file_inst_n_97 : STD_LOGIC;
  signal reg_file_inst_n_98 : STD_LOGIC;
  signal reg_file_inst_n_99 : STD_LOGIC;
  signal \^stack_ptr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stack_ptr_reg_inst_n_16 : STD_LOGIC;
  signal stack_ptr_reg_inst_n_17 : STD_LOGIC;
begin
  ins_addr(14 downto 0) <= \^ins_addr\(14 downto 0);
  instruction_15_sp_1 <= instruction_15_sn_1;
  instruction_8_sp_1 <= instruction_8_sn_1;
  \mem_reg[1][3]\ <= \^mem_reg[1][3]\;
  \mem_reg[1][6]\ <= \^mem_reg[1][6]\;
  \mem_reg[1][7]\ <= \^mem_reg[1][7]\;
  \mem_reg[1][8]\ <= \^mem_reg[1][8]\;
  \mem_reg[1][9]\ <= \^mem_reg[1][9]\;
  \pc_reg[0]\ <= \^pc_reg[0]\;
  stack_ptr(15 downto 0) <= \^stack_ptr\(15 downto 0);
ALU_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU
     port map (
      CO(0) => ALU_inst_n_21,
      DI(3) => reg_file_inst_n_80,
      DI(2) => reg_file_inst_n_81,
      DI(1) => reg_file_inst_n_82,
      DI(0) => reg_file_inst_n_83,
      S(3) => reg_file_inst_n_126,
      S(2) => reg_file_inst_n_127,
      S(1) => reg_file_inst_n_128,
      S(0) => reg_file_inst_n_129,
      \cmp_out_reg0__7_carry__0_0\(3) => reg_file_inst_n_49,
      \cmp_out_reg0__7_carry__0_0\(2) => reg_file_inst_n_50,
      \cmp_out_reg0__7_carry__0_0\(1) => reg_file_inst_n_51,
      \cmp_out_reg0__7_carry__0_0\(0) => reg_file_inst_n_52,
      \cmp_out_reg0__7_carry__0_1\(3) => reg_file_inst_n_150,
      \cmp_out_reg0__7_carry__0_1\(2) => reg_file_inst_n_151,
      \cmp_out_reg0__7_carry__0_1\(1) => reg_file_inst_n_152,
      \cmp_out_reg0__7_carry__0_1\(0) => reg_file_inst_n_153,
      \cmp_out_reg0__7_carry__0_i_8\(0) => cmp_out_reg0,
      \cmp_out_reg0_carry__0_0\(3) => reg_file_inst_n_45,
      \cmp_out_reg0_carry__0_0\(2) => reg_file_inst_n_46,
      \cmp_out_reg0_carry__0_0\(1) => reg_file_inst_n_47,
      \cmp_out_reg0_carry__0_0\(0) => reg_file_inst_n_48,
      \cmp_out_reg0_carry__0_1\(3) => reg_file_inst_n_154,
      \cmp_out_reg0_carry__0_1\(2) => reg_file_inst_n_155,
      \cmp_out_reg0_carry__0_1\(1) => reg_file_inst_n_156,
      \cmp_out_reg0_carry__0_1\(0) => reg_file_inst_n_157,
      data0(15 downto 0) => data0(15 downto 0),
      instruction(3) => instruction(15),
      instruction(2 downto 0) => instruction(11 downto 9),
      \instruction[9]\ => ALU_inst_n_23,
      \instruction[9]_0\ => ALU_inst_n_24,
      \instruction[9]_1\ => ALU_inst_n_25,
      \instruction[9]_10\ => ALU_inst_n_34,
      \instruction[9]_11\ => ALU_inst_n_35,
      \instruction[9]_12\ => ALU_inst_n_36,
      \instruction[9]_2\ => ALU_inst_n_26,
      \instruction[9]_3\ => ALU_inst_n_27,
      \instruction[9]_4\ => ALU_inst_n_28,
      \instruction[9]_5\ => ALU_inst_n_29,
      \instruction[9]_6\ => ALU_inst_n_30,
      \instruction[9]_7\ => ALU_inst_n_31,
      \instruction[9]_8\ => ALU_inst_n_32,
      \instruction[9]_9\ => ALU_inst_n_33,
      \mem[1][0]_i_4\(3) => reg_file_inst_n_95,
      \mem[1][0]_i_4\(2) => reg_file_inst_n_96,
      \mem[1][0]_i_4\(1) => reg_file_inst_n_97,
      \mem[1][0]_i_4\(0) => reg_file_inst_n_98,
      \mem[1][0]_i_4_0\(3) => reg_file_inst_n_122,
      \mem[1][0]_i_4_0\(2) => reg_file_inst_n_123,
      \mem[1][0]_i_4_0\(1) => reg_file_inst_n_124,
      \mem[1][0]_i_4_0\(0) => reg_file_inst_n_125,
      \mem[1][12]_i_6_0\(2) => reg_file_inst_n_107,
      \mem[1][12]_i_6_0\(1) => reg_file_inst_n_108,
      \mem[1][12]_i_6_0\(0) => reg_file_inst_n_109,
      \mem[1][12]_i_6_1\(3) => reg_file_inst_n_110,
      \mem[1][12]_i_6_1\(2) => reg_file_inst_n_111,
      \mem[1][12]_i_6_1\(1) => reg_file_inst_n_112,
      \mem[1][12]_i_6_1\(0) => reg_file_inst_n_113,
      \mem[1][2]_i_3\(3) => reg_file_inst_n_37,
      \mem[1][2]_i_3\(2) => reg_file_inst_n_38,
      \mem[1][2]_i_3\(1) => reg_file_inst_n_39,
      \mem[1][2]_i_3\(0) => reg_file_inst_n_40,
      \mem[1][2]_i_3_0\(3) => reg_file_inst_n_142,
      \mem[1][2]_i_3_0\(2) => reg_file_inst_n_143,
      \mem[1][2]_i_3_0\(1) => reg_file_inst_n_144,
      \mem[1][2]_i_3_0\(0) => reg_file_inst_n_145,
      \mem[1][3]_i_3\(3) => reg_file_inst_n_41,
      \mem[1][3]_i_3\(2) => reg_file_inst_n_42,
      \mem[1][3]_i_3\(1) => reg_file_inst_n_43,
      \mem[1][3]_i_3\(0) => reg_file_inst_n_44,
      \mem[1][3]_i_3_0\(3) => reg_file_inst_n_138,
      \mem[1][3]_i_3_0\(2) => reg_file_inst_n_139,
      \mem[1][3]_i_3_0\(1) => reg_file_inst_n_140,
      \mem[1][3]_i_3_0\(0) => reg_file_inst_n_141,
      \mem[1][4]_i_5\(3) => reg_file_inst_n_84,
      \mem[1][4]_i_5\(2) => reg_file_inst_n_85,
      \mem[1][4]_i_5\(1) => reg_file_inst_n_86,
      \mem[1][4]_i_5\(0) => reg_file_inst_n_87,
      \mem[1][4]_i_5_0\(3) => reg_file_inst_n_114,
      \mem[1][4]_i_5_0\(2) => reg_file_inst_n_115,
      \mem[1][4]_i_5_0\(1) => reg_file_inst_n_116,
      \mem[1][4]_i_5_0\(0) => reg_file_inst_n_117,
      \mem[1][4]_i_6_0\(3) => reg_file_inst_n_99,
      \mem[1][4]_i_6_0\(2) => reg_file_inst_n_100,
      \mem[1][4]_i_6_0\(1) => reg_file_inst_n_101,
      \mem[1][4]_i_6_0\(0) => reg_file_inst_n_102,
      \mem[1][4]_i_6_1\(3) => reg_file_inst_n_146,
      \mem[1][4]_i_6_1\(2) => reg_file_inst_n_147,
      \mem[1][4]_i_6_1\(1) => reg_file_inst_n_148,
      \mem[1][4]_i_6_1\(0) => reg_file_inst_n_149,
      \mem[1][8]_i_5\(3) => reg_file_inst_n_88,
      \mem[1][8]_i_5\(2) => reg_file_inst_n_89,
      \mem[1][8]_i_5\(1) => reg_file_inst_n_90,
      \mem[1][8]_i_5\(0) => reg_file_inst_n_91,
      \mem[1][8]_i_5_0\(3) => reg_file_inst_n_118,
      \mem[1][8]_i_5_0\(2) => reg_file_inst_n_119,
      \mem[1][8]_i_5_0\(1) => reg_file_inst_n_120,
      \mem[1][8]_i_5_0\(0) => reg_file_inst_n_121,
      \mem[1][8]_i_6_0\(3) => reg_file_inst_n_103,
      \mem[1][8]_i_6_0\(2) => reg_file_inst_n_104,
      \mem[1][8]_i_6_0\(1) => reg_file_inst_n_105,
      \mem[1][8]_i_6_0\(0) => reg_file_inst_n_106,
      \mem[1][8]_i_6_1\(3) => reg_file_inst_n_134,
      \mem[1][8]_i_6_1\(2) => reg_file_inst_n_135,
      \mem[1][8]_i_6_1\(1) => reg_file_inst_n_136,
      \mem[1][8]_i_6_1\(0) => reg_file_inst_n_137,
      \mem_reg[1][15]\(2) => reg_file_inst_n_92,
      \mem_reg[1][15]\(1) => reg_file_inst_n_93,
      \mem_reg[1][15]\(0) => reg_file_inst_n_94,
      \mem_reg[1][15]_0\(3) => reg_file_inst_n_130,
      \mem_reg[1][15]_0\(2) => reg_file_inst_n_131,
      \mem_reg[1][15]_0\(1) => reg_file_inst_n_132,
      \mem_reg[1][15]_0\(0) => reg_file_inst_n_133,
      \sub_out_carry__2_i_7\(4) => data1(15),
      \sub_out_carry__2_i_7\(3 downto 0) => data1(3 downto 0)
    );
PC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_prog_cnt_reg
     port map (
      DI(0) => PC_n_32,
      S(3 downto 0) => \^ins_addr\(3 downto 0),
      b(15 downto 0) => b(15 downto 0),
      clk => clk,
      data_mem(15 downto 0) => data_mem(15 downto 0),
      data_mem_10_sp_1 => PC_n_26,
      data_mem_14_sp_1 => PC_n_30,
      data_mem_15_sp_1 => PC_n_31,
      data_mem_1_sp_1 => PC_n_17,
      data_mem_4_sp_1 => PC_n_20,
      data_mem_6_sp_1 => PC_n_22,
      data_mem_8_sp_1 => PC_n_24,
      data_mem_9_sp_1 => PC_n_25,
      from_stack(15 downto 0) => from_stack(15 downto 0),
      from_stack_11_sp_1 => PC_n_27,
      from_stack_12_sp_1 => PC_n_28,
      from_stack_13_sp_1 => PC_n_29,
      from_stack_2_sp_1 => PC_n_18,
      from_stack_3_sp_1 => PC_n_19,
      from_stack_5_sp_1 => PC_n_21,
      from_stack_7_sp_1 => PC_n_23,
      instruction(13 downto 11) => instruction(15 downto 13),
      instruction(10 downto 0) => instruction(10 downto 0),
      \instruction[3]\(3) => PC_n_33,
      \instruction[3]\(2) => PC_n_34,
      \instruction[3]\(1) => PC_n_35,
      \instruction[3]\(0) => PC_n_36,
      \instruction[7]\(3) => PC_n_37,
      \instruction[7]\(2) => PC_n_38,
      \instruction[7]\(1) => PC_n_39,
      \instruction[7]\(0) => PC_n_40,
      next_ins_addr(14 downto 0) => next_ins_addr(15 downto 1),
      \pc_reg[0]_0\ => \^pc_reg[0]\,
      \pc_reg[0]_1\ => PC_n_16,
      \pc_reg[10]_0\(3) => PC_n_41,
      \pc_reg[10]_0\(2) => PC_n_42,
      \pc_reg[10]_0\(1) => PC_n_43,
      \pc_reg[10]_0\(0) => PC_n_44,
      \pc_reg[11]_0\ => \^mem_reg[1][8]\,
      \pc_reg[11]_1\ => \^mem_reg[1][9]\,
      \pc_reg[11]_2\ => reg_file_inst_n_15,
      \pc_reg[11]_3\ => reg_file_inst_n_16,
      \pc_reg[12]_0\(3 downto 0) => \^ins_addr\(11 downto 8),
      \pc_reg[14]_0\(3) => PC_n_45,
      \pc_reg[14]_0\(2) => PC_n_46,
      \pc_reg[14]_0\(1) => PC_n_47,
      \pc_reg[14]_0\(0) => PC_n_48,
      \pc_reg[15]_0\(2 downto 0) => \^ins_addr\(14 downto 12),
      \pc_reg[15]_1\ => reg_file_inst_n_17,
      \pc_reg[15]_2\ => reg_file_inst_n_18,
      \pc_reg[15]_3\ => reg_file_inst_n_19,
      \pc_reg[15]_4\ => instruction_8_sn_1,
      \pc_reg[3]_0\ => cmp_status_reg_inst_n_0,
      \pc_reg[3]_1\ => reg_file_inst_n_1,
      \pc_reg[3]_2\ => reg_file_inst_n_5,
      \pc_reg[3]_3\ => \^mem_reg[1][3]\,
      \pc_reg[3]_4\ => reg_file_inst_n_2,
      \pc_reg[7]_0\ => reg_file_inst_n_9,
      \pc_reg[7]_1\ => reg_file_inst_n_10,
      \pc_reg[7]_2\ => \^mem_reg[1][6]\,
      \pc_reg[7]_3\ => \^mem_reg[1][7]\,
      \pc_reg[8]_0\(3 downto 0) => \^ins_addr\(7 downto 4),
      rst => rst
    );
adder_0_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      DI(0) => PC_n_32,
      b(15 downto 0) => b(15 downto 0),
      ins_addr(3 downto 0) => \^ins_addr\(12 downto 9),
      instruction(9 downto 0) => instruction(9 downto 0),
      \pc[11]_i_5\(3) => PC_n_41,
      \pc[11]_i_5\(2) => PC_n_42,
      \pc[11]_i_5\(1) => PC_n_43,
      \pc[11]_i_5\(0) => PC_n_44,
      \pc[15]_i_6\(3) => PC_n_45,
      \pc[15]_i_6\(2) => PC_n_46,
      \pc[15]_i_6\(1) => PC_n_47,
      \pc[15]_i_6\(0) => PC_n_48,
      \pc[3]_i_6\(3) => PC_n_33,
      \pc[3]_i_6\(2) => PC_n_34,
      \pc[3]_i_6\(1) => PC_n_35,
      \pc[3]_i_6\(0) => PC_n_36,
      \pc[7]_i_5\(3) => PC_n_37,
      \pc[7]_i_5\(2) => PC_n_38,
      \pc[7]_i_5\(1) => PC_n_39,
      \pc[7]_i_5\(0) => PC_n_40
    );
adder_1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      ins_addr(14 downto 0) => \^ins_addr\(14 downto 0),
      \mem[1][1]_i_2\ => \^pc_reg[0]\,
      next_ins_addr(14 downto 0) => next_ins_addr(15 downto 1)
    );
cmp_status_reg_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmp_status_reg
     port map (
      clk => clk,
      \cmp_status_reg[0]_0\ => reg_file_inst_n_3,
      \cmp_status_reg[0]_1\ => reg_file_inst_n_0,
      \cmp_status_reg[1]_0\ => reg_file_inst_n_4,
      \cmp_status_reg[2]_0\ => reg_file_inst_n_6,
      \cmp_status_reg[3]_0\ => reg_file_inst_n_8,
      instruction(6 downto 0) => instruction(15 downto 9),
      \instruction[11]\ => cmp_status_reg_inst_n_1,
      \instruction[13]\ => cmp_status_reg_inst_n_0,
      rst => rst
    );
reg_file_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_file
     port map (
      CO(0) => ALU_inst_n_21,
      D(0) => reg_file_inst_n_63,
      DI(3) => reg_file_inst_n_80,
      DI(2) => reg_file_inst_n_81,
      DI(1) => reg_file_inst_n_82,
      DI(0) => reg_file_inst_n_83,
      S(3) => reg_file_inst_n_126,
      S(2) => reg_file_inst_n_127,
      S(1) => reg_file_inst_n_128,
      S(0) => reg_file_inst_n_129,
      clk => clk,
      data0(15 downto 0) => data0(15 downto 0),
      inr(2 downto 0) => inr(2 downto 0),
      instruction(15 downto 0) => instruction(15 downto 0),
      \instruction[12]_0\(3) => reg_file_inst_n_45,
      \instruction[12]_0\(2) => reg_file_inst_n_46,
      \instruction[12]_0\(1) => reg_file_inst_n_47,
      \instruction[12]_0\(0) => reg_file_inst_n_48,
      \instruction[12]_1\(3) => reg_file_inst_n_49,
      \instruction[12]_1\(2) => reg_file_inst_n_50,
      \instruction[12]_1\(1) => reg_file_inst_n_51,
      \instruction[12]_1\(0) => reg_file_inst_n_52,
      \instruction[12]_2\(3) => reg_file_inst_n_114,
      \instruction[12]_2\(2) => reg_file_inst_n_115,
      \instruction[12]_2\(1) => reg_file_inst_n_116,
      \instruction[12]_2\(0) => reg_file_inst_n_117,
      \instruction[12]_3\(3) => reg_file_inst_n_146,
      \instruction[12]_3\(2) => reg_file_inst_n_147,
      \instruction[12]_3\(1) => reg_file_inst_n_148,
      \instruction[12]_3\(0) => reg_file_inst_n_149,
      \instruction[12]_4\(3) => reg_file_inst_n_150,
      \instruction[12]_4\(2) => reg_file_inst_n_151,
      \instruction[12]_4\(1) => reg_file_inst_n_152,
      \instruction[12]_4\(0) => reg_file_inst_n_153,
      \instruction[12]_5\(3) => reg_file_inst_n_154,
      \instruction[12]_5\(2) => reg_file_inst_n_155,
      \instruction[12]_5\(1) => reg_file_inst_n_156,
      \instruction[12]_5\(0) => reg_file_inst_n_157,
      \instruction[15]\(3) => reg_file_inst_n_122,
      \instruction[15]\(2) => reg_file_inst_n_123,
      \instruction[15]\(1) => reg_file_inst_n_124,
      \instruction[15]\(0) => reg_file_inst_n_125,
      \instruction[1]\(3) => reg_file_inst_n_118,
      \instruction[1]\(2) => reg_file_inst_n_119,
      \instruction[1]\(1) => reg_file_inst_n_120,
      \instruction[1]\(0) => reg_file_inst_n_121,
      \instruction[1]_0\(3) => reg_file_inst_n_134,
      \instruction[1]_0\(2) => reg_file_inst_n_135,
      \instruction[1]_0\(1) => reg_file_inst_n_136,
      \instruction[1]_0\(0) => reg_file_inst_n_137,
      \instruction[4]\(3) => reg_file_inst_n_37,
      \instruction[4]\(2) => reg_file_inst_n_38,
      \instruction[4]\(1) => reg_file_inst_n_39,
      \instruction[4]\(0) => reg_file_inst_n_40,
      \instruction[4]_0\(3) => reg_file_inst_n_41,
      \instruction[4]_0\(2) => reg_file_inst_n_42,
      \instruction[4]_0\(1) => reg_file_inst_n_43,
      \instruction[4]_0\(0) => reg_file_inst_n_44,
      \instruction[4]_1\(3) => reg_file_inst_n_138,
      \instruction[4]_1\(2) => reg_file_inst_n_139,
      \instruction[4]_1\(1) => reg_file_inst_n_140,
      \instruction[4]_1\(0) => reg_file_inst_n_141,
      \instruction[4]_2\(3) => reg_file_inst_n_142,
      \instruction[4]_2\(2) => reg_file_inst_n_143,
      \instruction[4]_2\(1) => reg_file_inst_n_144,
      \instruction[4]_2\(0) => reg_file_inst_n_145,
      \instruction[5]\(3) => reg_file_inst_n_110,
      \instruction[5]\(2) => reg_file_inst_n_111,
      \instruction[5]\(1) => reg_file_inst_n_112,
      \instruction[5]\(0) => reg_file_inst_n_113,
      \instruction[5]_0\(3) => reg_file_inst_n_130,
      \instruction[5]_0\(2) => reg_file_inst_n_131,
      \instruction[5]_0\(1) => reg_file_inst_n_132,
      \instruction[5]_0\(0) => reg_file_inst_n_133,
      \instruction[8]_0\ => reg_file_inst_n_2,
      \instruction[8]_1\ => reg_file_inst_n_5,
      \instruction[8]_2\ => reg_file_inst_n_9,
      \instruction[8]_3\ => reg_file_inst_n_10,
      \instruction[8]_4\ => reg_file_inst_n_15,
      \instruction[8]_5\ => reg_file_inst_n_16,
      \instruction[8]_6\ => reg_file_inst_n_17,
      \instruction[8]_7\ => reg_file_inst_n_18,
      \instruction[8]_8\ => reg_file_inst_n_19,
      \instruction[8]_9\ => instruction_8_sn_1,
      \instruction[9]_0\ => reg_file_inst_n_6,
      \instruction[9]_1\ => reg_file_inst_n_8,
      instruction_10_sp_1 => reg_file_inst_n_0,
      instruction_12_sp_1 => reg_file_inst_n_3,
      instruction_8_sp_1 => reg_file_inst_n_1,
      instruction_9_sp_1 => reg_file_inst_n_4,
      \mem_reg[1][0]_0\ => cmp_status_reg_inst_n_1,
      \mem_reg[1][0]_1\ => PC_n_16,
      \mem_reg[1][10]_0\ => ALU_inst_n_32,
      \mem_reg[1][10]_1\ => PC_n_26,
      \mem_reg[1][11]_0\ => ALU_inst_n_33,
      \mem_reg[1][11]_1\ => PC_n_27,
      \mem_reg[1][12]_0\ => ALU_inst_n_34,
      \mem_reg[1][12]_1\ => PC_n_28,
      \mem_reg[1][13]_0\ => ALU_inst_n_35,
      \mem_reg[1][13]_1\ => PC_n_29,
      \mem_reg[1][14]_0\ => ALU_inst_n_36,
      \mem_reg[1][14]_1\ => PC_n_30,
      \mem_reg[1][15]_0\(4) => data1(15),
      \mem_reg[1][15]_0\(3 downto 0) => data1(3 downto 0),
      \mem_reg[1][15]_1\ => PC_n_31,
      \mem_reg[1][1]_0\ => ALU_inst_n_23,
      \mem_reg[1][1]_1\ => PC_n_17,
      \mem_reg[1][2]_0\ => ALU_inst_n_24,
      \mem_reg[1][2]_1\ => PC_n_18,
      \mem_reg[1][3]_0\ => \^mem_reg[1][3]\,
      \mem_reg[1][3]_1\(3) => reg_file_inst_n_95,
      \mem_reg[1][3]_1\(2) => reg_file_inst_n_96,
      \mem_reg[1][3]_1\(1) => reg_file_inst_n_97,
      \mem_reg[1][3]_1\(0) => reg_file_inst_n_98,
      \mem_reg[1][3]_2\(0) => cmp_out_reg0,
      \mem_reg[1][3]_3\ => ALU_inst_n_25,
      \mem_reg[1][3]_4\ => PC_n_19,
      \mem_reg[1][4]_0\ => ALU_inst_n_26,
      \mem_reg[1][4]_1\ => PC_n_20,
      \mem_reg[1][5]_0\ => ALU_inst_n_27,
      \mem_reg[1][5]_1\ => PC_n_21,
      \mem_reg[1][6]_0\ => \^mem_reg[1][6]\,
      \mem_reg[1][6]_1\ => ALU_inst_n_28,
      \mem_reg[1][6]_2\ => PC_n_22,
      \mem_reg[1][7]_0\ => \^mem_reg[1][7]\,
      \mem_reg[1][7]_1\(3) => reg_file_inst_n_84,
      \mem_reg[1][7]_1\(2) => reg_file_inst_n_85,
      \mem_reg[1][7]_1\(1) => reg_file_inst_n_86,
      \mem_reg[1][7]_1\(0) => reg_file_inst_n_87,
      \mem_reg[1][7]_2\(3) => reg_file_inst_n_99,
      \mem_reg[1][7]_2\(2) => reg_file_inst_n_100,
      \mem_reg[1][7]_2\(1) => reg_file_inst_n_101,
      \mem_reg[1][7]_2\(0) => reg_file_inst_n_102,
      \mem_reg[1][7]_3\ => ALU_inst_n_29,
      \mem_reg[1][7]_4\ => PC_n_23,
      \mem_reg[1][8]_0\ => \^mem_reg[1][8]\,
      \mem_reg[1][8]_1\ => ALU_inst_n_30,
      \mem_reg[1][8]_2\ => PC_n_24,
      \mem_reg[1][9]_0\ => \^mem_reg[1][9]\,
      \mem_reg[1][9]_1\ => ALU_inst_n_31,
      \mem_reg[1][9]_2\ => PC_n_25,
      \mem_reg[6][0]_0\ => instruction_15_sn_1,
      outvalue(15 downto 0) => outvalue(15 downto 0),
      regA(9 downto 0) => regA(9 downto 0),
      \regA[11]_INST_0_i_1_0\(3) => reg_file_inst_n_88,
      \regA[11]_INST_0_i_1_0\(2) => reg_file_inst_n_89,
      \regA[11]_INST_0_i_1_0\(1) => reg_file_inst_n_90,
      \regA[11]_INST_0_i_1_0\(0) => reg_file_inst_n_91,
      \regA[11]_INST_0_i_1_1\(3) => reg_file_inst_n_103,
      \regA[11]_INST_0_i_1_1\(2) => reg_file_inst_n_104,
      \regA[11]_INST_0_i_1_1\(1) => reg_file_inst_n_105,
      \regA[11]_INST_0_i_1_1\(0) => reg_file_inst_n_106,
      \regA[14]_INST_0_i_1_0\(2) => reg_file_inst_n_92,
      \regA[14]_INST_0_i_1_0\(1) => reg_file_inst_n_93,
      \regA[14]_INST_0_i_1_0\(0) => reg_file_inst_n_94,
      \regA[14]_INST_0_i_1_1\(2) => reg_file_inst_n_107,
      \regA[14]_INST_0_i_1_1\(1) => reg_file_inst_n_108,
      \regA[14]_INST_0_i_1_1\(0) => reg_file_inst_n_109,
      regB(15 downto 0) => regB(15 downto 0),
      rst => rst,
      \sp_reg_reg[0]\ => stack_ptr_reg_inst_n_17,
      \sp_reg_reg[0]_0\ => stack_ptr_reg_inst_n_16,
      stack_ptr(0) => \^stack_ptr\(0)
    );
stack_ptr_reg_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stack_ptr_reg
     port map (
      D(0) => reg_file_inst_n_63,
      clk => clk,
      instruction(6 downto 0) => instruction(15 downto 9),
      \instruction[15]\ => instruction_15_sn_1,
      rst => rst,
      rst_0 => stack_ptr_reg_inst_n_16,
      rst_1 => stack_ptr_reg_inst_n_17,
      \sp_reg_reg[10]_0\ => reg_file_inst_n_15,
      \sp_reg_reg[11]_0\ => reg_file_inst_n_16,
      \sp_reg_reg[12]_0\ => reg_file_inst_n_17,
      \sp_reg_reg[13]_0\ => reg_file_inst_n_18,
      \sp_reg_reg[14]_0\ => reg_file_inst_n_19,
      \sp_reg_reg[15]_0\ => instruction_8_sn_1,
      \sp_reg_reg[1]_0\ => reg_file_inst_n_1,
      \sp_reg_reg[2]_0\ => reg_file_inst_n_5,
      \sp_reg_reg[3]_0\ => \^mem_reg[1][3]\,
      \sp_reg_reg[4]_0\ => reg_file_inst_n_9,
      \sp_reg_reg[5]_0\ => reg_file_inst_n_10,
      \sp_reg_reg[6]_0\ => \^mem_reg[1][6]\,
      \sp_reg_reg[7]_0\ => \^mem_reg[1][7]\,
      \sp_reg_reg[8]_0\ => \^mem_reg[1][8]\,
      \sp_reg_reg[9]_0\ => \^mem_reg[1][9]\,
      stack_ptr(15 downto 0) => \^stack_ptr\(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_mem_wr : out STD_LOGIC;
    from_stack : in STD_LOGIC_VECTOR ( 15 downto 0 );
    inr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ins_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 15 downto 0 );
    outvalue : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_ptr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stack_wr : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_shell_cpu_top_0_0,shell_cpu_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_cpu_top,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal U0_n_38 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_cpu_top
     port map (
      clk => clk,
      data_mem(15 downto 0) => data_mem(15 downto 0),
      from_stack(15 downto 0) => from_stack(15 downto 0),
      inr(2 downto 0) => inr(2 downto 0),
      ins_addr(14 downto 0) => ins_addr(15 downto 1),
      instruction(15 downto 0) => instruction(15 downto 0),
      instruction_15_sp_1 => U0_n_38,
      instruction_8_sp_1 => regA(15),
      \mem_reg[1][3]\ => regA(3),
      \mem_reg[1][6]\ => regA(6),
      \mem_reg[1][7]\ => regA(7),
      \mem_reg[1][8]\ => regA(8),
      \mem_reg[1][9]\ => regA(9),
      outvalue(15 downto 0) => outvalue(15 downto 0),
      \pc_reg[0]\ => ins_addr(0),
      regA(9 downto 5) => regA(14 downto 10),
      regA(4 downto 3) => regA(5 downto 4),
      regA(2 downto 0) => regA(2 downto 0),
      regB(15 downto 0) => regB(15 downto 0),
      rst => rst,
      stack_ptr(15 downto 0) => stack_ptr(15 downto 0)
    );
data_mem_wr_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => instruction(15),
      I1 => instruction(14),
      I2 => instruction(13),
      O => data_mem_wr
    );
stack_wr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(11),
      I2 => instruction(10),
      I3 => U0_n_38,
      I4 => instruction(9),
      O => stack_wr
    );
end STRUCTURE;
