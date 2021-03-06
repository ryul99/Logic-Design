`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:27:44 04/03/2018
// Design Name:   v74x139_u
// Module Name:   /csehome/cmchoi9901/v74x139/v74x139_u_test.v
// Project Name:  v74x139
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: v74x139_u
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module v74x139_u_test;

	// Inputs
	reg G1;
	reg G2;
	reg B1;
	reg B2;
	reg A1;
	reg A2;

	// Outputs
	wire [3:0] Y1;
	wire [3:0] Y2;

	// Instantiate the Unit Under Test (UUT)
	v74x139_u uut (
		.G1(G1), 
		.G2(G2), 
		.B1(B1), 
		.B2(B2), 
		.A1(A1), 
		.A2(A2), 
		.Y1(Y1), 
		.Y2(Y2)
	);

	initial begin
		// Initialize Inputs
		G1 = 0;
		G2 = 0;
		B1 = 0;
		B2 = 0;
		A1 = 0;
		A2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		G1 = 0;
		G2 = 0;
		B1 = 1;
		B2 = 0;
		A1 = 1;
		A2 = 0;
		#100;
		
		G1 = 0;
		G2 = 0;
		B1 = 1;
		B2 = 0;
		A1 = 1;
		A2 = 1;
		#100;
		
		G1 = 0;
		G2 = 0;
		B1 = 0;
		B2 = 1;
		A1 = 1;
		A2 = 0;
		#100;
		
		G1 = 0;
		G2 = 0;
		B1 = 1;
		B2 = 1;
		A1 = 1;
		A2 = 0;
		#100;
		
	end
      
endmodule

