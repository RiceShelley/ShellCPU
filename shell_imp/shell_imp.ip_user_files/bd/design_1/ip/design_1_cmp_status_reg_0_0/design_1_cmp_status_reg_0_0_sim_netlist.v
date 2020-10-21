// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:34:57 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_cmp_status_reg_0_0/design_1_cmp_status_reg_0_0_sim_netlist.v
// Design      : design_1_cmp_status_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_cmp_status_reg_0_0,cmp_status_reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "cmp_status_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_cmp_status_reg_0_0
   (clk,
    cmp_status_in,
    wr_en,
    eq_sig,
    ne_sig,
    gt_sig,
    lt_sig);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [15:0]cmp_status_in;
  input wr_en;
  output eq_sig;
  output ne_sig;
  output gt_sig;
  output lt_sig;

  wire clk;
  wire [15:0]cmp_status_in;
  wire eq_sig;
  wire gt_sig;
  wire lt_sig;
  wire ne_sig;
  wire wr_en;

  design_1_cmp_status_reg_0_0_cmp_status_reg U0
       (.Q({lt_sig,gt_sig,ne_sig,eq_sig}),
        .clk(clk),
        .cmp_status_in(cmp_status_in[3:0]),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "cmp_status_reg" *) 
module design_1_cmp_status_reg_0_0_cmp_status_reg
   (Q,
    wr_en,
    cmp_status_in,
    clk);
  output [3:0]Q;
  input wr_en;
  input [3:0]cmp_status_in;
  input clk;

  wire [3:0]Q;
  wire clk;
  wire [3:0]cmp_status_in;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[0] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[1] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[2] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmp_status_reg[3] 
       (.C(clk),
        .CE(wr_en),
        .D(cmp_status_in[3]),
        .Q(Q[3]),
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
