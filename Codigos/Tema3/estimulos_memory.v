`timescale 1ns/1ps
////////////////////////////////////////////////////////
module Simulacion_1();
// Senales tipo REG para las entradas del modulo
reg [1:0] dir;
reg clk;
reg we;
reg [7:0] data_in;
// Senales tipo wire para las salidas del modulo
wire [7:0] data_out;

My_memory U0(
.clk(clk),
.we(we),
.dir(dir),
.data_in(data_in),
.data_out(data_out)
);

initial
begin
 clk = 1'd0;
 we = 1'd0 ;
 dir = 2'd0;
 data_in = 8'd0;
end

always
#2 clk = !clk;

// Modulo initial
initial
begin
$dumpfile("resultados_memo.vcd");
$dumpvars;

// Valores iniciales
we = 1'd1 ;
dir = 2'd0;
data_in = 8'd3;
#4 //aplico entrada espero xx ns

we = 1'd1 ;
dir = 2'd1;
data_in = 8'd6;
#4 //aplico entrada espero xx ns

we = 1'd1 ;
dir = 2'd2;
data_in = 8'd9;
#4 //aplico entrada espero xx ns

we = 1'd1 ;
dir = 2'd3;
data_in = 8'd12;
#4 //aplico entrada espero xx ns

we = 1'd0 ;
dir = 2'd0;
data_in = 8'd0;
#4 //aplico entrada espero xx ns

we = 1'd0 ;
dir = 2'd1;
data_in = 8'd1;
#4 //aplico entrada espero xx ns

we = 1'd0 ;
dir = 2'd2;
data_in = 8'd2;
#4 //aplico entrada espero xx ns

we = 1'd0 ;
dir = 2'd3;
data_in = 8'd3;
#4 //aplico entrada espero xx ns

$finish;
end

endmodule
