`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg [3:0] data;
reg clk;
reg enable;
reg reset;
reg entrada;
reg shift_load;
// Senales tipo wire para las salidas del modulo
wire [3:0] q1,q3,q6;
wire q2,q4,q5;

reg_pipo_ers U0(
.d(data),
.clk(clk),
.enable(enable),
.reset(reset),
.q(q1)
);

reg_siso_ers U1(
.entrada(entrada),
.clk(clk),
.enable(enable),
.reset(reset),
.salida(q2)
);

reg_sipo_ers U2(
.entrada(entrada),
.clk(clk),
.enable(enable),
.reset(reset),
.salida(q3)
);

reg_piso_ers U3(
.entrada(data),
.clk(clk),
.enable(enable),
.reset(reset),
.desp_carga(shift_load),
.salida(q4)
);

reg_piso_ers U4(
.entrada(data),
.clk(clk),
.enable(enable),
.reset(reset),
.desp_carga(shift_load),
.salida(q5)
);

reg_sipo_ers U5(
.entrada(q5),
.clk(clk),
.enable(enable),
.reset(reset),
.salida(q6)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 data = 4'b0000;
end

always
#2 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadosreg.vcd");
$dumpvars;

// Valores iniciales
data=4'b0000;
reset=1'b1;
enable=1'b1;
entrada=1'b0;
shift_load=1'b0;
#4 //aplico entrada espero xx ns

data=4'b1010;
reset=1'b0;
enable=1'b1;
entrada=1'b1;
shift_load=1'b1;
#4 //aplico entrada espero xx ns

data=4'b0010;
reset=1'b0;
enable=1'b0;
entrada=1'b0;
shift_load=1'b0;
#4 //aplico entrada espero xx ns

data=4'b0011;
reset=1'b0;
enable=1'b1;
entrada=1'b1;
shift_load=1'b0;
#16 //aplico entrada espero xx ns

$finish;
end

endmodule
