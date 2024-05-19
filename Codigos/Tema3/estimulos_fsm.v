`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg a;
reg reset;
// Senales tipo wire para las salidas del modulo
wire y;

fsm U0(
.clk(clk),
.a(a),
.reset(reset),
.y(y)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 a = 1'b0;
end

always
#1 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadosfsm.vcd");
$dumpvars;

// Valores iniciales
a=1'b0;
reset=1'b1;
#4 //aplico entrada espero xx ns

a=1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

a=1'b1;
reset=1'b0;
#8 //aplico entrada espero xx ns

a=1'b0;
reset=1'b0;
#8 //aplico entrada espero xx ns

$finish;
end

endmodule
