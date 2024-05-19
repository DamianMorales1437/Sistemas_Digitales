`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg J;
reg K;
reg clk;
reg reset;
reg enable;
// Senales tipo wire para las salidas del modulo
wire q1;

ffjk_ers U0(
.J(J),
.K(K),
.clk(clk),
.enable(enable),
.reset(reset),
.q(q1)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 enable = 1'b0;
end

always
#2 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadosjk.vcd");
$dumpvars;

// Valores iniciales
J=1'b0;
K=1'b0;
reset=1'b1;
enable=1'b0;
#3 //aplico entrada espero xx ns

// Valores iniciales
J=1'b0;
K=1'b0;
reset=1'b0;
enable=1'b1;
#2 //aplico entrada espero xx ns

// Valores iniciales
J=1'b0;
K=1'b1;
reset=1'b0;
enable=1'b1;
#2 //aplico entrada espero xx ns

// Valores iniciales
J=1'b1;
K=1'b0;
reset=1'b0;
enable=1'b1;
#4 //aplico entrada espero xx ns

// Valores iniciales
J=1'b1;
K=1'b1;
reset=1'b0;
enable=1'b1;
#8 //aplico entrada espero xx ns

// Valores iniciales
J=1'b0;
K=1'b0;
reset=1'b0;
enable=1'b1;
#7 //aplico entrada espero xx ns

$finish;
end

endmodule
