`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 12:24:47 AM
// Design Name: 
// Module Name: exp_2
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


module exp_2( output x, y,
    input i, j, k );
    logic not_k,or_1,nand_ij,xor_1; 
    assign not_k = ~k;
    assign or_1 = i | j;
    assign nand_ij = ~(i & j);
    assign xor_1 =(or_1 ^ nand_ij);
    assign x = (or_1 & xor_1);
    assign y = (not_k ^ or_1);
endmodule
