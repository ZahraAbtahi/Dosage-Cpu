`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:36 06/19/2021 
// Design Name: 
// Module Name:    Alu 
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
module Alu(out,aluop,input1,zero,immd,reg_out,alusrc,clk);
input clk;
input [15:0] input1;
reg [15:0] input2;
input [2:0]aluop;
input alusrc;
input [15:0] immd,reg_out;
output reg zero;
output reg [15:0] out;
//always @(clk)
always @*
begin
if(alusrc==1)
	input2=immd;
else
	input2=reg_out;
end
always @*
begin
if(aluop==1)
	out=input1&input2;
if(aluop==2)
	out=input1|input2;
if(aluop==3)
	out=input1^input2;
if(aluop==4)
	out=input1+input2;
if(aluop==5)
	out=input1-input2;
if(aluop==6)
	out=input1*input2;
if(aluop==7)
	out=input1/input2;
end
//always @(clk)
always @*
begin
if(out==0)
	begin
		zero=1;
	end
else
	begin 
		zero=0; 
   end
end
endmodule

