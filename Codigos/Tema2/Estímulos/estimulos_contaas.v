`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg reset;
reg enable;
// Senales tipo wire para las salidas del modulo
wire q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11;

ffjk_ers U0(
.J(1'b1),
.K(1'b1),
.clk(clk),
.reset((reset)),
.enable(enable),
.q(q1)
);

ffjk_ers U1(
.J(1'b1),
.K(1'b1),
.clk(q1),
.reset((reset)),
.enable(enable),
.q(q2)
);

ffjk_ers U2(
.J(1'b1),
.K(1'b1),
.clk(q2),
.reset((reset)),
.enable(enable),
.q(q3)
);

ffjk_ers U3(
.J(1'b1),
.K(1'b1),
.clk(clk),
.reset((reset)),
.enable(enable),
.q(q4)
);

ffjk_ers U4(
.J(1'b1),
.K(1'b1),
.clk(~q4),
.reset((reset)),
.enable(enable),
.q(q5)
);

ffjk_ers U5(
.J(1'b1),
.K(1'b1),
.clk(~q5),
.reset((reset)),
.enable(enable),
.q(q6)
);

ffjk_ers U6(
.J(1'b1),
.K(1'b1),
.clk(clk),
.reset((reset | q10)),
.enable(enable),
.q(q7)
);

ffjk_ers U7(
.J(1'b1),
.K(1'b1),
.clk(q7),
.reset((reset | q10)),
.enable(enable),
.q(q8)
);

ffjk_ers U8(
.J(1'b1),
.K(1'b1),
.clk(q8),
.reset((reset | q10)),
.enable(enable),
.q(q9)
);

igualdad U9(
.A({q9,q8,q7}),
.B(3'd5),
.F(q10)
);

ffjk_ers U10(
.J(1'b1),
.K(1'b1),
.clk(q10),
.reset((reset)),
.enable(enable),
.q(q11)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 enable = 1'b0;
end

always
#1 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultados_conta.vcd");
$dumpvars;

// Valores iniciales
reset=1'b0;
enable=1'b0;
#1 //aplico entrada espero xx ns

reset=1'b1;
enable=1'b0;
#2 //aplico entrada espero xx ns

reset=1'b0;
enable=1'b1;
#19 //aplico entrada espero xx ns

$finish;
end

endmodule
