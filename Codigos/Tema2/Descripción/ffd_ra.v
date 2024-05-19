// Flip flop D reset Async, flanco ascendente.
module ffd_ra (
	input d,
	input clk,
	input reset,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk or posedge reset)
if (reset) begin
  q <= 1'b0;
end  else begin
  q <= d;
end

endmodule //Fin del modulo
