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

-- IP VLNV: xilinx.com:module_ref:programmer:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_programmer_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rx_ready : IN STD_LOGIC;
    tx_ready : IN STD_LOGIC;
    rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_buff : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    tx_start_trans : OUT STD_LOGIC;
    addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    prog_mem_wr : OUT STD_LOGIC;
    data_mem_wr : OUT STD_LOGIC;
    prog_mode : OUT STD_LOGIC;
    cpu_clk_en : OUT STD_LOGIC;
    cpu_rst : OUT STD_LOGIC
  );
END design_1_programmer_0_0;

ARCHITECTURE design_1_programmer_0_0_arch OF design_1_programmer_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_programmer_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT programmer IS
    GENERIC (
      READ_CMD : INTEGER;
      WRITE_PROG_MEM_CMD : INTEGER;
      WRITE_DATA_MEM_CMD : INTEGER;
      TOGGLE_PROG_MODE : INTEGER;
      TOGGLE_CPU_CLK_EN : INTEGER;
      TOGGLE_PC_RST : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rx_ready : IN STD_LOGIC;
      tx_ready : IN STD_LOGIC;
      rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      tx_buff : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      tx_start_trans : OUT STD_LOGIC;
      addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      prog_mem_wr : OUT STD_LOGIC;
      data_mem_wr : OUT STD_LOGIC;
      prog_mode : OUT STD_LOGIC;
      cpu_clk_en : OUT STD_LOGIC;
      cpu_rst : OUT STD_LOGIC
    );
  END COMPONENT programmer;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_programmer_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpu_rst: SIGNAL IS "XIL_INTERFACENAME cpu_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF cpu_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 cpu_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : programmer
    GENERIC MAP (
      READ_CMD => 0,
      WRITE_PROG_MEM_CMD => 255,
      WRITE_DATA_MEM_CMD => 254,
      TOGGLE_PROG_MODE => 253,
      TOGGLE_CPU_CLK_EN => 252,
      TOGGLE_PC_RST => 251
    )
    PORT MAP (
      clk => clk,
      rx_ready => rx_ready,
      tx_ready => tx_ready,
      rx_data => rx_data,
      tx_buff => tx_buff,
      tx_start_trans => tx_start_trans,
      addr => addr,
      dout => dout,
      din => din,
      prog_mem_wr => prog_mem_wr,
      data_mem_wr => data_mem_wr,
      prog_mode => prog_mode,
      cpu_clk_en => cpu_clk_en,
      cpu_rst => cpu_rst
    );
END design_1_programmer_0_0_arch;
