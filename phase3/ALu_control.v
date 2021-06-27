`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:24:05 06/27/2021 
// Design Name: 
// Module Name:    ALu_control 
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
module ALu_control(opsc,Function,aluop);
input [2:0]opsc;
input [3:0]Function;
wire [2:0]sec=opsc;
integer temp1;
integer temp2;
integer temp3;
output reg [2:0]aluop;
always @*
begin
if(opsc[1]==1)
	temp1=4;
else
	temp1=0;
if(opsc[0]==0)
	temp2=0;
else
	temp2=5;
if(opsc[1]==1)
	temp3=temp1;
else
	temp3=temp2;
	
if(opsc[2]==1)
	aluop=Function/2;
else
	aluop=temp3;
end
endmodule

   


