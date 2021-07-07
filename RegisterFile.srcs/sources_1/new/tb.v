`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2021 01:24:21 PM
// Design Name: 
// Module Name: tb
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


module tb();
reg clk,writesignal;
reg [4:0] read1,read2,writereg;
reg [31:0] writedata;
wire [31:0] readdata1,readdata2;
rfile r(clk,read1,read2,writereg,writesignal,writedata,readdata1,readdata2);

initial
begin
clk=0;
while(1)
begin
#5
clk=~clk;
end
end
initial
begin
writesignal=0;
read1<=5'd0;
read2<=5'd1;
#20
writesignal=1;
writedata<=32'd2156;
writereg=5'd0;
#10
writesignal=0;
read1<=5'd0;
read2<=5'd1;
end
endmodule
