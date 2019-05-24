`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:17:07 05/01/2018
// Design Name:   oscillator
// Module Name:   /csehome/cmchoi9901/Logic Design/Lab7/oscillator_test.v
// Project Name:  Lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: oscillator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module oscillator_test;

	// Inputs
	reg En;

	// Outputs
	wire Feedback;

	// Instantiate the Unit Under Test (UUT)
	oscillator uut (
		.En(En), 
		.Feedback(Feedback)
	);

	initial begin
		// Initialize Inputs
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		En = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

