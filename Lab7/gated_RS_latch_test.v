`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:27 05/01/2018
// Design Name:   gated_RS_latch
// Module Name:   /csehome/cmchoi9901/Logic Design/Lab7/gated_RS_latch_test.v
// Project Name:  Lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gated_RS_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gated_RS_latch_test;

	// Inputs
	reg R;
	reg S;
	reg E;

	// Outputs
	wire Q_H;
	wire Q_L;

	// Instantiate the Unit Under Test (UUT)
	gated_RS_latch uut (
		.R(R), 
		.S(S), 
		.E(E), 
		.Q_H(Q_H), 
		.Q_L(Q_L)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		S = 0;
		E = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
		E = 1; S = 0; R = 1; #100;
		E = 1; S = 1; R = 0; #100;
		E = 1; S = 1; R = 1; #100;
		E = 0; S = 0; R = 0; #100;
		E = 0; S = 0; R = 1; #100;
		E = 0; S = 1; R = 0; #100;
		E = 0; S = 1; R = 1; #100;
        
		// Add stimulus here

	end
      
endmodule

