`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2021 01:02:45 PM
// Design Name: 
// Module Name: rfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rfile(clk,read1,read2,writereg,writesignal,writedata,readdata1,readdata2);
input clk,writesignal;
input [4:0] read1,read2,writereg;
input [31:0] writedata;
output reg [31:0] readdata1,readdata2;
reg [31:0] registers[0:31];
integer index;
initial
begin
for(index=0;index<32;index=index+1)
begin
registers[index]<=index;
end
end
always@(posedge clk)
begin 
if(writesignal)
registers[writereg]<=writedata;
end

always@(posedge clk)
begin 
readdata1<=registers[read1];
readdata2<=registers[read2];
end
endmodule
