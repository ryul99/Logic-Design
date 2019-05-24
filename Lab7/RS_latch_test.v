`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:47:25 05/01/2018
// Design Name:   RS_latch
// Module Name:   /csehome/cmchoi9901/Logic Design/Lab7/RS_latch_test.v
// Project Name:  Lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RS_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RS_latch_test;

	// Inputs
	reg R;
	reg S;

	// Outputs
	wire Q_H;
	wire Q_L;

	// Instantiate the Unit Under Test (UUT)
	RS_latch uut (
		.Q_H(Q_H), 
		.Q_L(Q_L), 
		.R(R), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		R = 1;
		S = 0;
		#100;
		R = 0;
		S = 1;
		#100;
		R = 1;
		S = 1;
		#100;

	end
      
endmodule

