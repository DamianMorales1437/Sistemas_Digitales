`timescale 1ns / 10 ps
module punto5_pos_sop_tb();
//********************************
//declaracion de variables para conexion
 reg inA,inB,inC;
 wire outFsimp,outFpos,outFsop,outFcase;
//********************************
//conexion del circuito
punto5_pos_sop EJR(
.A(inA),
.B(inB),
.C(inC),
.Fsimp(outFsimp),
.Fpos(outFpos),
.Fsop(outFsop),
.Fcase(outFcase)
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
$display("-------|-------|------|------|-------|");
$display(" A B C | Fsimp | Fpos | Fsop | Fcase |");
$display("-------|-------|------|------|-------|");
$monitor(" %b %b %b |   %b   |   %b  |   %b  |   %b   |",inA,inB,inC,outFsimp,outFpos,outFsop,outFcase);
end

endmodule