`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 19:51:12
// Design Name: 
// Module Name: Wmult_top
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


module Wmult_top(
    input clk,
    input start,
    output busy,
    input [7:0] P,
    input [7:0] Q,
    output [15:0] M
    );
    
    wire EM, RA, RRQ, RRP;
    wire [7:0] RQ;
    
    Wmult_DP Datapath (
        .clk(clk),
        .P(P),
        .Q(Q),
        .M(M),
        .EM(EM),
        .RA(RA),
        .RRQ(RRQ),
        .RRP(RRP),
        .RQ(RQ)
        );

    Wmult_FSM Control_Unit (
            .clk(clk),
            .start(start),
            .RQ(RQ),
            .EM(EM),
            .RA(RA),
            .RRQ(RRQ),
            .RRP(RRP),
            .busy(busy)
            );
    
endmodule
