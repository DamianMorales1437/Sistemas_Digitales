// Flip flop D, Enable Async, flanco ascendente.
module ffd_eas (
	input d,
	input clk,
	input enable,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk or posedge enable)
if (enable) begin
  q <= d;
end  else begin
  q <= q;
end

endmodule //Fin del modulo
