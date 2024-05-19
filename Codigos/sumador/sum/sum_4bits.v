module sum_4bits(
	input [3:0] A,
	input [3:0] B,
	output reg [3:0] F
);

always @* begin
    F = A + B;  
end
endmodule