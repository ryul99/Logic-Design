`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:41:04 04/03/2018
// Design Name:   threeto8dec
// Module Name:   /csehome/cmchoi9901/v74x139/threeto8dec_test.v
// Project Name:  v74x139
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: threeto8dec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module threeto8dec_test;

	// Inputs
	reg G;
	reg A;
	reg B;
	reg C;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	threeto8dec uut (
		.G(G), 
		.A(A), 
		.B(B), 
		.C(C), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		G = 0;
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#50 G = 0; A = 1; B = 0; C = 0;
		#50 G = 0; A = 0; B = 1; C = 0;
		#50 G = 0; A = 1; B = 1; C = 0;
		
		#50 G = 0; A = 0; B = 0; C = 1;
		#50 G = 0; A = 1; B = 0; C = 1;
		#50 G = 0; A = 0; B = 1; C = 1;
		#50 G = 0; A = 1; B = 1; C = 1;
		
		
		#50 G = 1; A = 0; B = 0; C = 0;
		#50 G = 1; A = 1; B = 0; C = 0;
		#50 G = 1; A = 0; B = 1; C = 0;
		#50 G = 1; A = 1; B = 1; C = 0;
		
		#50 G = 1; A = 0; B = 0; C = 1;
		#50 G = 1; A = 1; B = 0; C = 1;
		#50 G = 1; A = 0; B = 1; C = 1;
		#50 G = 1; A = 1; B = 1; C = 1;
		// Add stimulus here

	end
      
endmodule

