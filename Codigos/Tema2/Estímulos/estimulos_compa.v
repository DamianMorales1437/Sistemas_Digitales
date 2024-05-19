`timescale 1ns/1ps
////////////////////////////////////////////////////////
module estimulos_compa();
// Senales tipo REG para las entradas del modulo
reg [3:0] A;
reg [3:0] B;

// Senales tipo wire para las salidas del modulo
wire Y1,Y2;

mayor U0(
.A(A),
.B(B),
.F(Y1)
);

igualdad U1(
.A(A),
.B(B),
.F(Y2)
);

// Modulo initial
initial
begin
$dumpfile("resultados_compa.vcd");
$dumpvars;

// Valores iniciales
A=4'b0011;//3
B=4'b1000;//8
#50 //aplico entrada espero xx ns

A=4'b0011;//3
B=4'b0001;//1
#50

A=4'b0111;//7
B=4'b0111;//7
#50

A=4'b1000;//8
B=4'b1000;//8
#50

$finish;
end

endmodule
