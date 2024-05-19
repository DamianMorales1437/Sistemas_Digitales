`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2022 04:29:41
// Design Name: 
// Module Name: Wmult_top_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Wmult_top_TB( );

    reg clk = 1'b0; 
    reg start;
    wire busy;
    reg [7:0] P; 
    reg [7:0] Q;
    wire [15:0] M;

Wmult_top UUT (
    .clk(clk),
    .start(start),
    .busy(busy),
    .P(P),
    .Q(Q),
    .M(M)
    );
    
    // clk generation
    always #5 clk = ~clk;
    
    initial
    begin
        P <= 8'd0;
        Q <= 8'd0;
        start <= 1'b0;
        #100

        P <= 8'd2;
        Q <= 8'd3;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
        
        P <= 8'd5;
        Q <= 8'd63;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
        
        P <= 8'd0;
        Q <= 8'd255;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
        
        P <= 8'd1;
        Q <= 8'd255;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
        
        P <= 8'd255;
        Q <= 8'd0;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
        
        P <= 8'd255;
        Q <= 8'd1;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #90
        
        P <= 8'd255;
        Q <= 8'd255;
        start <= 1'b0;
        #10
        start <= 1'b1;
        #10
        start <= 1'b0;
        #120
        
        $finish();
    end
    initial begin
	$dumpfile("prueba.vcd");
    $dumpvars;
    end
endmodule
