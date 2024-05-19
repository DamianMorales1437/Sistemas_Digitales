`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module top(
    input clk,
    input start,pause,
    input [8:0] X,
	input [3:0] S,
    output busy,
	output [8:0] F
    );
	
	
    wire E1,E2,E3,E4,E5,C501,C502,C201,C202,C101,C102,C51,C52;
	wire [8:0] E,C50,C20,C10,C5;
    
    cajero Datapath(
    .clk(clk),
	.X(X),
    .E1(E1),
    .E2(E2),
    .E3(E3),
    .E4(E4),
    .E5(E5),
    .C501(C501),
    .C502(C502),
    .C201(C201),
    .C202(C202),
    .C101(C101),
    .C102(C102),
    .C51(C51),
    .C52(C52),
	.E(E),
    .C50(C50),
    .C20(C20),
    .C10(C10),
    .C5(C5)
    );

    FSM  FSM1(   
    .clk(clk),
	.start(start),
	.pause(pause),
	.busy(busy),
	.X(X),
	.E(E),
    .E1(E1),
    .E2(E2),
    .E3(E3),
    .E4(E4),
    .E5(E5),
    .C501(C501),
    .C502(C502),
    .C201(C201),
    .C202(C202),
    .C101(C101),
    .C102(C102),
    .C51(C51),
    .C52(C52)		
    );
			
	deco deco1(
	.S(S),
    .C50(C50),
    .C20(C20),
    .C10(C10),
    .C5(C5),	
	.F(F)	
	);		
			
			
			
    
endmodule
