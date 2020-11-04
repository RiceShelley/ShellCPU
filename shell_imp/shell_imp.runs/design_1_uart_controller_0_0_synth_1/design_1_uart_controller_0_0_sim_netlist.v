// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 14:46:14 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_controller_0_0_sim_netlist.v
// Design      : design_1_uart_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_controller_0_0,uart_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart_controller,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    tx_buff,
    rx_buff,
    rx_ready,
    tx_ready,
    tx_start_trans,
    tx_buff_data_in,
    tx_buff_wr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  output [7:0]tx_buff;
  input [7:0]rx_buff;
  input rx_ready;
  input tx_ready;
  output tx_start_trans;
  input [15:0]tx_buff_data_in;
  input tx_buff_wr;

  wire clk;
  wire [7:0]tx_buff;
  wire [15:0]tx_buff_data_in;
  wire tx_buff_wr;
  wire tx_ready;
  wire tx_start_trans;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_controller U0
       (.clk(clk),
        .tx_buff(tx_buff),
        .tx_buff_data_in(tx_buff_data_in),
        .tx_buff_wr(tx_buff_wr),
        .tx_ready(tx_ready),
        .tx_start_trans(tx_start_trans));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_controller
   (tx_buff,
    tx_start_trans,
    tx_buff_data_in,
    clk,
    tx_buff_wr,
    tx_ready);
  output [7:0]tx_buff;
  output tx_start_trans;
  input [15:0]tx_buff_data_in;
  input clk;
  input tx_buff_wr;
  input tx_ready;

  wire clk;
  wire [7:0]tx_buff;
  wire \tx_buff[7]_i_1_n_0 ;
  wire \tx_buff[7]_i_2_n_0 ;
  wire [15:0]tx_buff_data_in;
  wire tx_buff_wr;
  wire tx_ready;
  wire tx_start_trans;
  wire tx_start_trans_i_1_n_0;
  wire tx_start_trans_i_2_n_0;

  LUT4 #(
    .INIT(16'h0400)) 
    \tx_buff[7]_i_1 
       (.I0(tx_buff_data_in[15]),
        .I1(\tx_buff[7]_i_2_n_0 ),
        .I2(tx_buff_data_in[14]),
        .I3(tx_buff_wr),
        .O(\tx_buff[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \tx_buff[7]_i_2 
       (.I0(tx_buff_data_in[12]),
        .I1(tx_buff_data_in[11]),
        .I2(tx_buff_data_in[9]),
        .I3(tx_buff_data_in[8]),
        .I4(tx_buff_data_in[10]),
        .I5(tx_buff_data_in[13]),
        .O(\tx_buff[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[0] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[0]),
        .Q(tx_buff[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tx_buff_reg[1] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[1]),
        .Q(tx_buff[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[2] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[2]),
        .Q(tx_buff[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tx_buff_reg[3] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[3]),
        .Q(tx_buff[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[4] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[4]),
        .Q(tx_buff[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buff_reg[5] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[5]),
        .Q(tx_buff[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tx_buff_reg[6] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[6]),
        .Q(tx_buff[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tx_buff_reg[7] 
       (.C(clk),
        .CE(\tx_buff[7]_i_1_n_0 ),
        .D(tx_buff_data_in[7]),
        .Q(tx_buff[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF8000FF000000)) 
    tx_start_trans_i_1
       (.I0(tx_buff_data_in[15]),
        .I1(tx_buff_data_in[14]),
        .I2(tx_start_trans_i_2_n_0),
        .I3(tx_buff_wr),
        .I4(tx_start_trans),
        .I5(tx_ready),
        .O(tx_start_trans_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tx_start_trans_i_2
       (.I0(tx_buff_data_in[12]),
        .I1(tx_buff_data_in[11]),
        .I2(tx_buff_data_in[9]),
        .I3(tx_buff_data_in[8]),
        .I4(tx_buff_data_in[10]),
        .I5(tx_buff_data_in[13]),
        .O(tx_start_trans_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_trans_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_start_trans_i_1_n_0),
        .Q(tx_start_trans),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
