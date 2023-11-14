`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 02:23:23 PM
// Design Name: 
// Module Name: mealy_tb
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


module mealy_tb();

reg P1, P2, clk, reset;
wire z;

mealy uut(.P1(P1), .P2(P2), .clk(clk), .reset(reset), .z(z));

initial begin
    clk = 1'b0;
    reset = 1'b1;
    #15 reset = 1'b0;
end

always #5 clk = ~clk;

initial begin
    #18 P2 = 0; P1 = 1;
    #10 P2 = 1; P1=0;
    #5 P2=0; P1=1;
    #10 P2=1; P1=0;
    #10 P2=0; P1=1;
    #5 P2=1; P1=0;
    #5 P2=0; P1 = 1;
    #10 $finish;
end
    
endmodule
