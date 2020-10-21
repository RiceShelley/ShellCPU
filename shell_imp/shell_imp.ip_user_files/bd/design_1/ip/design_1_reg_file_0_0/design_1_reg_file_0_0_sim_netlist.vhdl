-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Oct  5 21:34:27 2020
-- Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_reg_file_0_0/design_1_reg_file_0_0_sim_netlist.vhdl
-- Design      : design_1_reg_file_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_file_0_0_reg_file is
  port (
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    write_addrC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : in STD_LOGIC;
    regC : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    read_addrA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    read_addrB : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_reg_file_0_0_reg_file : entity is "reg_file";
end design_1_reg_file_0_0_reg_file;

architecture STRUCTURE of design_1_reg_file_0_0_reg_file is
  signal \mem[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \mem[0]_7\ : STD_LOGIC;
  signal \mem[1]_0\ : STD_LOGIC;
  signal \mem[2]_1\ : STD_LOGIC;
  signal \mem[3]_2\ : STD_LOGIC;
  signal \mem[4]_3\ : STD_LOGIC;
  signal \mem[5]_4\ : STD_LOGIC;
  signal \mem[6]_5\ : STD_LOGIC;
  signal \mem[7]_6\ : STD_LOGIC;
  signal \mem_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[6]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \mem_reg[7]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \regA[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regA[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regA[5]_INST_0_i_2_n_0\ : STD_LOGIC;
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
  signal \regB[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \regB[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \regB[9]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\mem[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => write_addrC(1),
      I1 => write_addrC(0),
      I2 => write_addrC(2),
      I3 => wr_en,
      O => \mem[0][15]_i_1_n_0\
    );
\mem[0][15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => write_addrC(2),
      I1 => write_addrC(0),
      I2 => write_addrC(1),
      O => \mem[0]_7\
    );
\mem[1][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(1),
      I2 => write_addrC(2),
      I3 => write_addrC(0),
      O => \mem[1]_0\
    );
\mem[2][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(2),
      I2 => write_addrC(0),
      I3 => write_addrC(1),
      O => \mem[2]_1\
    );
\mem[3][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(1),
      I2 => write_addrC(0),
      I3 => write_addrC(2),
      O => \mem[3]_2\
    );
\mem[4][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(1),
      I2 => write_addrC(0),
      I3 => write_addrC(2),
      O => \mem[4]_3\
    );
\mem[5][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(2),
      I2 => write_addrC(0),
      I3 => write_addrC(1),
      O => \mem[5]_4\
    );
\mem[6][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(1),
      I2 => write_addrC(2),
      I3 => write_addrC(0),
      O => \mem[6]_5\
    );
\mem[7][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wr_en,
      I1 => write_addrC(2),
      I2 => write_addrC(0),
      I3 => write_addrC(1),
      O => \mem[7]_6\
    );
\mem_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(0),
      Q => \mem_reg[0]\(0),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(10),
      Q => \mem_reg[0]\(10),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(11),
      Q => \mem_reg[0]\(11),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(12),
      Q => \mem_reg[0]\(12),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(13),
      Q => \mem_reg[0]\(13),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(14),
      Q => \mem_reg[0]\(14),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(15),
      Q => \mem_reg[0]\(15),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(1),
      Q => \mem_reg[0]\(1),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(2),
      Q => \mem_reg[0]\(2),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(3),
      Q => \mem_reg[0]\(3),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(4),
      Q => \mem_reg[0]\(4),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(5),
      Q => \mem_reg[0]\(5),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(6),
      Q => \mem_reg[0]\(6),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(7),
      Q => \mem_reg[0]\(7),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(8),
      Q => \mem_reg[0]\(8),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[0]_7\,
      D => regC(9),
      Q => \mem_reg[0]\(9),
      R => \mem[0][15]_i_1_n_0\
    );
\mem_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(0),
      Q => \mem_reg[1]\(0),
      R => '0'
    );
\mem_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(10),
      Q => \mem_reg[1]\(10),
      R => '0'
    );
\mem_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(11),
      Q => \mem_reg[1]\(11),
      R => '0'
    );
\mem_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(12),
      Q => \mem_reg[1]\(12),
      R => '0'
    );
\mem_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(13),
      Q => \mem_reg[1]\(13),
      R => '0'
    );
\mem_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(14),
      Q => \mem_reg[1]\(14),
      R => '0'
    );
\mem_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(15),
      Q => \mem_reg[1]\(15),
      R => '0'
    );
\mem_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(1),
      Q => \mem_reg[1]\(1),
      R => '0'
    );
\mem_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(2),
      Q => \mem_reg[1]\(2),
      R => '0'
    );
\mem_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(3),
      Q => \mem_reg[1]\(3),
      R => '0'
    );
\mem_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(4),
      Q => \mem_reg[1]\(4),
      R => '0'
    );
\mem_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(5),
      Q => \mem_reg[1]\(5),
      R => '0'
    );
\mem_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(6),
      Q => \mem_reg[1]\(6),
      R => '0'
    );
\mem_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(7),
      Q => \mem_reg[1]\(7),
      R => '0'
    );
\mem_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(8),
      Q => \mem_reg[1]\(8),
      R => '0'
    );
\mem_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[1]_0\,
      D => regC(9),
      Q => \mem_reg[1]\(9),
      R => '0'
    );
\mem_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(0),
      Q => \mem_reg[2]\(0),
      R => '0'
    );
\mem_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(10),
      Q => \mem_reg[2]\(10),
      R => '0'
    );
\mem_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(11),
      Q => \mem_reg[2]\(11),
      R => '0'
    );
\mem_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(12),
      Q => \mem_reg[2]\(12),
      R => '0'
    );
\mem_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(13),
      Q => \mem_reg[2]\(13),
      R => '0'
    );
\mem_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(14),
      Q => \mem_reg[2]\(14),
      R => '0'
    );
\mem_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(15),
      Q => \mem_reg[2]\(15),
      R => '0'
    );
\mem_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(1),
      Q => \mem_reg[2]\(1),
      R => '0'
    );
\mem_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(2),
      Q => \mem_reg[2]\(2),
      R => '0'
    );
\mem_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(3),
      Q => \mem_reg[2]\(3),
      R => '0'
    );
\mem_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(4),
      Q => \mem_reg[2]\(4),
      R => '0'
    );
\mem_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(5),
      Q => \mem_reg[2]\(5),
      R => '0'
    );
\mem_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(6),
      Q => \mem_reg[2]\(6),
      R => '0'
    );
\mem_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(7),
      Q => \mem_reg[2]\(7),
      R => '0'
    );
\mem_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(8),
      Q => \mem_reg[2]\(8),
      R => '0'
    );
\mem_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[2]_1\,
      D => regC(9),
      Q => \mem_reg[2]\(9),
      R => '0'
    );
\mem_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(0),
      Q => \mem_reg[3]\(0),
      R => '0'
    );
\mem_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(10),
      Q => \mem_reg[3]\(10),
      R => '0'
    );
\mem_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(11),
      Q => \mem_reg[3]\(11),
      R => '0'
    );
\mem_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(12),
      Q => \mem_reg[3]\(12),
      R => '0'
    );
\mem_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(13),
      Q => \mem_reg[3]\(13),
      R => '0'
    );
\mem_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(14),
      Q => \mem_reg[3]\(14),
      R => '0'
    );
\mem_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(15),
      Q => \mem_reg[3]\(15),
      R => '0'
    );
\mem_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(1),
      Q => \mem_reg[3]\(1),
      R => '0'
    );
\mem_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(2),
      Q => \mem_reg[3]\(2),
      R => '0'
    );
\mem_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(3),
      Q => \mem_reg[3]\(3),
      R => '0'
    );
\mem_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(4),
      Q => \mem_reg[3]\(4),
      R => '0'
    );
\mem_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(5),
      Q => \mem_reg[3]\(5),
      R => '0'
    );
\mem_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(6),
      Q => \mem_reg[3]\(6),
      R => '0'
    );
\mem_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(7),
      Q => \mem_reg[3]\(7),
      R => '0'
    );
\mem_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(8),
      Q => \mem_reg[3]\(8),
      R => '0'
    );
\mem_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[3]_2\,
      D => regC(9),
      Q => \mem_reg[3]\(9),
      R => '0'
    );
\mem_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(0),
      Q => \mem_reg[4]\(0),
      R => '0'
    );
\mem_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(10),
      Q => \mem_reg[4]\(10),
      R => '0'
    );
\mem_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(11),
      Q => \mem_reg[4]\(11),
      R => '0'
    );
\mem_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(12),
      Q => \mem_reg[4]\(12),
      R => '0'
    );
\mem_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(13),
      Q => \mem_reg[4]\(13),
      R => '0'
    );
\mem_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(14),
      Q => \mem_reg[4]\(14),
      R => '0'
    );
\mem_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(15),
      Q => \mem_reg[4]\(15),
      R => '0'
    );
\mem_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(1),
      Q => \mem_reg[4]\(1),
      R => '0'
    );
\mem_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(2),
      Q => \mem_reg[4]\(2),
      R => '0'
    );
\mem_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(3),
      Q => \mem_reg[4]\(3),
      R => '0'
    );
\mem_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(4),
      Q => \mem_reg[4]\(4),
      R => '0'
    );
\mem_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(5),
      Q => \mem_reg[4]\(5),
      R => '0'
    );
\mem_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(6),
      Q => \mem_reg[4]\(6),
      R => '0'
    );
\mem_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(7),
      Q => \mem_reg[4]\(7),
      R => '0'
    );
\mem_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(8),
      Q => \mem_reg[4]\(8),
      R => '0'
    );
\mem_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[4]_3\,
      D => regC(9),
      Q => \mem_reg[4]\(9),
      R => '0'
    );
\mem_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(0),
      Q => \mem_reg[5]\(0),
      R => '0'
    );
\mem_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(10),
      Q => \mem_reg[5]\(10),
      R => '0'
    );
\mem_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(11),
      Q => \mem_reg[5]\(11),
      R => '0'
    );
\mem_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(12),
      Q => \mem_reg[5]\(12),
      R => '0'
    );
\mem_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(13),
      Q => \mem_reg[5]\(13),
      R => '0'
    );
\mem_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(14),
      Q => \mem_reg[5]\(14),
      R => '0'
    );
\mem_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(15),
      Q => \mem_reg[5]\(15),
      R => '0'
    );
\mem_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(1),
      Q => \mem_reg[5]\(1),
      R => '0'
    );
\mem_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(2),
      Q => \mem_reg[5]\(2),
      R => '0'
    );
\mem_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(3),
      Q => \mem_reg[5]\(3),
      R => '0'
    );
\mem_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(4),
      Q => \mem_reg[5]\(4),
      R => '0'
    );
\mem_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(5),
      Q => \mem_reg[5]\(5),
      R => '0'
    );
\mem_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(6),
      Q => \mem_reg[5]\(6),
      R => '0'
    );
\mem_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(7),
      Q => \mem_reg[5]\(7),
      R => '0'
    );
\mem_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(8),
      Q => \mem_reg[5]\(8),
      R => '0'
    );
\mem_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[5]_4\,
      D => regC(9),
      Q => \mem_reg[5]\(9),
      R => '0'
    );
\mem_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(0),
      Q => \mem_reg[6]\(0),
      R => '0'
    );
\mem_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(10),
      Q => \mem_reg[6]\(10),
      R => '0'
    );
\mem_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(11),
      Q => \mem_reg[6]\(11),
      R => '0'
    );
\mem_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(12),
      Q => \mem_reg[6]\(12),
      R => '0'
    );
\mem_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(13),
      Q => \mem_reg[6]\(13),
      R => '0'
    );
\mem_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(14),
      Q => \mem_reg[6]\(14),
      R => '0'
    );
\mem_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(15),
      Q => \mem_reg[6]\(15),
      R => '0'
    );
\mem_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(1),
      Q => \mem_reg[6]\(1),
      R => '0'
    );
\mem_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(2),
      Q => \mem_reg[6]\(2),
      R => '0'
    );
\mem_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(3),
      Q => \mem_reg[6]\(3),
      R => '0'
    );
\mem_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(4),
      Q => \mem_reg[6]\(4),
      R => '0'
    );
\mem_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(5),
      Q => \mem_reg[6]\(5),
      R => '0'
    );
\mem_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(6),
      Q => \mem_reg[6]\(6),
      R => '0'
    );
\mem_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(7),
      Q => \mem_reg[6]\(7),
      R => '0'
    );
\mem_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(8),
      Q => \mem_reg[6]\(8),
      R => '0'
    );
\mem_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[6]_5\,
      D => regC(9),
      Q => \mem_reg[6]\(9),
      R => '0'
    );
\mem_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(0),
      Q => \mem_reg[7]\(0),
      R => '0'
    );
\mem_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(10),
      Q => \mem_reg[7]\(10),
      R => '0'
    );
\mem_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(11),
      Q => \mem_reg[7]\(11),
      R => '0'
    );
\mem_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(12),
      Q => \mem_reg[7]\(12),
      R => '0'
    );
\mem_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(13),
      Q => \mem_reg[7]\(13),
      R => '0'
    );
\mem_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(14),
      Q => \mem_reg[7]\(14),
      R => '0'
    );
\mem_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(15),
      Q => \mem_reg[7]\(15),
      R => '0'
    );
\mem_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(1),
      Q => \mem_reg[7]\(1),
      R => '0'
    );
\mem_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(2),
      Q => \mem_reg[7]\(2),
      R => '0'
    );
\mem_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(3),
      Q => \mem_reg[7]\(3),
      R => '0'
    );
\mem_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(4),
      Q => \mem_reg[7]\(4),
      R => '0'
    );
\mem_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(5),
      Q => \mem_reg[7]\(5),
      R => '0'
    );
\mem_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(6),
      Q => \mem_reg[7]\(6),
      R => '0'
    );
\mem_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(7),
      Q => \mem_reg[7]\(7),
      R => '0'
    );
\mem_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(8),
      Q => \mem_reg[7]\(8),
      R => '0'
    );
\mem_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \mem[7]_6\,
      D => regC(9),
      Q => \mem_reg[7]\(9),
      R => '0'
    );
\regA[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[0]_INST_0_i_1_n_0\,
      I1 => \regA[0]_INST_0_i_2_n_0\,
      O => regA(0),
      S => read_addrA(2)
    );
\regA[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(0),
      I1 => \mem_reg[2]\(0),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(0),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(0),
      O => \regA[0]_INST_0_i_1_n_0\
    );
\regA[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(0),
      I1 => \mem_reg[6]\(0),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(0),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(0),
      O => \regA[0]_INST_0_i_2_n_0\
    );
\regA[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[10]_INST_0_i_1_n_0\,
      I1 => \regA[10]_INST_0_i_2_n_0\,
      O => regA(10),
      S => read_addrA(2)
    );
\regA[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(10),
      I1 => \mem_reg[2]\(10),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(10),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(10),
      O => \regA[10]_INST_0_i_1_n_0\
    );
\regA[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(10),
      I1 => \mem_reg[6]\(10),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(10),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(10),
      O => \regA[10]_INST_0_i_2_n_0\
    );
\regA[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[11]_INST_0_i_1_n_0\,
      I1 => \regA[11]_INST_0_i_2_n_0\,
      O => regA(11),
      S => read_addrA(2)
    );
\regA[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(11),
      I1 => \mem_reg[2]\(11),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(11),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(11),
      O => \regA[11]_INST_0_i_1_n_0\
    );
\regA[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(11),
      I1 => \mem_reg[6]\(11),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(11),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(11),
      O => \regA[11]_INST_0_i_2_n_0\
    );
\regA[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[12]_INST_0_i_1_n_0\,
      I1 => \regA[12]_INST_0_i_2_n_0\,
      O => regA(12),
      S => read_addrA(2)
    );
\regA[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(12),
      I1 => \mem_reg[2]\(12),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(12),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(12),
      O => \regA[12]_INST_0_i_1_n_0\
    );
\regA[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(12),
      I1 => \mem_reg[6]\(12),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(12),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(12),
      O => \regA[12]_INST_0_i_2_n_0\
    );
\regA[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[13]_INST_0_i_1_n_0\,
      I1 => \regA[13]_INST_0_i_2_n_0\,
      O => regA(13),
      S => read_addrA(2)
    );
\regA[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(13),
      I1 => \mem_reg[2]\(13),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(13),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(13),
      O => \regA[13]_INST_0_i_1_n_0\
    );
\regA[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(13),
      I1 => \mem_reg[6]\(13),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(13),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(13),
      O => \regA[13]_INST_0_i_2_n_0\
    );
\regA[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[14]_INST_0_i_1_n_0\,
      I1 => \regA[14]_INST_0_i_2_n_0\,
      O => regA(14),
      S => read_addrA(2)
    );
\regA[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(14),
      I1 => \mem_reg[2]\(14),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(14),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(14),
      O => \regA[14]_INST_0_i_1_n_0\
    );
\regA[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(14),
      I1 => \mem_reg[6]\(14),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(14),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(14),
      O => \regA[14]_INST_0_i_2_n_0\
    );
\regA[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[15]_INST_0_i_1_n_0\,
      I1 => \regA[15]_INST_0_i_2_n_0\,
      O => regA(15),
      S => read_addrA(2)
    );
\regA[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(15),
      I1 => \mem_reg[2]\(15),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(15),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(15),
      O => \regA[15]_INST_0_i_1_n_0\
    );
\regA[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(15),
      I1 => \mem_reg[6]\(15),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(15),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(15),
      O => \regA[15]_INST_0_i_2_n_0\
    );
\regA[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[1]_INST_0_i_1_n_0\,
      I1 => \regA[1]_INST_0_i_2_n_0\,
      O => regA(1),
      S => read_addrA(2)
    );
\regA[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(1),
      I1 => \mem_reg[2]\(1),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(1),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(1),
      O => \regA[1]_INST_0_i_1_n_0\
    );
\regA[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(1),
      I1 => \mem_reg[6]\(1),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(1),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(1),
      O => \regA[1]_INST_0_i_2_n_0\
    );
\regA[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[2]_INST_0_i_1_n_0\,
      I1 => \regA[2]_INST_0_i_2_n_0\,
      O => regA(2),
      S => read_addrA(2)
    );
\regA[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(2),
      I1 => \mem_reg[2]\(2),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(2),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(2),
      O => \regA[2]_INST_0_i_1_n_0\
    );
\regA[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(2),
      I1 => \mem_reg[6]\(2),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(2),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(2),
      O => \regA[2]_INST_0_i_2_n_0\
    );
\regA[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[3]_INST_0_i_1_n_0\,
      I1 => \regA[3]_INST_0_i_2_n_0\,
      O => regA(3),
      S => read_addrA(2)
    );
\regA[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(3),
      I1 => \mem_reg[2]\(3),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(3),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(3),
      O => \regA[3]_INST_0_i_1_n_0\
    );
\regA[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(3),
      I1 => \mem_reg[6]\(3),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(3),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(3),
      O => \regA[3]_INST_0_i_2_n_0\
    );
\regA[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[4]_INST_0_i_1_n_0\,
      I1 => \regA[4]_INST_0_i_2_n_0\,
      O => regA(4),
      S => read_addrA(2)
    );
\regA[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(4),
      I1 => \mem_reg[2]\(4),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(4),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(4),
      O => \regA[4]_INST_0_i_1_n_0\
    );
\regA[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(4),
      I1 => \mem_reg[6]\(4),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(4),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(4),
      O => \regA[4]_INST_0_i_2_n_0\
    );
\regA[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[5]_INST_0_i_1_n_0\,
      I1 => \regA[5]_INST_0_i_2_n_0\,
      O => regA(5),
      S => read_addrA(2)
    );
\regA[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(5),
      I1 => \mem_reg[2]\(5),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(5),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(5),
      O => \regA[5]_INST_0_i_1_n_0\
    );
\regA[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(5),
      I1 => \mem_reg[6]\(5),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(5),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(5),
      O => \regA[5]_INST_0_i_2_n_0\
    );
\regA[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[6]_INST_0_i_1_n_0\,
      I1 => \regA[6]_INST_0_i_2_n_0\,
      O => regA(6),
      S => read_addrA(2)
    );
\regA[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(6),
      I1 => \mem_reg[2]\(6),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(6),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(6),
      O => \regA[6]_INST_0_i_1_n_0\
    );
\regA[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(6),
      I1 => \mem_reg[6]\(6),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(6),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(6),
      O => \regA[6]_INST_0_i_2_n_0\
    );
\regA[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[7]_INST_0_i_1_n_0\,
      I1 => \regA[7]_INST_0_i_2_n_0\,
      O => regA(7),
      S => read_addrA(2)
    );
\regA[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(7),
      I1 => \mem_reg[2]\(7),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(7),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(7),
      O => \regA[7]_INST_0_i_1_n_0\
    );
\regA[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(7),
      I1 => \mem_reg[6]\(7),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(7),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(7),
      O => \regA[7]_INST_0_i_2_n_0\
    );
\regA[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[8]_INST_0_i_1_n_0\,
      I1 => \regA[8]_INST_0_i_2_n_0\,
      O => regA(8),
      S => read_addrA(2)
    );
\regA[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(8),
      I1 => \mem_reg[2]\(8),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(8),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(8),
      O => \regA[8]_INST_0_i_1_n_0\
    );
\regA[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(8),
      I1 => \mem_reg[6]\(8),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(8),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(8),
      O => \regA[8]_INST_0_i_2_n_0\
    );
\regA[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regA[9]_INST_0_i_1_n_0\,
      I1 => \regA[9]_INST_0_i_2_n_0\,
      O => regA(9),
      S => read_addrA(2)
    );
\regA[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(9),
      I1 => \mem_reg[2]\(9),
      I2 => read_addrA(1),
      I3 => \mem_reg[1]\(9),
      I4 => read_addrA(0),
      I5 => \mem_reg[0]\(9),
      O => \regA[9]_INST_0_i_1_n_0\
    );
\regA[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(9),
      I1 => \mem_reg[6]\(9),
      I2 => read_addrA(1),
      I3 => \mem_reg[5]\(9),
      I4 => read_addrA(0),
      I5 => \mem_reg[4]\(9),
      O => \regA[9]_INST_0_i_2_n_0\
    );
\regB[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[0]_INST_0_i_1_n_0\,
      I1 => \regB[0]_INST_0_i_2_n_0\,
      O => regB(0),
      S => read_addrB(2)
    );
\regB[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(0),
      I1 => \mem_reg[2]\(0),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(0),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(0),
      O => \regB[0]_INST_0_i_1_n_0\
    );
\regB[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(0),
      I1 => \mem_reg[6]\(0),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(0),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(0),
      O => \regB[0]_INST_0_i_2_n_0\
    );
\regB[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[10]_INST_0_i_1_n_0\,
      I1 => \regB[10]_INST_0_i_2_n_0\,
      O => regB(10),
      S => read_addrB(2)
    );
\regB[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(10),
      I1 => \mem_reg[2]\(10),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(10),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(10),
      O => \regB[10]_INST_0_i_1_n_0\
    );
\regB[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(10),
      I1 => \mem_reg[6]\(10),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(10),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(10),
      O => \regB[10]_INST_0_i_2_n_0\
    );
\regB[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[11]_INST_0_i_1_n_0\,
      I1 => \regB[11]_INST_0_i_2_n_0\,
      O => regB(11),
      S => read_addrB(2)
    );
\regB[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(11),
      I1 => \mem_reg[2]\(11),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(11),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(11),
      O => \regB[11]_INST_0_i_1_n_0\
    );
\regB[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(11),
      I1 => \mem_reg[6]\(11),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(11),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(11),
      O => \regB[11]_INST_0_i_2_n_0\
    );
\regB[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[12]_INST_0_i_1_n_0\,
      I1 => \regB[12]_INST_0_i_2_n_0\,
      O => regB(12),
      S => read_addrB(2)
    );
\regB[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(12),
      I1 => \mem_reg[2]\(12),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(12),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(12),
      O => \regB[12]_INST_0_i_1_n_0\
    );
\regB[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(12),
      I1 => \mem_reg[6]\(12),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(12),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(12),
      O => \regB[12]_INST_0_i_2_n_0\
    );
\regB[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[13]_INST_0_i_1_n_0\,
      I1 => \regB[13]_INST_0_i_2_n_0\,
      O => regB(13),
      S => read_addrB(2)
    );
\regB[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(13),
      I1 => \mem_reg[2]\(13),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(13),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(13),
      O => \regB[13]_INST_0_i_1_n_0\
    );
\regB[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(13),
      I1 => \mem_reg[6]\(13),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(13),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(13),
      O => \regB[13]_INST_0_i_2_n_0\
    );
\regB[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[14]_INST_0_i_1_n_0\,
      I1 => \regB[14]_INST_0_i_2_n_0\,
      O => regB(14),
      S => read_addrB(2)
    );
\regB[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(14),
      I1 => \mem_reg[2]\(14),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(14),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(14),
      O => \regB[14]_INST_0_i_1_n_0\
    );
\regB[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(14),
      I1 => \mem_reg[6]\(14),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(14),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(14),
      O => \regB[14]_INST_0_i_2_n_0\
    );
\regB[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[15]_INST_0_i_1_n_0\,
      I1 => \regB[15]_INST_0_i_2_n_0\,
      O => regB(15),
      S => read_addrB(2)
    );
\regB[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(15),
      I1 => \mem_reg[2]\(15),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(15),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(15),
      O => \regB[15]_INST_0_i_1_n_0\
    );
\regB[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(15),
      I1 => \mem_reg[6]\(15),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(15),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(15),
      O => \regB[15]_INST_0_i_2_n_0\
    );
\regB[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[1]_INST_0_i_1_n_0\,
      I1 => \regB[1]_INST_0_i_2_n_0\,
      O => regB(1),
      S => read_addrB(2)
    );
\regB[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(1),
      I1 => \mem_reg[2]\(1),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(1),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(1),
      O => \regB[1]_INST_0_i_1_n_0\
    );
\regB[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(1),
      I1 => \mem_reg[6]\(1),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(1),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(1),
      O => \regB[1]_INST_0_i_2_n_0\
    );
\regB[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[2]_INST_0_i_1_n_0\,
      I1 => \regB[2]_INST_0_i_2_n_0\,
      O => regB(2),
      S => read_addrB(2)
    );
\regB[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(2),
      I1 => \mem_reg[2]\(2),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(2),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(2),
      O => \regB[2]_INST_0_i_1_n_0\
    );
\regB[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(2),
      I1 => \mem_reg[6]\(2),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(2),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(2),
      O => \regB[2]_INST_0_i_2_n_0\
    );
\regB[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[3]_INST_0_i_1_n_0\,
      I1 => \regB[3]_INST_0_i_2_n_0\,
      O => regB(3),
      S => read_addrB(2)
    );
\regB[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(3),
      I1 => \mem_reg[2]\(3),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(3),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(3),
      O => \regB[3]_INST_0_i_1_n_0\
    );
\regB[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(3),
      I1 => \mem_reg[6]\(3),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(3),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(3),
      O => \regB[3]_INST_0_i_2_n_0\
    );
\regB[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[4]_INST_0_i_1_n_0\,
      I1 => \regB[4]_INST_0_i_2_n_0\,
      O => regB(4),
      S => read_addrB(2)
    );
\regB[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(4),
      I1 => \mem_reg[2]\(4),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(4),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(4),
      O => \regB[4]_INST_0_i_1_n_0\
    );
\regB[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(4),
      I1 => \mem_reg[6]\(4),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(4),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(4),
      O => \regB[4]_INST_0_i_2_n_0\
    );
\regB[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[5]_INST_0_i_1_n_0\,
      I1 => \regB[5]_INST_0_i_2_n_0\,
      O => regB(5),
      S => read_addrB(2)
    );
\regB[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(5),
      I1 => \mem_reg[2]\(5),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(5),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(5),
      O => \regB[5]_INST_0_i_1_n_0\
    );
\regB[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(5),
      I1 => \mem_reg[6]\(5),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(5),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(5),
      O => \regB[5]_INST_0_i_2_n_0\
    );
\regB[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[6]_INST_0_i_1_n_0\,
      I1 => \regB[6]_INST_0_i_2_n_0\,
      O => regB(6),
      S => read_addrB(2)
    );
\regB[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(6),
      I1 => \mem_reg[2]\(6),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(6),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(6),
      O => \regB[6]_INST_0_i_1_n_0\
    );
\regB[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(6),
      I1 => \mem_reg[6]\(6),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(6),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(6),
      O => \regB[6]_INST_0_i_2_n_0\
    );
\regB[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[7]_INST_0_i_1_n_0\,
      I1 => \regB[7]_INST_0_i_2_n_0\,
      O => regB(7),
      S => read_addrB(2)
    );
\regB[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(7),
      I1 => \mem_reg[2]\(7),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(7),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(7),
      O => \regB[7]_INST_0_i_1_n_0\
    );
\regB[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(7),
      I1 => \mem_reg[6]\(7),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(7),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(7),
      O => \regB[7]_INST_0_i_2_n_0\
    );
\regB[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[8]_INST_0_i_1_n_0\,
      I1 => \regB[8]_INST_0_i_2_n_0\,
      O => regB(8),
      S => read_addrB(2)
    );
\regB[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(8),
      I1 => \mem_reg[2]\(8),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(8),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(8),
      O => \regB[8]_INST_0_i_1_n_0\
    );
\regB[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(8),
      I1 => \mem_reg[6]\(8),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(8),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(8),
      O => \regB[8]_INST_0_i_2_n_0\
    );
\regB[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \regB[9]_INST_0_i_1_n_0\,
      I1 => \regB[9]_INST_0_i_2_n_0\,
      O => regB(9),
      S => read_addrB(2)
    );
\regB[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]\(9),
      I1 => \mem_reg[2]\(9),
      I2 => read_addrB(1),
      I3 => \mem_reg[1]\(9),
      I4 => read_addrB(0),
      I5 => \mem_reg[0]\(9),
      O => \regB[9]_INST_0_i_1_n_0\
    );
\regB[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]\(9),
      I1 => \mem_reg[6]\(9),
      I2 => read_addrB(1),
      I3 => \mem_reg[5]\(9),
      I4 => read_addrB(0),
      I5 => \mem_reg[4]\(9),
      O => \regB[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_file_0_0 is
  port (
    clk : in STD_LOGIC;
    read_addrA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    read_addrB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    write_addrC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regC : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_reg_file_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_reg_file_0_0 : entity is "design_1_reg_file_0_0,reg_file,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_reg_file_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_reg_file_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_reg_file_0_0 : entity is "reg_file,Vivado 2018.3";
end design_1_reg_file_0_0;

architecture STRUCTURE of design_1_reg_file_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_reg_file_0_0_reg_file
     port map (
      clk => clk,
      read_addrA(2 downto 0) => read_addrA(2 downto 0),
      read_addrB(2 downto 0) => read_addrB(2 downto 0),
      regA(15 downto 0) => regA(15 downto 0),
      regB(15 downto 0) => regB(15 downto 0),
      regC(15 downto 0) => regC(15 downto 0),
      wr_en => wr_en,
      write_addrC(2 downto 0) => write_addrC(2 downto 0)
    );
end STRUCTURE;
