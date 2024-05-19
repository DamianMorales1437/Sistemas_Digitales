`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg eoc;
reg reset;
reg go;
// Senales tipo wire para las salidas del modulo
wire sc,oe;

eje02 U0(
.clk(clk),
.eoc(eoc),
.reset(reset),
.go(go),
.sc(sc),
.oe(oe)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 eoc = 1'b0;
 go = 1'b0;
end

always
#1 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadoseje02.vcd");
$dumpvars;

// Valores iniciales
eoc=1'b0;
go = 1'b0;
reset=1'b1;
#4 //aplico entrada espero xx ns

eoc=1'b0;
go = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

eoc=1'b0;
go = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

eoc=1'b0;
go = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

eoc=1'b1;
go = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

eoc=1'b0;
go = 1'b0;
reset=1'b0;
#4 //aplico entrada espero xx ns

$finish;
end

endmodule
