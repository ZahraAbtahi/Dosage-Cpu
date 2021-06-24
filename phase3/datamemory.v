`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:26 06/21/2021 
// Design Name: 
// Module Name:    datamemory 
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
module datamemory(address,datawrite,clk,memwrite,memread,readdata,memtoreg);
input clk;
input [15:0] address;
input memtoreg;
input memwrite;
input memread;
input [15:0] datawrite;
output reg[15:0] readdata;
reg [99:0] mem [15:0];	 
always @*
begin
if(memwrite==1)
 mem[address]=datawrite;
if(memread==1)
  begin 
  readdata=mem[address];
  end
if(memtoreg==0)
   readdata=address;
else
   readdata=mem[address];	
end  
endmodule
