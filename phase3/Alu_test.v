`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:12:46 06/27/2021
// Design Name:   Alu
// Module Name:   C:/Users/SAMIN RAYANEH/Desktop/Group D/phase3/Alu_test.v
// Project Name:  phase3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Alu_test;

	// Inputs
	reg [2:0] aluop;
	reg [15:0] input1;
	reg [15:0] immd;
	reg [15:0] reg_out;
	reg alusrc;
	reg clk;

	// Outputs
	wire [15:0] out;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	Alu uut (
		.out(out), 
		.aluop(aluop), 
		.input1(input1), 
		.zero(zero), 
		.immd(immd), 
		.reg_out(reg_out), 
		.alusrc(alusrc), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		aluop = 0;
		input1 = 0;
		immd = 0;
		reg_out = 0;
		alusrc = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		aluop = 4;
		input1 = 10;
		immd = 5;
		reg_out = 6;
		alusrc = 1; 
		#100;
		
		aluop = 6;
		input1 = 5;
		immd = 4;
		reg_out = 3;
		alusrc = 0;
		#100;
		
        
		// Add stimulus here

	end
	always #50 clk = ~clk;
      
endmodule

