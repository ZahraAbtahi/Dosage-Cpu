`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:25:12 06/24/2021 
// Design Name: 
// Module Name:    Instruction_memory 
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
module Instruction_memory(clk,ext,ins,zero,branch);
input clk;
input zero;
input branch;
input [19:0] ext;
output reg [19:0] ins;
reg branch_taken;
reg [199:0] arr [19:0];
assign inpc=0;
reg [19:0] outpc;
always @*
begin
branch_taken=zero&&branch;
if(branch_taken==0)
begin
	outpc=inpc;
	outpc=outpc+4;
	ins=arr[outpc];
end
else
begin
	outpc=inpc;
	//ext=arr[outpc];
	outpc=outpc+4+(ext*4);
	ins=arr[outpc];
end
end
endmodule
