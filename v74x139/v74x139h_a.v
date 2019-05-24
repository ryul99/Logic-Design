`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:09 04/03/2018 
// Design Name: 
// Module Name:    v74x139h_a 
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
module v74x139h_a(
    input G_L,
    input A,
    input B,
    output [3:0] Y_L
    );
	 
	 wire N_A, N_B, N_G;
	 
	 not T1(N_G,G_L);
	 not T2(N_B,B);
	 not T3(N_A,A);
	 
	 nand T4(Y_L[0],N_G,N_A,N_B);
	 nand T5(Y_L[1],N_G,A,N_B);
	 nand T6(Y_L[2],N_G,N_A,B);
	 nand T7(Y_L[3],N_G,A,B);


endmodule
