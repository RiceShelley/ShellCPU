// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 22:28:27 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_nexys_7seg_0_0/design_1_nexys_7seg_0_0_stub.v
// Design      : design_1_nexys_7seg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "nexys_7seg,Vivado 2018.3" *)
module design_1_nexys_7seg_0_0(seg, seg_sel, clk, data)
/* synthesis syn_black_box black_box_pad_pin="seg[7:0],seg_sel[7:0],clk,data[31:0]" */;
  output [7:0]seg;
  output [7:0]seg_sel;
  input clk;
  input [31:0]data;
endmodule
