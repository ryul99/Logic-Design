`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:09 04/10/2018 
// Design Name: 
// Module Name:    BCDto7_struct 
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
module BCDto7_struct(
    input [3:0] in,
    output [6:0] out
    );
	 
	wire [3:0] N_in;
	not(N_in[0],in[0]);
	not(N_in[1],in[1]);
	not(N_in[2],in[2]);
	not(N_in[3],in[3]);

	wire [2:0] a;	
	or( a[0], N_in[0], in[1], in[2], in[3]);	or( a[1], in[0], in[1], N_in[2], in[3]);
	or( a[2], in[0], N_in[1], N_in[2], in[3]);	and(out[0], a[0], a[1], a[2]);

	wire [1:0] b;
	or( b[0], N_in[0], in[1], N_in[2], in[3]);	or( b[1], in[0], N_in[1], N_in[2], in[3]);
	and(out[1], b[0], b[1]);
	
	or( out[2], in[0], N_in[1], in[2], in[3]);
		
	wire [3:0] d;
	or( d[0], N_in[0], in[1], in[2], in[3]);	or( d[1], in[0], in[1], N_in[2], in[3]);
	or( d[2], N_in[0], N_in[1], N_in[2], in[3]);	or( d[3], N_in[0], in[1], in[2], N_in[3]);
	and(out[3], d[0],d[1],d[2],d[3]);
	
	wire [3:0] e;
	and( e[0], N_in[0],N_in[1],N_in[2],N_in[3]);	and(e[1],N_in[0],in[1],N_in[2],N_in[3]);
	and(e[2],N_in[0],in[1],in[2],N_in[3]);	and(e[3],N_in[0],N_in[1],N_in[2],in[3]);
	or(out[4],e[0],e[1],e[2],e[3]);
	
	wire [2:0] f;
	or(f[0],N_in[0],in[1],in[2],in[3]);	or(f[1],in[0],N_in[1],in[2],in[3]);
	or(f[2],N_in[0],N_in[1],in[2],in[3]);	and(out[5],f[0],f[1],f[2]);
	
	wire [2:0] g;
	or(g[0],in[0],in[1],in[2],in[3]);	or(g[1],N_in[0],in[1],in[2],in[3]);
	or(g[2],N_in[0],N_in[1],N_in[2],in[3]);	and(out[6],g[0],g[1],g[2]);
	
endmodule
