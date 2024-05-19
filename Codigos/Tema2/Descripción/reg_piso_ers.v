// Register with Parallel input and Serial output. Enable and reset sync, flanco ascendente.
module reg_piso_ers (
	input [3:0] entrada,
	input clk,
	input enable,
	input reset,
	input desp_carga,
	output salida
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

assign D = (desp_carga) ? entrada : {1'b0,Q[3:1]};

assign salida = Q[0];

endmodule //Fin del modulo
