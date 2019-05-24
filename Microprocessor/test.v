`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:45:21 06/05/2018
// Design Name:   Main
// Module Name:   /csehome/cmchoi9901/Logic Design/Microprocessor/test.v
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

module test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] instruction;

	// Outputs
	wire [7:0] pcc;
	wire [6:0] out1;
	wire [6:0] out2;
	wire [6:0] out3;
	wire [6:0] out4;
	wire [6:0] out5;
//	wire [7:0] inst;
	wire [7:0] regst;
	wire led;
	wire [7:0] preg1;
	wire [7:0] preg2;
	wire [7:0] preg3;
	wire [7:0] preg4;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.clk(clk), 
		.reset(reset), 
		.pcc(pcc), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
//		.inst(inst), 
		.led(led),
		.regst(regst),
		.preg1(preg1), 
		.preg2(preg2), 
		.preg3(preg3), 
		.preg4(preg4)
	);
	
	IMEM uut1(
	.Instruction(instruction),
	.Read_Address(pcc)
	);
	
	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		
		// Wait 100 ns for global reset to finish
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

	end
      
endmodule

