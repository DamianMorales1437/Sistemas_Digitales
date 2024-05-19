`timescale 1ns / 1ps
module temporizador_tb();

// VARIABLES QUE SE MODIFICAN DENTRO DEL "ALWAYS" 
reg clk;
reg reset;
reg enable;

//OTRAS VARIABLES
wire [3:0]q0;
wire [2:0]q1;


//conexion con el circuito que se quiere simular
temporizador U0(
 .clk(clk),   
 .reset(reset),
 .enable(enable),
 .q0(q0),
 .q1(q1)
);

//estimulos
initial begin
	clk = 1'b1;
	reset = 1'b0;
	enable = 1'b0;
end

always 
#1 clk = !clk;

initial begin
	 $dumpfile("resultados.vcd"); // guardar resultados de simulación en archivo
	 $dumpvars;
	 
	 reset = 1'b1;
	 enable = 1'b1;

	 #2;
	 
	 reset = 1'b0;
	 enable = 1'b1; #10;
	 enable = 1'b0; #10;
	 enable = 1'b1; #150;
	
$finish;
end

endmodule