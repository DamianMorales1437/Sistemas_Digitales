// Flip flop T Enable sync, flanco ascendente.
module fft_es (
	input T,
	input clk,
	input enable,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
if (enable) begin
  if (T) begin
    q <= !q;
  end else
  q <= q;
end 
  


endmodule //Fin del modulo
