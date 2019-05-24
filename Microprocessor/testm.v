`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:16 06/06/2018
// Design Name:   Main
// Module Name:   /csehome/cmchoi9901/Logic Design/Microprocessor/testm.v
// Project Name:  Microprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
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

	reg clk;
	reg reset;

	// Outputs
	wire [7:0] instruction;
	wire [7:0] pcc;
	wire [6:0] out1;
	wire [6:0] out2;
	wire [6:0] out3;
	wire [6:0] out4;
	wire [6:0] out5;
	wire led;
//	wire [7:0] preg1;
//	wire [7:0] preg2;
//	wire [7:0] preg3;
//	wire [7:0] preg4;
//	wire [7:0] regst;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.instruction(instruction), 
		.clk(clk), 
		.reset(reset), 
		.pcc(pcc), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.led(led) 
//		.preg1(preg1), 
//		.preg2(preg2), 
//		.preg3(preg3), 
//		.preg4(preg4), 
//		.regst(regst)
	);

	IMEM uut1(
	.Instruction(instruction),
	.Read_Address(pcc)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
		clk = 1;
		reset = 0;
		#50;
		clk = 0;
		reset = 0;
		#50;
        
		// Add stimulus here

	end
      
endmodule

