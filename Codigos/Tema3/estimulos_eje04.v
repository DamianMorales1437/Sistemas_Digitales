`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg inicio;
reg reset;
reg falsa;
// Senales tipo wire para las salidas del modulo
wire A,L,Y,B;

eje04 U0(
.clk(clk),
.inicio(inicio),
.reset(reset),
.falsa(falsa),
.A(A),
.L(L),
.Y(Y),
.B(B)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 inicio = 1'b0;
 falsa = 1'b0;
end

always
#1 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadosfsm04.vcd");
$dumpvars;

// Valores iniciales
inicio=1'b0;
falsa = 1'b0;
reset=1'b1;
#4 //aplico entrada espero xx ns

inicio=1'b0;
falsa = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

inicio=1'b1;
falsa = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

inicio=1'b0;
falsa = 1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

inicio=1'b0;
falsa = 1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

inicio=1'b1;
falsa = 1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

inicio=1'b0;
falsa = 1'b1;
reset=1'b0;
#3 //aplico entrada espero xx ns

inicio=1'b0;
falsa = 1'b0;
reset=1'b0;
#5 //aplico entrada espero xx ns

$finish;
end

endmodule
