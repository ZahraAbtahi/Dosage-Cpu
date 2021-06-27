`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:25:24 06/27/2021
// Design Name:   ALu_control
// Module Name:   C:/Users/SAMIN RAYANEH/Desktop/Group D/phase3/alu_control_test.v
// Project Name:  phase3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALu_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_control_test;

	// Inputs
	reg [2:0] opsc;
	reg [3:0] Function;

	// Outputs
	wire [2:0] aluop;

	// Instantiate the Unit Under Test (UUT)
	ALu_control uut (
		.opsc(opsc), 
		.Function(Function), 
		.aluop(aluop)
	);

	initial begin
		// Initialize Inputs
		opsc = 0;
		Function = 0;

		// Wait 100 ns for global reset to finish
		#100;
		opsc = 3;
		Function = 6;
		#100
		
		opsc = 1;
		Function = 10;
	
        
		// Add stimulus here

	end
	
	
	
      
endmodule

