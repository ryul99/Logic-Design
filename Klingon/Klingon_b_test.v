`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:39:13 04/23/2018
// Design Name:   Klingon_b
// Module Name:   /csehome/cmchoi9901/Klingon/Klingon_b_test.v
// Project Name:  Klingon
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Klingon_b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Klingon_b_test;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;

	// Instantiate the Unit Under Test (UUT)
	Klingon_b uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 1;
		#100;
		in = 2;
		#100;
		in = 3;
		#100;
		in = 4;
		#100;
		in = 5;
		#100;
		in = 6;
		#100;
		in = 7;
		#100;
		in = 8;
		#100;
		in = 9;
		#100;

	end
      
endmodule

