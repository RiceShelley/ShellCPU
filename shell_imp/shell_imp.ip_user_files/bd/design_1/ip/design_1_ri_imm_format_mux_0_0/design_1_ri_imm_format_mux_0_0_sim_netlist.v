// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:35:59 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_ri_imm_format_mux_0_0/design_1_ri_imm_format_mux_0_0_sim_netlist.v
// Design      : design_1_ri_imm_format_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ri_imm_format_mux_0_0,ri_imm_format_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ri_imm_format_mux,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ri_imm_format_mux_0_0
   (upper_concat_imm,
    z_ext_imm,
    sel,
    ri_imm);
  input [15:0]upper_concat_imm;
  input [15:0]z_ext_imm;
  input sel;
  output [15:0]ri_imm;

  wire [15:0]ri_imm;
  wire sel;
  wire [15:0]upper_concat_imm;
  wire [15:0]z_ext_imm;

  design_1_ri_imm_format_mux_0_0_ri_imm_format_mux U0
       (.ri_imm(ri_imm),
        .sel(sel),
        .upper_concat_imm(upper_concat_imm),
        .z_ext_imm(z_ext_imm));
endmodule

(* ORIG_REF_NAME = "ri_imm_format_mux" *) 
module design_1_ri_imm_format_mux_0_0_ri_imm_format_mux
   (ri_imm,
    z_ext_imm,
    upper_concat_imm,
    sel);
  output [15:0]ri_imm;
  input [15:0]z_ext_imm;
  input [15:0]upper_concat_imm;
  input sel;

  wire [15:0]ri_imm;
  wire sel;
  wire [15:0]upper_concat_imm;
  wire [15:0]z_ext_imm;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[0]_INST_0 
       (.I0(z_ext_imm[0]),
        .I1(upper_concat_imm[0]),
        .I2(sel),
        .O(ri_imm[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[10]_INST_0 
       (.I0(z_ext_imm[10]),
        .I1(upper_concat_imm[10]),
        .I2(sel),
        .O(ri_imm[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[11]_INST_0 
       (.I0(z_ext_imm[11]),
        .I1(upper_concat_imm[11]),
        .I2(sel),
        .O(ri_imm[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[12]_INST_0 
       (.I0(z_ext_imm[12]),
        .I1(upper_concat_imm[12]),
        .I2(sel),
        .O(ri_imm[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[13]_INST_0 
       (.I0(z_ext_imm[13]),
        .I1(upper_concat_imm[13]),
        .I2(sel),
        .O(ri_imm[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[14]_INST_0 
       (.I0(z_ext_imm[14]),
        .I1(upper_concat_imm[14]),
        .I2(sel),
        .O(ri_imm[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[15]_INST_0 
       (.I0(z_ext_imm[15]),
        .I1(upper_concat_imm[15]),
        .I2(sel),
        .O(ri_imm[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[1]_INST_0 
       (.I0(z_ext_imm[1]),
        .I1(upper_concat_imm[1]),
        .I2(sel),
        .O(ri_imm[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[2]_INST_0 
       (.I0(z_ext_imm[2]),
        .I1(upper_concat_imm[2]),
        .I2(sel),
        .O(ri_imm[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[3]_INST_0 
       (.I0(z_ext_imm[3]),
        .I1(upper_concat_imm[3]),
        .I2(sel),
        .O(ri_imm[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[4]_INST_0 
       (.I0(z_ext_imm[4]),
        .I1(upper_concat_imm[4]),
        .I2(sel),
        .O(ri_imm[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[5]_INST_0 
       (.I0(z_ext_imm[5]),
        .I1(upper_concat_imm[5]),
        .I2(sel),
        .O(ri_imm[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[6]_INST_0 
       (.I0(z_ext_imm[6]),
        .I1(upper_concat_imm[6]),
        .I2(sel),
        .O(ri_imm[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[7]_INST_0 
       (.I0(z_ext_imm[7]),
        .I1(upper_concat_imm[7]),
        .I2(sel),
        .O(ri_imm[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[8]_INST_0 
       (.I0(z_ext_imm[8]),
        .I1(upper_concat_imm[8]),
        .I2(sel),
        .O(ri_imm[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \ri_imm[9]_INST_0 
       (.I0(z_ext_imm[9]),
        .I1(upper_concat_imm[9]),
        .I2(sel),
        .O(ri_imm[9]));
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
