// Register with Serial input and Parallel output. Enable and reset sync, flanco ascendente.
module reg_sipo_ers (
	input entrada,
	input clk,
	input enable,
	input reset,
	output [3:0] salida
);
//---------Internal signals
reg [3:0] Q;
wire [3:0] D;

//-------------Descripcion---------
always @ (posedge clk)
  if (reset) begin
    Q <= 4'b0000;
  end  else if (enable) begin
    Q <= D;
  end 

assign D = {entrada,Q[3:1]};

assign salida = Q;

endmodule //Fin del modulo
