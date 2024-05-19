`timescale 1ns / 1ps

module top_tb( );
    reg clk = 1'b0;
    reg start,pause;
    reg [8:0] X;
	reg [3:0] S;
    wire busy;
	wire [8:0] F;

top top1 (
    .clk(clk),
    .start(start),
	.pause(pause),
    .busy(busy),
	.S(S),
	.X(X),
	.F(F)
    );
    
    // clk generation
    always #5 clk = ~clk;
    
	
	initial begin

        X <= 9'd135;
		S <= 4'b1000;
		pause <= 1'b0;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
       
        $finish ();
    end
    initial begin
	$dumpfile("prueba.vcd");
    $dumpvars;
    end
endmodule
