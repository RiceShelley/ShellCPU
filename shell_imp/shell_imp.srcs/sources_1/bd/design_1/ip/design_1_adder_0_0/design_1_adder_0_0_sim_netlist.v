// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Oct  5 21:35:29 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rootie/Documents/comp-arc/shell_imp/shell_imp.srcs/sources_1/bd/design_1/ip/design_1_adder_0_0/design_1_adder_0_0_sim_netlist.v
// Design      : design_1_adder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adder_0_0,adder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adder,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_adder_0_0
   (a,
    b,
    c);
  input [15:0]a;
  input [15:0]b;
  output [15:0]c;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]c;

  design_1_adder_0_0_adder U0
       (.a(a),
        .b(b),
        .c(c));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_adder_0_0_adder
   (c,
    a,
    b);
  output [15:0]c;
  input [15:0]a;
  input [15:0]b;

  wire [15:0]a;
  wire [15:0]b;
  wire [15:0]c;
  wire \c[0]_INST_0_i_1_n_0 ;
  wire \c[0]_INST_0_i_2_n_0 ;
  wire \c[0]_INST_0_i_3_n_0 ;
  wire \c[0]_INST_0_i_4_n_0 ;
  wire \c[0]_INST_0_n_0 ;
  wire \c[0]_INST_0_n_1 ;
  wire \c[0]_INST_0_n_2 ;
  wire \c[0]_INST_0_n_3 ;
  wire \c[12]_INST_0_i_1_n_0 ;
  wire \c[12]_INST_0_i_2_n_0 ;
  wire \c[12]_INST_0_i_3_n_0 ;
  wire \c[12]_INST_0_i_4_n_0 ;
  wire \c[12]_INST_0_n_1 ;
  wire \c[12]_INST_0_n_2 ;
  wire \c[12]_INST_0_n_3 ;
  wire \c[4]_INST_0_i_1_n_0 ;
  wire \c[4]_INST_0_i_2_n_0 ;
  wire \c[4]_INST_0_i_3_n_0 ;
  wire \c[4]_INST_0_i_4_n_0 ;
  wire \c[4]_INST_0_n_0 ;
  wire \c[4]_INST_0_n_1 ;
  wire \c[4]_INST_0_n_2 ;
  wire \c[4]_INST_0_n_3 ;
  wire \c[8]_INST_0_i_1_n_0 ;
  wire \c[8]_INST_0_i_2_n_0 ;
  wire \c[8]_INST_0_i_3_n_0 ;
  wire \c[8]_INST_0_i_4_n_0 ;
  wire \c[8]_INST_0_n_0 ;
  wire \c[8]_INST_0_n_1 ;
  wire \c[8]_INST_0_n_2 ;
  wire \c[8]_INST_0_n_3 ;
  wire [3:3]\NLW_c[12]_INST_0_CO_UNCONNECTED ;

  CARRY4 \c[0]_INST_0 
       (.CI(1'b0),
        .CO({\c[0]_INST_0_n_0 ,\c[0]_INST_0_n_1 ,\c[0]_INST_0_n_2 ,\c[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(c[3:0]),
        .S({\c[0]_INST_0_i_1_n_0 ,\c[0]_INST_0_i_2_n_0 ,\c[0]_INST_0_i_3_n_0 ,\c[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\c[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\c[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .O(\c[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .O(\c[0]_INST_0_i_4_n_0 ));
  CARRY4 \c[12]_INST_0 
       (.CI(\c[8]_INST_0_n_0 ),
        .CO({\NLW_c[12]_INST_0_CO_UNCONNECTED [3],\c[12]_INST_0_n_1 ,\c[12]_INST_0_n_2 ,\c[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[14:12]}),
        .O(c[15:12]),
        .S({\c[12]_INST_0_i_1_n_0 ,\c[12]_INST_0_i_2_n_0 ,\c[12]_INST_0_i_3_n_0 ,\c[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_1 
       (.I0(a[15]),
        .I1(b[15]),
        .O(\c[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_2 
       (.I0(a[14]),
        .I1(b[14]),
        .O(\c[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_3 
       (.I0(a[13]),
        .I1(b[13]),
        .O(\c[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_4 
       (.I0(a[12]),
        .I1(b[12]),
        .O(\c[12]_INST_0_i_4_n_0 ));
  CARRY4 \c[4]_INST_0 
       (.CI(\c[0]_INST_0_n_0 ),
        .CO({\c[4]_INST_0_n_0 ,\c[4]_INST_0_n_1 ,\c[4]_INST_0_n_2 ,\c[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(c[7:4]),
        .S({\c[4]_INST_0_i_1_n_0 ,\c[4]_INST_0_i_2_n_0 ,\c[4]_INST_0_i_3_n_0 ,\c[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_1 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\c[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\c[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\c[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(b[4]),
        .O(\c[4]_INST_0_i_4_n_0 ));
  CARRY4 \c[8]_INST_0 
       (.CI(\c[4]_INST_0_n_0 ),
        .CO({\c[8]_INST_0_n_0 ,\c[8]_INST_0_n_1 ,\c[8]_INST_0_n_2 ,\c[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(c[11:8]),
        .S({\c[8]_INST_0_i_1_n_0 ,\c[8]_INST_0_i_2_n_0 ,\c[8]_INST_0_i_3_n_0 ,\c[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_1 
       (.I0(a[11]),
        .I1(b[11]),
        .O(\c[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_2 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\c[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_3 
       (.I0(a[9]),
        .I1(b[9]),
        .O(\c[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_4 
       (.I0(a[8]),
        .I1(b[8]),
        .O(\c[8]_INST_0_i_4_n_0 ));
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
