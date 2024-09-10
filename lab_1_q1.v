`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 01:44:06 PM
// Design Name: 
// Module Name: lab_1_q1
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
///////////////////////////////////////////////////////////////////////////////////
//using a 2x1 mux module to instantiate for the 8x1 mux
module mux2x1(
    input i0, i1, s,
    output y
    );
    //making all wire variables for 2x1 mux
    wire sn, y1, y2;
    
    //using structural style to model 2x1 mux with logic blocks
    not not1(sn,s);
    and and1(y1, i0, sn);
    and and2(y2, i1, s);
    or or1(y, y1, y2);
endmodule
    
module lab_1_q1(
    input [7:0]i,
    input [2:0]s,
    output y
    );
    //defining all intermediate wires
    wire y1s0, y2s0, y3s0, y4s0, y1s1, y2s1;
    
    //instantiating 4 2x1 muxes for selector bit 2
    mux2x1 mux1s0(i[0], i[1], s[0], y1s0);
    mux2x1 mux2s0(i[2], i[3], s[0], y2s0);
    mux2x1 mux3s0(i[4], i[5], s[0], y3s0);
    mux2x1 mux4s0(i[6], i[7], s[0], y4s0);
    
    //instantiating 2 2x1 muxes for selector bit 1
    mux2x1 mux1s1(y1s0, y2s0, s[1], y1s1);
    mux2x1 mux2s1(y3s0, y4s0, s[1], y2s1);
    
    //instantiating 1 2x1 mux for selector bit 0
    mux2x1 mux1s2(y1s1, y2s1, s[2], y);
endmodule
