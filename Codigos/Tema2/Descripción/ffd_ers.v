// Flip flop D, Enable y reset sync, flanco ascendente.
module ffd_ers (
	input d,
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
    q <= d;
  end 

endmodule //Fin del modulo
