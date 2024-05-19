// Finite state machine.
module eje02 (
	input clk,
	input eoc,
	input reset,
	input go,
	output reg sc,
	output reg oe
);

// N bits para codificar 2^N estados
localparam idle = 2'd0,
           start = 2'd1,
	   waiting = 2'd2,
	   read = 2'd3;

// Variable para entrada y salida del registro
reg [1:0] e_siguiente;
reg [1:0] estado_actual = idle;

// Logica del estado siguiente
always @(*)
   case (estado_actual)
     idle: if (go)
	        e_siguiente = idle;
	     else 
		e_siguiente = start;

     start: e_siguiente = waiting;

     waiting: if (eoc)
		e_siguiente = read;
	     else
		e_siguiente = waiting;

     read: e_siguiente = idle;

     default: e_siguiente = idle; // Fault recovery
   endcase

// Estado presente
always @(posedge clk, posedge reset)
   if (reset)
	estado_actual <= idle;
   else
	estado_actual <= e_siguiente;

// Logica de salida
always @(*)
  case (estado_actual)
   idle: {sc,oe} = 2'b01;
   start: {sc,oe} = 2'b11;
   waiting: {sc,oe} = 2'b01;
   read: {sc,oe} = 2'b00;
   default: {sc,oe} = 2'b01;
  endcase
endmodule

