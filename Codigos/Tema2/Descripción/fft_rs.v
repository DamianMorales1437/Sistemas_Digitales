// Flip flop T reset sync, flanco ascendente.
module fft_rs (
	input T,
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
end  else if (T) begin
  q <= !q;
end

endmodule //Fin del modulo
