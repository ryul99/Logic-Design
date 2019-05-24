`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:03 04/03/2018 
// Design Name: 
// Module Name:    v74x139_u 
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
module v74x139_u(
    input G1,
    input G2,
    input B1,
    input B2,
    input A1,
    input A2,
    output [3:0] Y1,
    output [3:0] Y2
    );

	v74x139h_c T1(.G(G1), .A(A1), .B(B1), .Y(Y1));
	v74x139h_c T2(.G(G2), .A(A2), .B(B2), .Y(Y2));

endmodule
