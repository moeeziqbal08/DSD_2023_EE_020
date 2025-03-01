`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 01:51:58 AM
// Design Name: 
// Module Name: exp_4
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


module exp_4(
    input logic [1:0] a,
    input logic [1:0] b,
    output logic red,green,blue 
);
    assign red = (a[1] & ~b[0]) | (a[1] & ~b[1]) | (a[0] & a[1]) | (~b[0] & ~b[1]) | (a[0] & ~b[1]);  
    assign blue = (~a[0] & b[0]) | (a[1] & ~b[1]) | (a[0] & ~b[0]) | (~a[1] & b[1]);
    assign green = (~a[0] & ~a[1]) | (~a[0] & b[1]) | (b[0] & b[1]) | (~a[1] & b[1]) | (~a[1] & b[0]);

endmodule