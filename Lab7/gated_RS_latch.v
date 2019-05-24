`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:05 05/01/2018 
// Design Name: 
// Module Name:    gated_RS_latch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module gated_RS_latch(
    input R,
    input S,
    input E,
    output Q_H,
    output Q_L
    );
	 
	 wire r;
	 wire s;
	 and(r, R, E);
	 and(s, S, E);
	 RS_latch L(.R(r), .S(s), .Q_H(Q_H), .Q_L(Q_L));

endmodule
