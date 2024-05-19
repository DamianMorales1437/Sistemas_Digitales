`timescale 1ns / 10 ps
module mi_primera_funcion_tb();
//********************************
//declaracion de variables para conexion
 reg [1:0] inS;
 wire outY;
//********************************
//conexion del circuito
mi_primera_funcion EJR(
.S(inS),
.Y(outY)
);
//*********************************
//estimulos
initial begin
  inS=2'd0; #20;
  inS=2'd1; #20;
  inS=2'd2; #20;
  inS=2'd3; #20;
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
$display("---|----|---");
$display("   | S  | Y ");
$display("---|----|---");
$monitor(" %d | %b | %b",inS,inS,outY);
end

endmodule