// Flip flop D, Enable sync y reset async, flanco ascendente.
module ffd_esra (
	input d,
	input clk,
	input enable,
	input reset,
	output q
);
//------------Variables Internas--------
reg q;

//-------------Descripcion---------
always @ (posedge clk or posedge reset)
  if (reset) begin
    q <= 1'b0;
  end  else if (enable) begin
    q <= d;
  end 

endmodule //Fin del modulo
