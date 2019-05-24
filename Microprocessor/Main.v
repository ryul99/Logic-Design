`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:18 05/31/2018 
// Design Name: 
// Module Name:    Main 
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
module Main(
   input [7:0] instruction,
	input clk,
	input reset,
	output[7:0] pcc,
	output[6:0] out1,
	output[6:0] out2,
	output[6:0] out3,
	output[6:0] out4,
	output[6:0] out5,
	//output[7:0] inst,
	output led
//	output[7:0] preg1,
//	output[7:0] preg2,
//	output[7:0] preg3,
//	output[7:0] preg4,
//	output[7:0] regst
   );

//	wire[7:0] instruction;
//	wire[7:0] pcc;
	
	reg[7:0]regi [3:0];//Registers
	reg[7:0] pc; //Program Counter
	assign pcc = pc;	
//	assign inst = instruction;

//	assign preg1 = regi[0];
//	assign preg2 = regi[1];
//	assign preg3 = regi[2];
//	assign preg4 = regi[3];	
	
	wire[1:0] command;// Instruction
	wire[1:0] rs;
	wire[1:0] rt;
	wire[1:0] rd;
	wire[7:0] temprd;
	assign command = instruction[7:6]; //Recieve Instruction
	assign rs = instruction[5:4];
	assign rt = instruction[3:2];
	assign rd = instruction[1:0];
	assign temprd = (instruction[1] == 0) ? instruction[1:0] : (instruction[1:0] - 4);
	
	wire[7:0] mem;//mem = memory wire
	wire[7:0] a; //a = address
	wire[7:0] b; //b = write data value
	wire[7:0] addv;
	wire check;

	assign a = regi[rs] + temprd;
	assign b = regi[rt];
	
//	mem[regi[rs] + rd]
	wire[6:0] m1out;
	wire[6:0] m2out;
	wire[6:0] m4out;
	wire[6:0] m5out;
	reg [7:0] regstor;
	reg [6:0] outreg1;
	reg [6:0] outreg2;
	reg [6:0] outreg3;
	reg [6:0] outreg4;
	reg [6:0] outreg5;
	
	assign out1 = (reset == 1) ? outreg1 : m1out;
	assign out2 = (reset == 1) ? outreg2 : m2out;
	assign out3 = (reset == 1) ? outreg3 : 7'b0000000;
	assign out4 = (reset == 1) ? outreg4 : m4out;
	assign out5 = (reset == 1) ? outreg5 : m5out;
	assign regst = regstor;
	wire[3:0] m1;
	wire[3:0] m2;
//	wire[3:0] m3;
	wire[3:0] m4;
	wire[3:0] m5;
//	wire[3:0] m6;
	wire[7:0] printpc;
	
	assign printpc = pc;
	
	assign m1 = regstor[7:4];
	assign m2 = regstor[3:0];
//	assign m3 = (regstor[11:8] == 0) ? 10 : regstor[11:8];
//	assign m4 = (regstor[15:12] == 0) ? 10 : regstor[15:12];
//	assign m5 = (regstor[19:16] == 0) ? 10 : regstor[19:16];
//	assign m6 = (regstor[23:20] == 0) ? 10 : regstor[23:20];
	assign m4 = printpc[7:4];
	assign m5 = printpc[3:0];
//	assign regi[rd] = (command == 0) ? (regi[rs] + regi[rt]) : 0;
	assign check = (command == 1) ? 0 : 
						(command == 2) ? 1 : 0;
	
	DataMemory d(.reset(reset), .address(a), .writeData(b), .write(check), .readData(mem));
	clkdiv c(.clkin(clk), .clr(reset), .clkout(clkout));
	
//	bcd_decode d6(.bcd(m6), .seg(out1));
	bcd_decode d5(.bcd(m5), .seg(m5out));
	bcd_decode d4(.bcd(m4), .seg(m4out));
//	bcd_decode d3(.bcd(m3), .seg(out4));
	bcd_decode d2(.bcd(m2), .seg(m2out));
	bcd_decode d1(.bcd(m1), .seg(m1out));
	//IMEM imem(.Instruction(instruction), .Read_Address(pc));
	assign led = clkout;
	always@(posedge clkout or posedge reset) begin
		if(reset) begin
			pc <= 0;
			regi[0] <= 0;
			regi[1] <= 0;
			regi[2] <= 0;
			regi[3] <= 0;
			regstor <= 0;
			outreg1 <= 7'b1010000;
			outreg2 <= 7'b0011100;
			outreg3 <= 7'b1111100;
			outreg4 <= 7'b0010000;
			outreg5 <= 7'b1101101;
		end
		else begin
			if(command == 0) begin
				regi[rd] <= regi[rs] + regi[rt];
				regstor <= regi[rs] + regi[rt];
			end
			if(command == 1) begin
				regi[rt] <= mem[7:0];
				regstor <= mem[7:0];
			end
			if(command != 3) begin
				pc <= pc + 1;
			end
			else begin
				pc <= pc + 1 + temprd;
			end
		end
	end
endmodule
