`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:02 04/23/2018 
// Design Name: 
// Module Name:    Klingon_s 
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
module Klingon_s(
    input [3:0] in,
    output [6:0] out
    );

	wire [3:0] N_in;
	not(N_in[0],in[0]);
	not(N_in[1],in[1]);
	not(N_in[2],in[2]);
	not(N_in[3],in[3]);
	
	wire[3:0] a;
	and(a[0], N_in[3], N_in[2], N_in[1], N_in[0]); and(a[1], N_in[3], N_in[2], N_in[1], in[0]);
	and(a[2], N_in[3], N_in[2], in[1], N_in[0]);	and(a[3], N_in[3], N_in[2], in[1], in[0]);
	or(out[0], a[0], a[1], a[2], a[3]);
	
	wire[4:0] b;
	and(b[0], N_in[3], N_in[2], N_in[1], N_in[0]);	and(b[1], N_in[3], in[2], N_in[1], N_in[0]);
	and(b[2], N_in[3], in[2], in[1], N_in[0]);	and(b[3], in[3], N_in[2], N_in[1], N_in[0]);
	and(b[4], in[3], N_in[2], N_in[1], in[0]);	or(out[1], b[0], b[1], b[2], b[3], b[4]);
	
	wire[4:0] c;
	and(c[0], N_in[3], N_in[2], N_in[1], N_in[0]);	and(c[1], N_in[3], in[2], N_in[1], in[0]);
	and(c[2], N_in[3], in[2], in[1], in[0]);	and(c[3], in[3], N_in[2], N_in[1], N_in[0]);
	and(c[4], in[3], N_in[2], N_in[1], in[0]);	or(out[2], c[0], c[1], c[2], c[3], c[4]);
	
	wire[2:0] d;
	and(d[0], N_in[3], N_in[2], N_in[1], N_in[0]);	and(d[1], N_in[3], N_in[2], in[1], in[0]);
	and(d[2], N_in[3], in[2], N_in[1], in[0]);	or(out[3], d[0], d[1], d[2]);

	wire[4:0] e;
	and(e[0], N_in[3], N_in[2], N_in[1], N_in[0]);	and(e[1], N_in[3], in[2], N_in[1], in[0]);
	and(e[2], N_in[3], in[2], in[1], N_in[0]);	and(e[3], in[3], N_in[2], N_in[1], N_in[0]);
	and(e[4], in[3], N_in[2], N_in[1], in[0]);	or(out[4], e[0], e[1], e[2], e[3], e[4]);
	
	wire[4:0] f;
	and(f[0], N_in[3], N_in[2], N_in[1], N_in[0]);	and(f[1], N_in[3], in[2], N_in[1], N_in[0]);
	and(f[2], N_in[3], in[2], in[1], in[0]);	and(f[3], in[3], N_in[2], N_in[1], N_in[0]);
	and(f[4], in[3], N_in[2], N_in[1], in[0]);	or(out[5], f[0], f[1], f[2], f[3], f[4]);
	
	wire[2:0] g;
	or(g[0], in[3], in[2], in[1], in[0]);	or(g[1], in[3], in[2], in[1], N_in[0]);
	or(g[2], N_in[3], in[2], in[1], in[0]);	and(out[6], g[0], g[1], g[2]);
	
endmodule
