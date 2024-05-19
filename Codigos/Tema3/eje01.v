// Finite state machine 01.
module eje01 (
	input clk,
	input sf,
	input reset,
	input sm,
	output reg A,
	output reg E,
	output reg P
);
localparam inicial = 3'd0,
	MF = 3'd1,
	M = 3'd2,
	Puerta = 3'd3,
	Alarma = 3'd4;
	
reg [2:0] e_siguiente;
reg [2:0] estado_actual = inicial;

// Estado siguiente
always@(*)
case(estado_actual)
inicial: if(sf && sm)
	e_siguiente = MF;
	else
	e_siguiente = inicial;
MF: if(!sf && sm)
	e_siguiente = M;
	else if(sf && sm)
	e_siguiente = MF;
	else
	e_siguiente = Alarma;
M: if(!sf && sm)
	e_siguiente = M;
	else if(!sf && !sm)
	e_siguiente = Puerta;
	else
	e_siguiente = Alarma;
Puerta: e_siguiente = inicial;
Alarma: e_siguiente = Alarma;
default: e_siguiente = inicial;
endcase

// Estado presente
always@(posedge clk)
	if(reset)
	estado_actual <= inicial;
	else
	estado_actual <= e_siguiente;

// Salida
always@(*)
case(estado_actual)
inicial:{A,E,P}=3'b000;
MF:{A,E,P}=3'b010;
M:{A,E,P}=3'b000;
Puerta:{A,E,P}=3'b001;
Alarma:{A,E,P}=3'b100;
default:{A,E,P}=3'b000;
endcase
endmodule