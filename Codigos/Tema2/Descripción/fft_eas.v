// Flip flop T Enable Async, flanco ascendente.
module fft_eas (
	input T,
	input clk,
	input enable,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk or posedge enable)
if (enable) begin
  if (T) begin
    q <= !q;
  end else
  q <= q;
end 
  


endmodule //Fin del modulo
