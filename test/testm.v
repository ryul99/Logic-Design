`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:48 06/05/2018
// Design Name:   test
// Module Name:   /csehome/cmchoi9901/Logic Design/test/testm.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testm;

	// Inputs
	reg f;

	// Outputs
	wire[7:0] z;
	wire[7:0] x;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.f(f), 
		.z(z), 
		.x(x)
	);

	initial begin
		// Initialize Inputs
		f = 0;
		#100;
		f = 1;
		#100;
		// Add stimulus here

	end
      
endmodule

