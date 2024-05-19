`timescale 1ns / 10 ps
module display_tb();
//********************************
//declaracion de variables para conexion
 reg [3:0] in;
 wire a,b,c,d,e,f;
//********************************
//conexion del circuito
display2 EJR(
.A(in[3]),
.B(in[2]),
.C(in[1]),
.D(in[0]),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g)
);
//*********************************
initial begin
   in=0;     #20;
   repeat (15) begin
   in=in+1;  #20;
   end     // espera
  $finish;  // termina la simulación
end
//mostrar resultados con gtkwave
initial begin
  $dumpfile("ARCHIVO.vcd");
  $dumpvars;
end
//**********************************
//mostrar resultados en consola
initial begin
$display("|------|---|---|---|---|---|---|---|");
$display("| ABCD | a | b | c | d | e | f | g |");
$display("|------|---|---|---|---|---|---|---|");
$monitor("| %b | %b | %b | %b | %b | %b | %b | %b |",in,a,b,c,d,e,f,g);
end

endmodule