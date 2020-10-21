// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:35:59 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ALU_CTRL_0_0_sim_netlist.v
// Design      : design_1_ALU_CTRL_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_CTRL
   (op_add,
    op_nand,
    op_asr,
    op_cmp,
    alu_op);
  output op_add;
  output op_nand;
  output op_asr;
  output op_cmp;
  input [3:0]alu_op;

  wire [3:0]alu_op;
  wire op_add;
  wire op_asr;
  wire op_cmp;
  wire op_nand;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    op_add__0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_add));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    op_asr__0
       (.I0(alu_op[3]),
        .I1(alu_op[0]),
        .I2(alu_op[1]),
        .I3(alu_op[2]),
        .O(op_asr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    op_cmp__0
       (.I0(alu_op[0]),
        .I1(alu_op[2]),
        .I2(alu_op[1]),
        .I3(alu_op[3]),
        .O(op_cmp));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    op_nand__0
       (.I0(alu_op[3]),
        .I1(alu_op[1]),
        .I2(alu_op[0]),
        .I3(alu_op[2]),
        .O(op_nand));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ALU_CTRL_0_0,ALU_CTRL,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALU_CTRL,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (alu_op,
    op_add,
    op_sub,
    op_and,
    op_or,
    op_xor,
    op_nand,
    op_asr,
    op_asl,
    op_cmp);
  input [3:0]alu_op;
  output op_add;
  output op_sub;
  output op_and;
  output op_or;
  output op_xor;
  output op_nand;
  output op_asr;
  output op_asl;
  output op_cmp;

  wire [3:0]alu_op;
  wire op_add;
  wire op_and;
  wire op_asl;
  wire op_asr;
  wire op_cmp;
  wire op_nand;
  wire op_or;
  wire op_sub;
  wire op_xor;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_CTRL U0
       (.alu_op(alu_op),
        .op_add(op_add),
        .op_asr(op_asr),
        .op_cmp(op_cmp),
        .op_nand(op_nand));
  LUT4 #(
    .INIT(16'h0010)) 
    op_and_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[1]),
        .I3(alu_op[0]),
        .O(op_and));
  LUT4 #(
    .INIT(16'h2000)) 
    op_asl_INST_0
       (.I0(alu_op[2]),
        .I1(alu_op[3]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_asl));
  LUT4 #(
    .INIT(16'h1000)) 
    op_or_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_or));
  LUT4 #(
    .INIT(16'h0010)) 
    op_sub_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(op_sub));
  LUT4 #(
    .INIT(16'h0010)) 
    op_xor_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[0]),
        .I2(alu_op[2]),
        .I3(alu_op[1]),
        .O(op_xor));
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
