`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg [2:0] ADDR;
reg clk;
// Senales tipo wire para las salidas del modulo
wire [7:0] D_out;

ROM_memory U0(
.clk(clk),
.ADDR(ADDR),
.D_out(D_out)
);

initial
begin
 clk = 1'd0;
 ADDR = 3'd0;
end

always
#2 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultados_ROM.vcd");
$dumpvars;

// Valores iniciales
ADDR = 3'd0;
#4 //aplico entrada espero xx ns

ADDR = 3'd1;
#4 //aplico entrada espero xx ns

ADDR = 3'd2;
#4 //aplico entrada espero xx ns

ADDR = 3'd3;
#4 //aplico entrada espero xx ns

ADDR = 3'd4;
#4 //aplico entrada espero xx ns

ADDR = 3'd5;
#4 //aplico entrada espero xx ns

ADDR = 3'd6;
#4 //aplico entrada espero xx ns

ADDR = 3'd7;
#4 //aplico entrada espero xx ns

$finish;
end

endmodule
