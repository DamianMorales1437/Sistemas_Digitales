module circuito_1(
    input [4:0] V_SW,
    input [3:0] V_BT,
    output [8:0] G_LED
);

assign G_LED[3:0] = V_BT;
assign G_LED[8:4] = ~V_SW;

endmodule
