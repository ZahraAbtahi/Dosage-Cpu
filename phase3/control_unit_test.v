`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:28:33 06/27/2021
// Design Name:   controlUnit
// Module Name:   C:/Users/SAMIN RAYANEH/Desktop/Group D/phase3/control_unit_test.v
// Project Name:  phase3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_unit_test;

	// Inputs
	reg [3:0] opcode;
	reg clk;

	// Outputs
	wire branch;
	wire regdst;
	wire alusrc;
	wire regwrite;
	wire memread;
	wire memreg;
	wire memwrite;
	wire [2:0] Aluop;

	// Instantiate the Unit Under Test (UUT)
	controlUnit uut (
		.opcode(opcode), 
		.branch(branch), 
		.regdst(regdst), 
		.alusrc(alusrc), 
		.regwrite(regwrite), 
		.memread(memread), 
		.memreg(memreg), 
		.memwrite(memwrite), 
		.Aluop(Aluop), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		opcode = 1;
		#100;
		opcode = 3;
		#100;
		opcode = 11;
		
        
		// Add stimulus here

	end
	always #50 clk=~clk;
      
endmodule



