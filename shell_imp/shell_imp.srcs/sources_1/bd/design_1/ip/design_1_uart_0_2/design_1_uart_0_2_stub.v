// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct  6 19:38:37 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_uart_0_2/design_1_uart_0_2_stub.v
// Design      : design_1_uart_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uart,Vivado 2018.3" *)
module design_1_uart_0_2(clk, rx, rx_data, rx_ready, tx_buff, 
  tx_start_trans, tx, tx_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,rx,rx_data[7:0],rx_ready,tx_buff[7:0],tx_start_trans,tx,tx_ready" */;
  input clk;
  input rx;
  output [7:0]rx_data;
  output rx_ready;
  input [7:0]tx_buff;
  input tx_start_trans;
  output tx;
  output tx_ready;
endmodule
