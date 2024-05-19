`timescale 1ns / 10 ps
module punto5nosimp_t_tb();
//********************************
//declaracion de variables para conexion
 reg [2:0] in;
 wire outF;
//********************************
//conexion del circuito
punto5nosimp_t EJR2(
.A(in[2]),
.B(in[1]),
.C(in[0]),
.F(outF)
);
//*********************************
/*estimulos
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
*/

initial begin
     in=0;              #10; //espera
repeat (7) begin
     in=in+1;       #10;
	 end
	 $finish; //termina la simulacion
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
$display("|-------|---|");
$display("|  ABC  | F |");
$display("|-------|---|");
$monitor("|  %b  | %b |",in,outF);
end

endmodule