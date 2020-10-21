// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 20 19:56:00 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_programmer_0_0_stub.v
// Design      : design_1_programmer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "programmer,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rx_ready, tx_ready, rx_data, tx_buff, 
  tx_start_trans, addr, dout, din, prog_mem_wr, data_mem_wr, prog_mode, cpu_clk_en, cpu_rst)
/* synthesis syn_black_box black_box_pad_pin="clk,rx_ready,tx_ready,rx_data[7:0],tx_buff[7:0],tx_start_trans,addr[15:0],dout[15:0],din[7:0],prog_mem_wr,data_mem_wr,prog_mode,cpu_clk_en,cpu_rst" */;
  input clk;
  input rx_ready;
  input tx_ready;
  input [7:0]rx_data;
  output [7:0]tx_buff;
  output tx_start_trans;
  output [15:0]addr;
  output [15:0]dout;
  input [7:0]din;
  output prog_mem_wr;
  output data_mem_wr;
  output prog_mode;
  output cpu_clk_en;
  output cpu_rst;
endmodule
