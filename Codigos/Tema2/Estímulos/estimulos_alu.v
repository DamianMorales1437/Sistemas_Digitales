`timescale 1ns/1ps
////////////////////////////////////////////////////////
module estimulos_alu();
// Senales tipo REG para las entradas del modulo
reg [3:0] A;
reg [3:0] B;
reg [2:0] F;
// Senales tipo wire para las salidas del modulo
wire [3:0] Y;

ALU U0(
.A(A),
.B(B),
.F(F),
.Y(Y)
);

// Modulo initial
initial
begin
$dumpfile("resultados_ALU.vcd");
$dumpvars;
// Valores iniciales
A=4'b0001;//1
B=4'b0010;//2
F=3'b000;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b001;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b010;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b011;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b100;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b101;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b110;
#50

A=4'b0001;//1
B=4'b0010;//2
F=3'b111;
#50

$finish;
end

endmodule
