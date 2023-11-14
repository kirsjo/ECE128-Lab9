`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 02:41:54 PM
// Design Name: 
// Module Name: moore_tb
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

module moore_tb();

reg P1, P2, clk, reset;
wire z;

moore uut(.P1(P1), .P2(P2), .clk(clk), .reset(reset), .z(z));

initial begin
    clk = 1'b0;
    reset = 1'b1;
    #15 reset = 1'b0;
end

always #5 clk = ~clk;

initial begin
    #22 P2 = 0; P1 = 1;
    #20 P2 = 1; P1=0;
    #15 P2=0; P1=1;
    #15 P2=1; P1=0;
    #10 P2=0; P1=1;
    #10 P2=1; P1=0;
    #10 P2=0; P1 = 1;
    #20 $finish;
end
    
endmodule