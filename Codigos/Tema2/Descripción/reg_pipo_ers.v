// Register with Parallel input and Parallel output. Enable and reset sync, flanco ascendente.
module reg_pipo_ers (
	input [3:0] d,
	input clk,
	input enable,
	input reset,
	output reg [3:0] q
);

//-------------Descripcion---------
always @ (posedge clk)
  if (reset) begin
    q <= 4'b0000;
  end  else if (enable) begin
    q <= d;
  end 

endmodule //Fin del modulo
