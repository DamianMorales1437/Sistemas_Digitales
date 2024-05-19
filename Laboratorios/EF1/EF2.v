module EF1(
input [0:2] SW,
input [2:1] KEY,
output [9:0] LEDR
);

assign LEDR [1:0]= KEY;
assign LEDR [9:7]= SW;  
assign LEDR [6:2]=0;
endmodule