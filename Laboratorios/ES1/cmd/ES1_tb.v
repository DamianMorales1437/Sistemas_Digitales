`timescale 1ns / 10 ps
module ES1_tb();
//********************************
//declaracion de variables para conexion
  reg [2:0] A,B;
  reg s0,s1;
  wire [3:0] F;
//conexion del circuito
ES1 U0(
.A(A),
.B(B),
.s0(s0),
.s1(s1),
.F(F)
);
//*********************************
initial begin
   A=1;       #20;
   repeat (7) begin
   A=A+1;     #20;
   end     // espera
  $finish;  // termina la simulación
end
//*********************************
initial begin
   B=0;       #20;
   repeat (7) begin
   B=B+2;     #20;
   end     // espera
  $finish;  // termina la simulación
end
//*********************************
initial begin
 s0=1'b0; s1=1'b0; #20;
 s0=1'b0; s1=1'b1; #20;
 s0=1'b1; s1=1'b0; #20;
 s0=1'b1; s1=1'b1; #20;
 s0=1'b0; s1=1'b1; #20;
 s0=1'b1; s1=1'b0; #20;
 s0=1'b1; s1=1'b1; #40;
   $finish;                         
end
//**********************************
//mostrar resultados en consola
initial begin
$display("|-----|-----|------|---|---|");
$display("|  A  |  B  |   F  | s0| s1|");
$display("|-----|-----|------|---|---|");
$monitor("| %b | %b | %b | %b | %b |",A,B,F,s0,s1);
end

endmodule