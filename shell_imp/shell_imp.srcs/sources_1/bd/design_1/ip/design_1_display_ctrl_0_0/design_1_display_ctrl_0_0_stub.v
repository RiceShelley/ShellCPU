// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 22:28:27 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_display_ctrl_0_0/design_1_display_ctrl_0_0_stub.v
// Design      : design_1_display_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "display_ctrl,Vivado 2018.3" *)
module design_1_display_ctrl_0_0(clk, pc_in, data, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,pc_in[15:0],data[15:0],data_out[31:0]" */;
  input clk;
  input [15:0]pc_in;
  input [15:0]data;
  output [31:0]data_out;
endmodule
