`timescale 1ns/1ps
////////////////////////////////////////////////////////
module estimulos_mux();
// Tamano de los canales
parameter ancho=4;

// Senales tipo REG para las entradas del modulo
reg [ancho-1:0] A;
reg [ancho-1:0] B;
reg [ancho-1:0] C;
reg [ancho-1:0] D;
reg s0,s1;

// Senales tipo wire para las salidas del modulo
wire [ancho-1:0] F1,F2;

mux2a1 #(.width(ancho)) U0(
.A(A),
.B(B),
.s0(s0),
.F(F1)
);

mux4a1 #(.width(ancho)) U1(
.A(A),
.B(B),
.C(C),
.D(D),
.s0(s0),
.s1(s1),
.F(F2)
);

// Modulo initial
initial
begin
$dumpfile("resultados_mux.vcd");
$dumpvars;

// Valores iniciales
A=4'd1;
B=4'd2;
C=4'd3;
D=4'd4;
s0=1'b0;
s1=1'b0;
#50 //aplico entrada espero xx ns

A=4'd1;
B=4'd2;
C=4'd3;
D=4'd4;
s0=1'b1;
s1=1'b0;
#50 //aplico entrada espero xx ns

A=4'd1;
B=4'd2;
C=4'd3;
D=4'd4;
s0=1'b0;
s1=1'b1;
#50 //aplico entrada espero xx ns

A=4'd1;
B=4'd2;
C=4'd3;
D=4'd4;
s0=1'b1;
s1=1'b1;
#50 //aplico entrada espero xx ns

$finish;
end
endmodule
