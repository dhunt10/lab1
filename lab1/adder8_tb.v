`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2020 12:52:14 PM
// Design Name: 
// Module Name: adder8_tb
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


module adder8_tb();
    reg [7:0] a = 8'b00000000;
    reg [7:0] b = 8'b00000000;
    wire [7:0] f;
    wire ovf;
    
    eightbit_adder UUT (
        .a(a),
        .b(b),
        .f(f),
        .ovf(ovf));
        
        
    initial
        begin
        //write testbench here where everything is tested
        
        #200; //good
        //a=8'b00001010;
        //b=8'b00001010;
        a = 8'd0;
        b = 8'd0;

        
        #200; //good
        //a=8'b00001100;
        //b=8'b00100010;
        a = 8'd12;
        b = 8'd34;
        
        #200; //eh
        //a=8-'b11110100; //took away the minus sign on both of these
        //b=8-'b11011110; //here
        a = -8'd12;
        b = -8'd34;
        
        #200; //bad
        //a=8'b01100100;
        //b=8-'b11001110; //here
        a = 8'd100;
        b = -8'd50;
        
        #200; 
        //a=8-'b10011100; //here
        //b=8'b00110010;
        a = -8'd100;
        b = 8'd50;
        
        #200;
        //a=8'b01100100;
        //b=8'b01100100;
        a = 8'd100;
        b = 8'd100;
        
        #200;
        //a=8-'b10011100; //here
        //b=8-'b10011100; //here
        a = -8'd100;
        b = -8'd100;
        
        #200;
        //a=8'b00000011;
        //b=8'b00001011;
        a = 8'd3;
        b = 8'd11;
        
        #200;     
        //a=8-'b10011011; //here
        //b=8'b00000011;
        a = -8'd101;
        b = 8'd3;
        
        #200;
        //a=8'b00001011;
        //b=8-'b10011011; //here
        a = 8'd11;
        b = -8'd101;
        
        #200;
        //a=8'b00000000;
        //b=8'b00000000;
        a = 8'd0;
        b = 8'd0;
        
        end
        
endmodule