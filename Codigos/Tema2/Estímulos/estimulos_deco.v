`timescale 1ns/1ps
////////////////////////////////////////////////////////
module estimulos_deco();
// Senales tipo REG para las entradas del modulo
reg [3:0] A;

// Senales tipo wire para las salidas del modulo
wire [6:0] cable1;

sevensegment U0(
.data(A),
.segments(cable1)
);

// Modulo initial
initial
begin
$dumpfile("resultados_deco.vcd");
$dumpvars;

// Valores iniciales
A=4'd0;
#50

A=4'd1;
#50

A=4'd2;
#50

A=4'd3;
#50

A=4'd4;
#50

A=4'd5;
#50

A=4'd6;
#50

A=4'd7;
#50

A=4'd8;
#50

A=4'd9;
#50

A=4'd10;
#50

A=4'd11;
#50

$finish;
end

endmodule
