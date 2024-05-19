`timescale 1ns / 10ps
module restador_tb();
    reg [2:0] A, B;
	wire [2:0] F;

// ===============================================
// CONEXIÓN DEL CIRCUITO QUE SE QUIERE SIMULAR
restador U0(
	.A(A), 
	.B(B),	
	.F(F)     // variables tipo wire
);

// ===============================================
// ESTÍMULOS: situaciones que se quieren observar en la simulación

// ===============================================
initial begin // los resultados se guardan en ARCHIVO.vcd
  $dumpfile("ARCHIVO.vcd");
  $dumpvars;
 A=3'd6; B=3'd4; #5;
 A=3'd3; B=3'd4; #5;
 A=3'd4; B=3'd2; #5;
 A=3'd7; B=3'd2; #5;
 A=3'd6; B=3'd1; #5;
 A=3'd3; B=3'd7; #5;
 A=3'd6; B=3'd2; #5;
 A=3'd5; B=3'd5; #5;
 
 $finish;
end

endmodule 