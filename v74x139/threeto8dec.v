`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:34 04/03/2018 
// Design Name: 
// Module Name:    threeto8dec 
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
module threeto8dec(
    input G,
    input A,
    input B,
    input C,
    output [7:0] Y
    );
		//wire G1 = C == 1'b0 ? G : 1'b1;
		//wire G2 = C != 1'b0 ? G : 1'b1;
		wire [3:0] yy;
		v74x139h_c t(.G(1'b0), .A(C), .B(G), .Y(yy));
		v74x139h_c T1(.G(yy[0]), .A(A), .B(B), .Y(Y[3:0]));
		v74x139h_c T2(.G(yy[1]), .A(A), .B(B), .Y(Y[7:4]));
		
endmodule
