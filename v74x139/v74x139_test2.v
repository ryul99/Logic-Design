`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:50:04 04/03/2018
// Design Name:   v74x139h_a
// Module Name:   /csehome/cmchoi9901/v74x139/v74x139_test.v
// Project Name:  v74x139
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: v74x139h_a
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module v74x139_test2;

	// Inputs
	reg G;
	reg A;
	reg B;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	v74x139h_b uut (
		.G(G), 
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		G = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		G = 0;
		A = 1;
		B = 0;
		
		#100 G = 0; A = 0; B = 1;
		#100 G = 0; A = 1; B = 1;
		
		#100 G = 1; A = 0; B = 0;
		#100 G = 1; A = 0; B = 1;
		#100 G = 1; A = 1; B = 0;
		#100 G = 1; A = 1; B = 1;
		
	end
      
endmodule

