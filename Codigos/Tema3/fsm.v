// Finite state machine.
module fsm (
	input clk,
	input a,
	input reset,
	output y
);
//------------Variables Internas--------
reg [1:0] q;
wire [1:0] w1;

//-------------Descripcion---------
always @ (posedge clk)
  if (reset) begin
    q <= 2'd0;
  end  else begin
    q <= w1;
  end 

assign w1 = {(~a & q[0]), (a & ~q[1])};// Logica del estado siguiente


assign y = |q; // Logica de salida

endmodule //Fin del modulo
