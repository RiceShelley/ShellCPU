// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Oct 30 14:19:24 2020
// Host        : rootie running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sync_byte_1_0_sim_netlist.v
// Design      : design_1_sync_byte_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sync_byte_1_0,sync_byte,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sync_byte,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    byte,
    stable_byte);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clock_gen/clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  input [7:0]byte;
  output [7:0]stable_byte;

  wire [7:0]byte;
  wire clk;
  wire [7:0]stable_byte;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_byte U0
       (.byte(byte),
        .clk(clk),
        .stable_byte(stable_byte));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_byte
   (stable_byte,
    byte,
    clk);
  output [7:0]stable_byte;
  input [7:0]byte;
  input clk;

  wire [7:0]byte;
  wire clk;
  wire [7:0]double_flop;
  wire [7:0]stable_byte;

  FDRE \double_flop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[0]),
        .Q(double_flop[0]),
        .R(1'b0));
  FDRE \double_flop_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[1]),
        .Q(double_flop[1]),
        .R(1'b0));
  FDRE \double_flop_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[2]),
        .Q(double_flop[2]),
        .R(1'b0));
  FDRE \double_flop_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[3]),
        .Q(double_flop[3]),
        .R(1'b0));
  FDRE \double_flop_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[4]),
        .Q(double_flop[4]),
        .R(1'b0));
  FDRE \double_flop_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[5]),
        .Q(double_flop[5]),
        .R(1'b0));
  FDRE \double_flop_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[6]),
        .Q(double_flop[6]),
        .R(1'b0));
  FDRE \double_flop_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(byte[7]),
        .Q(double_flop[7]),
        .R(1'b0));
  FDRE \stable_byte_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[0]),
        .Q(stable_byte[0]),
        .R(1'b0));
  FDRE \stable_byte_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[1]),
        .Q(stable_byte[1]),
        .R(1'b0));
  FDRE \stable_byte_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[2]),
        .Q(stable_byte[2]),
        .R(1'b0));
  FDRE \stable_byte_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[3]),
        .Q(stable_byte[3]),
        .R(1'b0));
  FDRE \stable_byte_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[4]),
        .Q(stable_byte[4]),
        .R(1'b0));
  FDRE \stable_byte_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[5]),
        .Q(stable_byte[5]),
        .R(1'b0));
  FDRE \stable_byte_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[6]),
        .Q(stable_byte[6]),
        .R(1'b0));
  FDRE \stable_byte_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(double_flop[7]),
        .Q(stable_byte[7]),
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
