`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2020 12:51:07 PM
// Design Name: 
// Module Name: eightbit_adder
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


module eightbit_adder(a, b, f, ovf);

    input signed [7:0] a = 8'dX;
    input signed [7:0] b = 8'dX;
    
    wire [2:0] cout;
    wire [2:0] cin;
    
    output signed [7:0] f;
    output ovf;
    
    assign f = a + b;
    //assign {cout, f} = a[7:0] + b[7:0] + cin;
    assign ovf = (~(a[7] ^ b[7])) * (a[7] ^ f[7]);
    
    
     
endmodule

