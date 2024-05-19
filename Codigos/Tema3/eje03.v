// Finite state machine.
module eje03 (
	input clk,
	input R,
	input reset,
	output reg a_e,
	output reg c
);

// N bits para codificar 2^N estados
localparam inicial = 2'd0,
           activo = 2'd1,
	   espera = 2'd2,
	   descarga = 2'd3;

// Variable para entrada y salida del registro
reg [1:0] e_siguiente;
reg [1:0] estado_actual = inicial;

// Logica del estado siguiente
always @(*)
   case (estado_actual)
     inicial: e_siguiente = activo;

     activo: if (R)
	        e_siguiente = espera;
	     else 
		e_siguiente = inicial;

     espera: if (R)
		e_siguiente = espera;
	     else
		e_siguiente = descarga;

     descarga: e_siguiente = inicial;

     default: e_siguiente = inicial; // Fault recovery
   endcase

// Estado presente
always @(posedge clk)
   if (reset)
	estado_actual <= inicial;
   else
	estado_actual <= e_siguiente;

// Logica de salida
always @(*)
  case (estado_actual)
   inicial: {a_e,c} = 2'b00;
   activo: {a_e,c} = 2'b10;
   espera: {a_e,c} = 2'b10;
   descarga: {a_e,c} = 2'b01;
   default: {a_e,c} = 2'b00;
  endcase
endmodule

