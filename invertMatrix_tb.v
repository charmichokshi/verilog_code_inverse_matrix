`timescale 1ns / 1ps

/**
    Name            : Charmi Chokshhi
    Roll No         : 201501021

    Subject         : Linear Algebra
    Instructor      : Ratnik Gandhi

    Assignment      : 2
    Description     : Verilog Program to find Inverse of 5x5 matrix using Gauss-Jordan Elimination
    Submission Date : 7/10/2016
*/

module invertMatrix_tb;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	inverseMatrix uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

