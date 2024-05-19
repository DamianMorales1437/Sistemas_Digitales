`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg data;
reg clk;
reg reset;
reg enable;
// Senales tipo wire para las salidas del modulo
wire q1,q2,q3,q4,q5,q6,q7,q8,q9,q10;

ffd_ra U0(
.d(data),
.clk(clk),
.reset(reset),
.q(q1)
);

ffd_rs U1(
.d(data),
.clk(clk),
.reset(reset),
.q(q2)
);

fft_rs U2(
.T(data),
.clk(clk),
.reset(reset),
.q(q3)
);

fft_ra U3(
.T(data),
.clk(clk),
.reset(reset),
.q(q4)
);

ffd_es U4(
.d(data),
.clk(clk),
.enable(enable),
.q(q5)
);

fft_es U5(
.T(data),
.clk(clk),
.enable(enable),
.q(q6)
);

ffd_eas U6(
.d(data),
.clk(clk),
.enable(enable),
.q(q7)
);

fft_eas U7(
.T(data),
.clk(clk),
.enable(enable),
.q(q8)
);

ffd_ers U8(
.d(data),
.clk(clk),
.enable(enable),
.reset(reset),
.q(q9)
);

fft_ers U9(
.T(data),
.clk(clk),
.enable(enable),
.reset(reset),
.q(q10)
);

ffd_esra U10(
.d(data),
.clk(clk),
.enable(enable),
.reset(reset),
.q(q11)
);

fft_esra U11(
.T(data),
.clk(clk),
.enable(enable),
.reset(reset),
.q(q12)
);

initial
begin
 clk = 1'b0;
 reset = 1'b0 ;
 data = 1'b0;
end

always
#3 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultadosff.vcd");
$dumpvars;

// Valores iniciales
data=1'b1;
reset=1'b0;
enable=1'b1;
#7 //aplico entrada espero xx ns

data=1'b1;
reset=1'b1;
enable=1'b1;
#1

data=1'b1;
reset=1'b0;
enable=1'b1;
#4

data=1'b1;
reset=1'b0;
enable=1'b1;
#3

data=1'b1;
reset=1'b1;
enable=1'b1;
#1

data=1'b1;
reset=1'b0;
enable=1'b1;
#6

data=1'b1;
reset=1'b0;
enable=1'b0;
#11

data=1'b0;
reset=1'b0;
enable=1'b0;
#12

$finish;
end

endmodule
