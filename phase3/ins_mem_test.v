`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:34:20 06/27/2021
// Design Name:   Instruction_memory
// Module Name:   C:/Users/SAMIN RAYANEH/Desktop/Group D/phase3/ins_mem_test.v
// Project Name:  phase3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ins_mem_test;

	// Inputs
	reg clk;
	reg [19:0] ext;
	reg zero;
	reg branch;

	// Outputs
	wire [19:0] ins;

	// Instantiate the Unit Under Test (UUT)
	Instruction_memory uut (
		.clk(clk), 
		.ext(ext), 
		.ins(ins), 
		.zero(zero), 
		.branch(branch)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ext = 40;
		zero = 1;
		branch = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

