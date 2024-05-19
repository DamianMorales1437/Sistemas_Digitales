`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg R;
reg reset;
// Senales tipo wire para las salidas del modulo
wire a_e,c;

eje03 U0(
.clk(clk),
.R(R),
.reset(reset),
.a_e(a_e),
.c(c)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 R = 1'b0;
end

always
#1 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadoseje03.vcd");
$dumpvars;

// Valores iniciales
R=1'b0;
reset=1'b1;
#4 //aplico entrada espero xx ns

R=1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

R=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

R=1'b1;
reset=1'b0;
#4 //aplico entrada espero xx ns

R=1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

R=1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

$finish;
end

endmodule
