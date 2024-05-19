// Flip flop T enable y reset sync, flanco ascendente.
module fft_ers (
	input T,
	input clk,
	input enable,
	input reset,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk)
 if (reset) begin
   q <= 1'b0;
 end  else if (enable) begin
   if (T) q <= !q;
 end

endmodule //Fin del modulo
