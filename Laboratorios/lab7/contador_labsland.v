module contador_labsland(
input CLOCK_50,
input [1:0] SW,
output [9:5] LEDR
);

wire [29:0] cuenta;
assign LEDR[9:5]=cuenta[29:25];

contador #(30) uut(
.CLOCK(CLOCK_50),
.RESET(SW[1]),
.ENABLE(SW[0]),
.MAX_CNT(30'd500_000_000),
.COUNT(cuenta)
);
endmodule