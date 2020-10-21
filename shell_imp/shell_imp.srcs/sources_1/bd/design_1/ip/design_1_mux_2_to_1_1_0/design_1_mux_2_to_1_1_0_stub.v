// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Oct 21 00:01:25 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_mux_2_to_1_1_0/design_1_mux_2_to_1_1_0_stub.v
// Design      : design_1_mux_2_to_1_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mux_2_to_1,Vivado 2018.3" *)
module design_1_mux_2_to_1_1_0(a, b, sel, c)
/* synthesis syn_black_box black_box_pad_pin="a[15:0],b[15:0],sel,c[15:0]" */;
  input [15:0]a;
  input [15:0]b;
  input sel;
  output [15:0]c;
endmodule
