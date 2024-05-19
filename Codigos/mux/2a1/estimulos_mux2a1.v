`timescale 1ns / 10 ps
module estimulos_mux2a1 ();
//********************************
//declaracion de variables para conexion
 reg [2:0]A;
 reg [2:0]B;
 reg s0;
 wire  [2:0]F;
//********************************
//conexion del circuito
mux2a1 S1(
.A(A),
.B(B),
.s0(s0),
.F(F)
);
//*********************************
//estimulos
initial begin
   A=3'b000; B=3'b001;  s0=1'b0; #20;
   A=3'b001; B=3'b000;  s0=1'b1; #20;
   A=3'b010; B=3'b011;  s0=1'b0; #20;
   A=3'b011; B=3'b010;  s0=1'b1; #20;
   A=3'b100; B=3'b100;  s0=1'b0; #20;
   A=3'b101; B=3'b101;  s0=1'b1; #20;
   A=3'b100; B=3'b101;  s0=1'b1; #20;
   A=3'b011; B=3'b000;  s0=1'b0; #20;
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
$display("-----------|-----|");
$display("  A   B  s0|  F  |");
$display("-----------|-----|");
$monitor(" %b %b %b | %b |",A,B,s0,F);
end

endmodule