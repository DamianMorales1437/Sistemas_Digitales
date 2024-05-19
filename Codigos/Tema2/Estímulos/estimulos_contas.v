`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg clk;
reg reset;
reg enable;
reg up_down;
reg [2:0] M;
// Senales tipo wire para las salidas del modulo
wire [2:0] q1,q2,q3,q4,q5;

conta_up_ers U0(
.clk(clk),
.reset(reset),
.enable(enable),
.q(q1)
);

conta_down_ers U1(
.clk(clk),
.reset(reset),
.enable(enable),
.q(q2)
);

conta_up_down_ers U2(
.clk(clk),
.reset(reset),
.enable(enable),
.up_down(up_down),
.q(q3)
);

conta_up_m5_ers U3(
.clk(clk),
.reset(reset),
.enable(enable),
.q(q4)
);

conta_up_mv_ers U4(
.clk(clk),
.reset(reset),
.enable(enable),
.M(M),
.q(q5)
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
$dumpfile("resultados_conta_02.vcd");
$dumpvars;

// Valores iniciales
reset=1'b1;
enable=1'b0;
up_down=1'b1;
M=3'd5;
#3 //aplico entrada espero xx ns

reset=1'b0;
enable=1'b1;
up_down=1'b1;
M=3'd4;
#10 //aplico entrada espero xx ns

reset=1'b0;
enable=1'b1;
up_down=1'b0;
M=3'd3;
#9 //aplico entrada espero xx ns

$finish;
end

endmodule
