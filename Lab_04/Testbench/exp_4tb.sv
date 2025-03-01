`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 01:54:17 AM
// Design Name: 
// Module Name: exp_4tb
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


module exp_4tb();
    
    logic [1:0] a;
    logic [1:0] b;
    logic red,green,blue;

exp_4 uut( 
    .a(a),
    .b(b),
    .red(red),
    .green(green),
    .blue(blue)
);
initial begin 
         a = 2'b00; b = 2'b00;
    #10; a = 2'b00; b = 2'b01;
    #10; a = 2'b00; b = 2'b10;
    #10; a = 2'b00; b = 2'b11;
    #10; a = 2'b01; b = 2'b00;
    #10; a = 2'b01; b = 2'b01;
    #10; a = 2'b01; b = 2'b10;
    #10; a = 2'b01; b = 2'b11;
    #10; a = 2'b10; b = 2'b00;
    #10; a = 2'b10; b = 2'b01;
    #10; a = 2'b10; b = 2'b10;
    #10; a = 2'b10; b = 2'b11;
    #10; a = 2'b11; b = 2'b00;
    #10; a = 2'b11; b = 2'b01;
    #10; a = 2'b11; b = 2'b10;
    #10; a = 2'b11; b = 2'b11;
    #10;
    
    $finish;
    end
endmodule