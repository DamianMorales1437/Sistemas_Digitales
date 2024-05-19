`timescale 10ns/1ns //base de tiempo de 100 MHz o 10 ns
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg PB_In;
reg reset;
reg enable;
// Senales tipo wire para las salidas del modulo
wire PB_Clean, clk2, clk4, clk8;

conta_up_ers U0(
    .clk(clk),
    .enable(enable),
    .reset(reset),
    .q({clk8,clk4,clk2})
);

reg_siso_ers U1(
    .entrada(PB_In),
    .clk(clk),
    .enable(enable),
    .reset(reset),
    .salida(PB_Clean)
);


initial
begin
 clk = 1'b0;
 PB_In  = 1'b0 ;
 reset  = 1'b0 ;
 enable = 1'b0 ;
end

always
#2.5 clk = !clk;// base de reloj de 20~Mhz o 50 ns

// Modulo initial
initial
begin
$dumpfile("resultados_rebotes.vcd");
$dumpvars;

PB_In=1'b1;
reset=1'b1;
enable=1'b0;
#3 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#42 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#6 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#6 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#98 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b0;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#5 //aplico entrada espero xx ns

PB_In=1'b1;
reset=1'b0;
enable=1'b1;
#150 //aplico entrada espero xx ns

$finish;
end

endmodule
