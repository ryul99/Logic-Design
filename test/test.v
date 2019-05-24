`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:21 06/05/2018 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test(
	input f,
	output[7:0] z, 
	output[7:0] x
    );
	 reg[7:0] a;
	 wire [1:0] b;
	 reg[7:0] d;
	 reg[7:0] q;
	 assign z = d;
	 assign x = q;
	 assign b = f;
	 always@(f)
	 begin
		a = 8'b10101110;
		d = a + b;
		q = a;
		
	 end

endmodule
