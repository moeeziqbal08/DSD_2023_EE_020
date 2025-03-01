`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 10:13:07 PM
// Design Name: 
// Module Name: exp5
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


module exp5(
  input [3:0] num,  
  input [2:0] sel,  
  output logic [6:0] seg,  
  output logic [7:0] an    
);

  logic p, q, m, n;
  
  assign n = num[3];  
  assign m = num[2];
  assign q = num[1];
  assign p = num[0];

  always_comb begin
    seg[0] = (~n & ~m & ~q & p) | (~n & m & ~q & ~p) | (n & m & ~q & p) | (n & ~m & q & p);
    seg[1] = (m & q & ~p) | (n & q & p) | (n & m & ~p) | (~n & m & ~q & p);
    seg[2] = (n & m & ~p) | (n & m & q) | (~n & ~m & q & ~p);
    seg[3] = (m & q & p) | (~n & ~m & ~q & p) | (~n & m & ~q & ~p) | (n & ~m & q & ~p);
    seg[4] = (~n & p) | (~m & ~q & p) | (~n & m & ~q);
    seg[5] = (~n & ~m & p) | (~n & ~m & q) | (~n & q & p) | (n & m & ~q & p);
    seg[6] = (~n & ~m & ~q) | (~n & m & q & p) | (n & m & ~q & ~p);
  
    an[0] = sel[2] | sel[1] | sel[0];
    an[1] = sel[2] | sel[1] | ~sel[0];
    an[2] = sel[2] | ~sel[1] | sel[0];
    an[3] = sel[2] | ~sel[1] | ~sel[0];
    an[4] = ~sel[2] | sel[1] | sel[0];
    an[5] = ~sel[2] | sel[1] | ~sel[0];
    an[6] = ~sel[2] | ~sel[1] | sel[0];
    an[7] = ~sel[2] | ~sel[1] | ~sel[0];
  end
  
endmodule


