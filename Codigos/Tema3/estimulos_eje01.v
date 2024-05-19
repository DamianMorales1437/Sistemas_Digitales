`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg sf;
reg sm;
reg reset;
// Senales tipo wire para las salidas del modulo
wire A,E,P;

eje01 U0(
.clk(clk),
.sf(sf),
.reset(reset),
.sm(sm),
.A(A),
.E(E),
.P(P)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 sf = 1'b0;
 sm = 1'b0;
end

always
#1 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadoseje01.vcd");
$dumpvars;

// Valores iniciales
sf=1'b0;
sm=1'b0;
reset=1'b1;
#4 //aplico entrada espero xx ns

sf=1'b0;
sm=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

sf=1'b1;
sm=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

sf=1'b1;
sm=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

sf=1'b0;
sm=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

sf=1'b0;
sm=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

sf=1'b0;
sm=1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

sf=1'b0;
sm=1'b1;
reset=1'b0;
#2 //aplico entrada espero xx ns

sf=1'b1;
sm=1'b1;
reset=1'b0;
#2 //aplico entrada espero xx ns

sf=1'b0;
sm=1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

$finish;
end

endmodule
