`timescale 1ns/1ps

module estimulos_sum4bits();
//señales tipo REG para las entradas del modulo
reg [3:0] A;
reg [3:0] B;
//señales tipo wire para las salidas del modulo 
wire[3:0] F;

sum_4bits U0(
.A(A),
.B(B),
.F(F)
);

//modulo initial 
//valores iniciales
initial begin
A=4'b0011; B=4'b1000; #50;
A=4'b0011; B=4'b1001; #50;
A=4'b0111; B=4'b0100; #50;
end 

initial begin 
$dumpfile("resultados.vcd");
$dumpvars;
end

endmodule
