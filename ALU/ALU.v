`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:43 04/30/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input M,
    input S1,
    input S0,
    input A,
    input B,
    output F
    );
	
	assign F = (S1 == 0 && S0 == 0) ? A :
				  (S1 == 0 && S0 == 1) ? ~A :
				  (S1 == 1 && S0 == 0) ? A^B :
				  (S1 == 1 && S0 == 1) ? ~(A^B) : 0;

endmodule
