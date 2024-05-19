`timescale 1ns / 10 ps
module primera_funcion_tb();
//********************************
//declaracion de variables para conexion
 reg inA,inB;
 wire outF;
//********************************
//conexion del circuito
primera_funcion ejemplo_funcion(
.A(inA),
.B(inB),
.F(outF)
);
//*********************************
//estimulos
initial begin
  inA=1'b0; inB=1'b0;  #20;
  inA=1'b0; inB=1'b1;  #20;
  inA=1'b1; inB=1'b0;  #20;
  inA=1'b1; inB=1'b1;  #20;
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
$display("-----|---");
$display(" A B | F ");
$display("-----|---");
$monitor(" %b %b | %b",inA,inB,outF);
end

endmodule