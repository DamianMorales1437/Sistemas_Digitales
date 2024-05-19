// Flip flop D reset sync, flanco ascendente.
module ffd_rs (
	input d,
	input clk,
	input reset,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
if (reset) begin
  q <= 1'b0;
end  else begin
  q <= d;
end

endmodule //Fin del modulo
