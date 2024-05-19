// Finite state machine.
module eje04 (
	input clk,
	input inicio,
	input reset,
	input falsa,
	output reg A,
	output reg L,
	output reg Y,
	output reg B
);

// N bits para codificar 2^N estados
localparam reposo = 3'd0,
           puestos = 3'd1,
	   espera = 3'd2,
	   listos = 3'd3,
	   ya = 3'd4,
	   bocina = 3'd5;

// Variable para entrada y salida del registro
reg [2:0] e_siguiente;
reg [2:0] estado_actual = reposo;

// Logica del estado siguiente
always @(*)
   case (estado_actual)
     reposo: if (inicio)
	        e_siguiente = puestos;
	     else 
		e_siguiente = reposo;

     puestos: e_siguiente = espera;

     espera: if (falsa)
		e_siguiente = listos;
	     else
		e_siguiente = espera;
     listos: if (falsa)
		e_siguiente = ya;
	     else
		e_siguiente = bocina;
     ya: e_siguiente = reposo;

     bocina: e_siguiente = reposo;

     default: e_siguiente = reposo; // Fault recovery
   endcase

// Estado presente
always @(posedge clk)
   if (reset)
	estado_actual <= reposo;
   else
	estado_actual <= e_siguiente;

// Logica de salida
always @(*)
  case (estado_actual)
   reposo: {A,L,Y,B} = 4'b0000;
   puestos: {A,L,Y,B} = 4'b1000;
   espera: {A,L,Y,B} = 4'b0000;
   listos: {A,L,Y,B} = 4'b0100;
   ya: {A,L,Y,B} = 4'b0010;
   bocina: {A,L,Y,B} = 4'b0001;
   default: {A,L,Y,B} = 4'b0000;
  endcase
endmodule

