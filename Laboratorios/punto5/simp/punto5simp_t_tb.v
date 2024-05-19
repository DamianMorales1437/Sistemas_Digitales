`timescale 1ns / 10 ps
module punto5simp_t_tb();
//********************************
//declaracion de variables para conexion
 reg inA,inB,inC;
 wire outF;
//********************************
//conexion del circuito
punto5simp_t EJR(
.A(inA),
.B(inB),
.C(inC),
.F(outF)
);
//*********************************
//estimulos
initial begin
  inA=1'b0; inB=1'b0; inC=1'b0;  #20;
  inA=1'b0; inB=1'b0; inC=1'b1;  #20;
  inA=1'b0; inB=1'b1; inC=1'b0;  #20;
  inA=1'b0; inB=1'b1; inC=1'b1;  #20;
  inA=1'b1; inB=1'b0; inC=1'b0;  #20;
  inA=1'b1; inB=1'b0; inC=1'b1;  #20;
  inA=1'b1; inB=1'b1; inC=1'b0;  #20;
  inA=1'b1; inB=1'b1; inC=1'b1;  #20;
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
$display("-------|---");
$display(" A B C | F ");
$display("-------|---");
$monitor(" %b %b %b | %b",inA,inB,inC,outF);
end

endmodule