`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:02:05 04/07/2018
// Design Name:   MUX_1
// Module Name:   /csehome/cmchoi9901/MUX-1/MUX_1_test.v
// Project Name:  MUX-1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_1_test;

	// Inputs
	reg [3:0] In;
	reg [1:0] Sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	MUX_1 uut (
		.In(In), 
		.Sel(Sel), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 1;
		Sel = 0;
		// Wait 100 ns for global reset to finish
		#100;
		In = 2;Sel = 1;#100;
		In = 4;Sel = 2;#100;
		In = 8;Sel = 3;#100;
		In = 0;Sel = 2;#100;
		
		// Add stimulus here

	end
      
endmodule

