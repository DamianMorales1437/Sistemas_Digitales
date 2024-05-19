`timescale 1ns / 10 ps
module estimulos_igual ();
//********************************
//declaracion de variables para conexion
 reg [2:0]A;
 reg [2:0]B;
 wire F;
//********************************
//conexion del circuito
igual S1(
.A(A),
.B(B),
.F(F)
);
//*********************************
//estimulos
initial begin
  A=3'b000; B=3'b000;   #20;
  A=3'b001; B=3'b001;   #20;
  A=3'b010; B=3'b010;   #20;
  A=3'b011; B=3'b011;   #20;
  A=3'b100; B=3'b100;   #20;
  A=3'b101; B=3'b101;   #20;
  A=3'b100; B=3'b101;   #20;
  A=3'b011; B=3'b000;   #20;
  $finish;
end
//************************************
//mostrar resultados con gtkwave
initial begin
  $dumpfile("ARCHIVO.vcd");
  $dumpvars;
end
//**********************************
//mostrar resultados en consola
initial begin
$display("---------|---|");
$display("  A   B  | F |");
$display("---------|---|");
$monitor(" %b %b | %b |",A,B,F);
end

endmodule