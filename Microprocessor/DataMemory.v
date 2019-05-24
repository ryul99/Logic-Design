`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:23 05/31/2018 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
    input [7:0] address,
    input [7:0] writeData,
	 input reset,
	 input write,
    output [7:0] readData
    );
	 
	 reg[7:0] memory [31:0];
	 reg data;
	 integer i;
	 
	 always @(posedge write or posedge reset) begin
		if(reset) begin
			for(i = 0; i < 32; i= i+1) begin
				memory[i] = i%16;		
				if(i > 16 && i < 32) begin
					memory[i] = memory[i] * -1;
				end
			end
		end
		else if(write)begin
		   memory[address] = writeData;
		end
	 end
	 assign readData = memory[address];
endmodule