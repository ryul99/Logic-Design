// Verilog test fixture created from schematic /csehome/cmchoi9901/Comparator/comparator.sch - Tue Mar 27 19:28:54 2018

`timescale 1ns / 1ps

module comparator_comparator_sch_tb();

// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

// Output
	wire EQ;
	wire LT;
	wire GT;

// Bidirs

// Instantiate the UUT
   comparator UUT (
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.EQ(EQ),
		.LT(LT),
		.GT(GT)
   );
// Initialize Inputs

   initial begin
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		#50;
		
		A = 0;
		B = 0;
		C = 0;
		D = 1;
		#50;
		
		A = 0;
		B = 0;
		C = 1;
		D = 0;
		#50;
		
		A = 0;
		B = 0;
		C = 1;
		D = 1;
		#50;
		
		A = 0;
		B = 1;
		C = 0;
		D = 0;
		#50;
		
		A = 0;
		B = 1;
		C = 0;
		D = 1;
		#50;
		
		A = 0;
		B = 1;
		C = 1;
		D = 0;
		#50;
		
		A = 0;
		B = 1;
		C = 1;
		D = 1;
		#50;
		
		A = 1;
		B = 0;
		C = 0;
		D = 0;
		#50;
		
		A = 1;
		B = 0;
		C = 0;
		D = 1;
		#50;
		
		A = 1;
		B = 0;
		C = 1;
		D = 0;
		#50;
		
		A = 1;
		B = 0;
		C = 1;
		D = 1;
		#50;
		
		A = 1;
		B = 1;
		C = 0;
		D = 0;
		#50;
		
		A = 1;
		B = 1;
		C = 0;
		D = 1;
		#50;
		
		A = 1;
		B = 1;
		C = 1;
		D = 0;
		#50;
		
		A = 1;
		B = 1;
		C = 1;
		D = 1;
		#50;
		
	end
endmodule
