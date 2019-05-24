////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RS_latch_synthesis.v
// /___/   /\     Timestamp: Tue May  1 19:56:56 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim RS_latch.ngc RS_latch_synthesis.v 
// Device	: xc3s50an-4-tqg144
// Input file	: RS_latch.ngc
// Output file	: /csehome/cmchoi9901/Logic Design/Lab7/netgen/synthesis/RS_latch_synthesis.v
// # of Modules	: 1
// Design Name	: RS_latch
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module RS_latch (
  Q_H, Q_L, R, S
);
  output Q_H;
  output Q_L;
  input R;
  input S;
  wire Q_H_OBUF_1;
  wire Q_L_OBUF_3;
  wire Q_L_or0000;
  wire R_IBUF_6;
  wire S_IBUF_8;
  LUT2 #(
    .INIT ( 4'h4 ))
  Q_H1 (
    .I0(R_IBUF_6),
    .I1(Q_L_or0000),
    .O(Q_H_OBUF_1)
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  Q_L_or00001 (
    .I0(R_IBUF_6),
    .I1(Q_L_or0000),
    .I2(S_IBUF_8),
    .O(Q_L_or0000)
  );
  IBUF   R_IBUF (
    .I(R),
    .O(R_IBUF_6)
  );
  IBUF   S_IBUF (
    .I(S),
    .O(S_IBUF_8)
  );
  OBUF   Q_H_OBUF (
    .I(Q_H_OBUF_1),
    .O(Q_H)
  );
  OBUF   Q_L_OBUF (
    .I(Q_L_OBUF_3),
    .O(Q_L)
  );
  INV   Q_L1_INV_0 (
    .I(Q_L_or0000),
    .O(Q_L_OBUF_3)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

