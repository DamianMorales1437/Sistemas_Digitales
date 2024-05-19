`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2022 19:51:12
// Design Name: 
// Module Name: Wmult_FSM
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


module Wmult_FSM(
    input clk,
    input start,
    input [7:0] RQ,
    output reg EM,
    output reg RA,
    output reg RRQ,
    output reg RRP,
    output reg busy
    );
    
    parameter Espera  = 2'b00;
    parameter Calcula = 2'b01;
    parameter Imprime = 2'b10;

    reg [1:0] presente = Espera; // Registro de Estado - Valor inicial
    reg [1:0] futuro;            // Entrada del registro de Estado

    // Registro de estado 
    always @(posedge clk)
        presente <= futuro;

    // Lógica del estado siguiente
    always @(presente, start, RQ)
        case (presente)
            Espera :
                if(start)
                    futuro <= Calcula;
                else
                    futuro <= Espera;
            Calcula:
                if(RQ[7:1]==7'b0000000)
                    futuro <= Imprime;
                else
                    futuro <= Calcula;
            Imprime:
                futuro <= Espera;
            default:
                futuro <= Espera;
        endcase
    
    // Lógica de salida
    always @(presente)
        case (presente)
            Espera : begin
                EM <= 1'b0;
                RA <= 1'b1;
                RRQ <= 1'b1;
                RRP <= 1'b1;
                busy <= 1'b0;
            end
            Calcula: begin
                EM <= 1'b0;
                RA <= 1'b0;
                RRQ <= 1'b0;
                RRP <= 1'b0;
                busy <= 1'b1;
            end
            Imprime: begin
                EM <= 1'b1;
                RA <= 1'b1;
                RRQ <= 1'b1;
                RRP <= 1'b1;
                busy <= 1'b1;
            end
            default: begin
                EM <= 1'b0;
                RA <= 1'b1;
                RRQ <= 1'b1;
                RRP <= 1'b1;
                busy <= 1'b0;
            end
        endcase
    
endmodule
