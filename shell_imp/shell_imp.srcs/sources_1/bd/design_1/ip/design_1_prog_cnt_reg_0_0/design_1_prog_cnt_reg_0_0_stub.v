// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Oct 10 22:53:18 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_prog_cnt_reg_0_0/design_1_prog_cnt_reg_0_0_stub.v
// Design      : design_1_prog_cnt_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "prog_cnt_reg,Vivado 2018.3" *)
module design_1_prog_cnt_reg_0_0(clk, async_rst, ins_addr, ld_val, ld_en, en)
/* synthesis syn_black_box black_box_pad_pin="clk,async_rst,ins_addr[15:0],ld_val[15:0],ld_en,en" */;
  input clk;
  input async_rst;
  output [15:0]ins_addr;
  input [15:0]ld_val;
  input ld_en;
  input en;
endmodule
