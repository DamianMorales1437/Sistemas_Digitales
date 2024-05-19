// Flip flop D, Enable sync, flanco ascendente.
module ffd_es (
	input d,
	input clk,
	input enable,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
if (enable) begin
  q <= d;
end  else begin
  q <= q;
end

endmodule //Fin del modulo
