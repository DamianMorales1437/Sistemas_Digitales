`timescale 1ns / 10 ps
module comparadores_tb();
//********************************
//declaracion de variables para conexion
 reg [4:0] aa,bb;
 wire Aes_mayor,Aes_menor,son_iguales;
//********************************
//conexion del circuito
comparadores DUT(
.A(aa),
.B(bb),
.AmayorB(Aes_mayor),
.AmenorB(Aes_menor),
.AigualB(son_iguales)
);
//*********************************
//estimulos
initial begin
  repeat (5)begin
    aa=$urandom;
    bb=$urandom;
    #20;
  end
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
$display("  A  B  | A>B  A=B  A<B");
$display("--------|--------------");
$monitor(" %2d %2d  | %b    %b    %b",aa,bb,Aes_mayor,son_iguales,Aes_menor);
end

endmodule