`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:14:51 PM
// Design Name: 
// Module Name: lab_1_q2
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
//using a 2x1 mux module to instantiate for the 4x1 mux with 2 bit inputs
module mux2x1(
    input [1:0]i0, i1,
    input s,
    output [1:0]y
    );
    //making all wire variables for 2x1 mux
    wire sn;
    wire [1:0]y1, y2;
    
    //making stuctural style 2x1 mux for 2 bit inputs
    not not1(sn, s);
    and and1(y1[0], i0[0], sn);
    and and2(y1[1], i0[1], sn);
    and and3(y2[0], i1[0], s);
    and and4(y2[1], i1[1], s);
    or or1(y[0], y1[0], y2[0]);
    or or2(y[1],y1[1], y2[1]);
endmodule


module lab_1_q2(
    input [1:0]i0, i1, i2, i3,
    input [1:0]s,
    output [1:0]y
    );
    //defining all wires to hold 2 bit inputs
    wire [1:0] y1, y2;
    
    //instantiating all 2x1 muxes to correctly select the input for y
    mux2x1 mux1s0(i0, i1, s[0], y1);
    mux2x1 mux2s0(i2, i3, s[0], y2);
    mux2x1 mux1s1(y1, y2, s[1], y);
endmodule
