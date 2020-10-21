-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:CTRL_UNIT:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_CTRL_UNIT_0_0 IS
  PORT (
    instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dest_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    regA_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    regB_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    reg_file_input_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    reg_file_wr : OUT STD_LOGIC;
    pc_ld_en : OUT STD_LOGIC;
    pc_en : OUT STD_LOGIC;
    data_mem_wr : OUT STD_LOGIC;
    cmp_status_wr : OUT STD_LOGIC;
    ri_imm : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    imm : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    alu_input_sel : OUT STD_LOGIC;
    pc_load_sel : OUT STD_LOGIC;
    cmp_eq : IN STD_LOGIC;
    cmp_ne : IN STD_LOGIC;
    cmp_gt : IN STD_LOGIC;
    cmp_lt : IN STD_LOGIC;
    stack_ld : OUT STD_LOGIC;
    dec_stack : OUT STD_LOGIC;
    inc_stack : OUT STD_LOGIC;
    stack_wr : OUT STD_LOGIC;
    ri_imm_format_sel : OUT STD_LOGIC
  );
END design_1_CTRL_UNIT_0_0;

ARCHITECTURE design_1_CTRL_UNIT_0_0_arch OF design_1_CTRL_UNIT_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_CTRL_UNIT_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT CTRL_UNIT IS
    PORT (
      instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dest_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      regA_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      regB_addr : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      reg_file_input_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      reg_file_wr : OUT STD_LOGIC;
      pc_ld_en : OUT STD_LOGIC;
      pc_en : OUT STD_LOGIC;
      data_mem_wr : OUT STD_LOGIC;
      cmp_status_wr : OUT STD_LOGIC;
      ri_imm : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      imm : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      alu_input_sel : OUT STD_LOGIC;
      pc_load_sel : OUT STD_LOGIC;
      cmp_eq : IN STD_LOGIC;
      cmp_ne : IN STD_LOGIC;
      cmp_gt : IN STD_LOGIC;
      cmp_lt : IN STD_LOGIC;
      stack_ld : OUT STD_LOGIC;
      dec_stack : OUT STD_LOGIC;
      inc_stack : OUT STD_LOGIC;
      stack_wr : OUT STD_LOGIC;
      ri_imm_format_sel : OUT STD_LOGIC
    );
  END COMPONENT CTRL_UNIT;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_CTRL_UNIT_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : CTRL_UNIT
    PORT MAP (
      instruction => instruction,
      dest_addr => dest_addr,
      regA_addr => regA_addr,
      regB_addr => regB_addr,
      alu_op => alu_op,
      reg_file_input_sel => reg_file_input_sel,
      reg_file_wr => reg_file_wr,
      pc_ld_en => pc_ld_en,
      pc_en => pc_en,
      data_mem_wr => data_mem_wr,
      cmp_status_wr => cmp_status_wr,
      ri_imm => ri_imm,
      imm => imm,
      alu_input_sel => alu_input_sel,
      pc_load_sel => pc_load_sel,
      cmp_eq => cmp_eq,
      cmp_ne => cmp_ne,
      cmp_gt => cmp_gt,
      cmp_lt => cmp_lt,
      stack_ld => stack_ld,
      dec_stack => dec_stack,
      inc_stack => inc_stack,
      stack_wr => stack_wr,
      ri_imm_format_sel => ri_imm_format_sel
    );
END design_1_CTRL_UNIT_0_0_arch;
