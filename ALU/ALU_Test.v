`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:05:48 04/30/2018
// Design Name:   ALU
// Module Name:   /csehome/cmchoi9901/Logic Design/ALU/ALU_Test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg M;
	reg S1;
	reg S0;
	reg A;
	reg B;

	// Outputs
	wire F;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.M(M), 
		.S1(S1), 
		.S0(S0), 
		.A(A), 
		.B(B), 
		.F(F)
	);
	initial begin
		// Initialize Inputs
		for(i = 0; i < 32 ; i = i + 1)
		begin
			M = (i>>4) & 1;
			S1 = (i>>3) & 1;
			S0 = (i>>2) & 1;
			A = (i>>1) & 1;
			B = i & 1;
			#100;
		end    
		// Add stimulus here
	end
endmodule

