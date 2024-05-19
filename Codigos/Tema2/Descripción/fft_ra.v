// Flip flop T reset Async, flanco ascendente.
module fft_ra (
	input T,
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
end  else if (T) begin
  q <= !q;
end

endmodule //Fin del modulo
