`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 23:19:02
// Design Name: 
// Module Name: costest
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


module costest(

    );
    reg clk,data,reset;
    wire [7:0]cosineout;
    coswave DUT(clk,data,reset,cosineout);
    initial begin
    clk<=1'b0;
    forever #10 clk<=~clk;
    end 
    initial begin
    reset<=1'b1;
    data<=1'b0;
    #23 reset<=1'b0; data<=1'b1;
    #2000 data<=1'b0;
    #4000 $stop;
    end
endmodule
