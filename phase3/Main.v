`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:55:37 06/23/2021 
// Design Name: 
// Module Name:    Main 
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
module Main(clk);
input clk;
wire [19:0]instruction;
wire zero;
wire branch;
wire [15:0] ext;
Instruction_memory ins_mem(clk,ext,ins,zero,branch);
wire regdst;
wire alusrc;
wire regwrite;
wire memread;
wire memreg;
wire memwrite;
wire [2:0]Aluop;
controlUnit contu(instruction[19:16],branch,regdst,alusrc,regwrite,memread,memreg,memwrite,Aluop,clk);
wire [15:0]out1;
wire [15:0]out2;
register_file registerIns(clk, instruction[15:12],instruction[11:8],instruction[7:4],data,out1,out2,regwrite,regdst);
wire [2:0]opsc;
ALu_control aluc(Aluop,instruction[3:0],opsc);
wire [15:0] out;
Alu alu(out,opsc,out1,zero,instruction[7:0],out2,alusrc,clk);
datamemory datamem(out,out2,clk,memwrite,memread,data,memtoreg);
endmodule
