`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 19:51:12
// Design Name: 
// Module Name: Wmult_DP
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


module Wmult_DP(
    input clk,
    input [7:0] P,
    input [7:0] Q,
    output reg [15:0] M,
    input EM,
    input RA,
    input RRQ,
    input RRP,
    output reg [7:0] RQ
    );
    
    //reg  [15:0] M;
    wire [15:0] nextM;
    reg  [15:0] A;
    wire [15:0] nextA;
    //reg  [7:0] RQ;
    wire [7:0] nextRQ;
    reg  [15:0] RP;
    wire [15:0] nextRP;
    
    // Registro M
    always @(posedge clk)
        M <= nextM;
    // Parte combinacional de M
    assign nextM = (EM)?A:M;
    
    // Registro A
    always @(posedge clk)
        A <= nextA;
    // Parte combinacional de A
    assign nextA = (RA)? 16'd0 : A+( RP & {16{RQ[0]}} );
    
    // Registro RQ
    always @(posedge clk)
        RQ <= nextRQ;
    // Parte combinacional de RQ
    assign nextRQ = (RRQ)? Q : {1'b0, RQ[7:1]};
    
    // Registro RP
    always @(posedge clk)
        RP <= nextRP;
    // Parte combinacional de RP
    assign nextRP = (RRP)? {8'b0, P} : {RP[14:0], 1'b0};
    
endmodule
