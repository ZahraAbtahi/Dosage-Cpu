`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:06 06/19/2021 
// Design Name: 
// Module Name:    controlUnit 
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
module controlUnit(opcode,branch,regdst,alusrc,regwrite,memread,memreg,memwrite,Aluop,clk);
input clk;
input [3:0]opcode;
output reg branch;
output reg regdst;
output reg alusrc;
output reg regwrite;
output reg memread;
output reg memreg;
output reg memwrite;
output reg [2:0] Aluop;
always @(clk)
	begin
	if(opcode==0)
	begin
		branch=0;
		regdst=1;
		alusrc=0;
		regwrite=1;
		memread=0;
		memreg=0;
		memwrite=0;
		Aluop=4;
	end
	if(opcode==3)
	begin
		branch=0;
		regdst=0;
		alusrc=1;
		regwrite=1;
		memread=1;
		memreg=1;
		memwrite=0;
		Aluop=2;
	end
	if(opcode==11)
	begin
		branch=0;
		regdst=0;
		alusrc=1;
		regwrite=0;
		memread=0;
		memreg=0;
		memwrite=1;
		Aluop=2;
	end
	if(opcode==1)
	begin
		branch=1;
		regdst=0;
		alusrc=0;
		regwrite=0;
		memread=0;
		memreg=0;
		memwrite=0;
		Aluop=1;
	end
end
endmodule
