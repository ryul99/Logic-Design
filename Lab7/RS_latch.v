`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:18 05/01/2018 
// Design Name: 
// Module Name:    RS_latch 
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
module RS_latch(
    output Q_H,
    output Q_L,
    input R,
    input S
    );
	 
	 wire Q;
	 wire P;
	 nor(Q, R, P);
	 nor(P, S, Q);
	 
	 assign Q_H = Q;
	 assign Q_L = P;

endmodule
