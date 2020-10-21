// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:34:58 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_alu_input_mux_0_0/design_1_alu_input_mux_0_0_sim_netlist.v
// Design      : design_1_alu_input_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_alu_input_mux_0_0,alu_input_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "alu_input_mux,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_alu_input_mux_0_0
   (to_alu,
    from_gpr,
    from_ri_imm,
    sel);
  output [15:0]to_alu;
  input [15:0]from_gpr;
  input [15:0]from_ri_imm;
  input sel;

  wire [15:0]from_gpr;
  wire [15:0]from_ri_imm;
  wire sel;
  wire [15:0]to_alu;

  design_1_alu_input_mux_0_0_alu_input_mux U0
       (.from_gpr(from_gpr),
        .from_ri_imm(from_ri_imm),
        .sel(sel),
        .to_alu(to_alu));
endmodule

(* ORIG_REF_NAME = "alu_input_mux" *) 
module design_1_alu_input_mux_0_0_alu_input_mux
   (to_alu,
    from_ri_imm,
    from_gpr,
    sel);
  output [15:0]to_alu;
  input [15:0]from_ri_imm;
  input [15:0]from_gpr;
  input sel;

  wire [15:0]from_gpr;
  wire [15:0]from_ri_imm;
  wire sel;
  wire [15:0]to_alu;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[0]_INST_0 
       (.I0(from_ri_imm[0]),
        .I1(from_gpr[0]),
        .I2(sel),
        .O(to_alu[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[10]_INST_0 
       (.I0(from_ri_imm[10]),
        .I1(from_gpr[10]),
        .I2(sel),
        .O(to_alu[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[11]_INST_0 
       (.I0(from_ri_imm[11]),
        .I1(from_gpr[11]),
        .I2(sel),
        .O(to_alu[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[12]_INST_0 
       (.I0(from_ri_imm[12]),
        .I1(from_gpr[12]),
        .I2(sel),
        .O(to_alu[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[13]_INST_0 
       (.I0(from_ri_imm[13]),
        .I1(from_gpr[13]),
        .I2(sel),
        .O(to_alu[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[14]_INST_0 
       (.I0(from_ri_imm[14]),
        .I1(from_gpr[14]),
        .I2(sel),
        .O(to_alu[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[15]_INST_0 
       (.I0(from_ri_imm[15]),
        .I1(from_gpr[15]),
        .I2(sel),
        .O(to_alu[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[1]_INST_0 
       (.I0(from_ri_imm[1]),
        .I1(from_gpr[1]),
        .I2(sel),
        .O(to_alu[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[2]_INST_0 
       (.I0(from_ri_imm[2]),
        .I1(from_gpr[2]),
        .I2(sel),
        .O(to_alu[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[3]_INST_0 
       (.I0(from_ri_imm[3]),
        .I1(from_gpr[3]),
        .I2(sel),
        .O(to_alu[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[4]_INST_0 
       (.I0(from_ri_imm[4]),
        .I1(from_gpr[4]),
        .I2(sel),
        .O(to_alu[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[5]_INST_0 
       (.I0(from_ri_imm[5]),
        .I1(from_gpr[5]),
        .I2(sel),
        .O(to_alu[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[6]_INST_0 
       (.I0(from_ri_imm[6]),
        .I1(from_gpr[6]),
        .I2(sel),
        .O(to_alu[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[7]_INST_0 
       (.I0(from_ri_imm[7]),
        .I1(from_gpr[7]),
        .I2(sel),
        .O(to_alu[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[8]_INST_0 
       (.I0(from_ri_imm[8]),
        .I1(from_gpr[8]),
        .I2(sel),
        .O(to_alu[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \to_alu[9]_INST_0 
       (.I0(from_ri_imm[9]),
        .I1(from_gpr[9]),
        .I2(sel),
        .O(to_alu[9]));
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
