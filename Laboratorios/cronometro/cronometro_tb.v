`timescale 1ns / 1ps
module cronometro_tb();

// VARIABLES QUE SE MODIFICAN DENTRO DEL "ALWAYS" 
reg clk;
reg reset;

//OTRAS VARIABLES
wire [3:0]q0;
wire [3:0]q1;
wire [3:0]q2;
wire [3:0]q3;
wire [15:0]q;

//conexion con el circuito que se quiere simular
cronometro U0(
 .clk(clk),   
 .reset(reset),
 .q0(q0),
 .q1(q1),
 .q2(q2),
 .q3(q3),
 .q(q)
);

//estimulos
initial begin
	clk = 1'b1;
	reset = 1'b0;


end

always 
#1 clk = !clk;

initial begin
	 $dumpfile("resultados.vcd"); // guardar resultados de simulación en archivo
	 $dumpvars;
	 
	 reset = 1'b1;

	 #2;
	 
	 reset = 1'b0;
	
	 #22000;
	
$finish;
end

endmodule