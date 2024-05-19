`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module cajero(
    input clk,
	input [8:0] X,
    input E1,E2,E3,E4,E5,C501,C502,C201,C202,C101,C102,C51,C52, 
    output reg [8:0] E,C50,C20,C10,C5
    );
    
    //reg  [8:0] E;
    wire [8:0] nexE;
	wire [8:0] wE4;
	wire [8:0] wE3;
	wire [8:0] wE2;
	wire [8:0] wE1;
    
	//reg  [8:0] C50;
	wire [8:0] nexC50;
	wire [8:0] wC501;
	
	//reg  [8:0] C20;
	wire [8:0] nexC20;
	wire [8:0] wC201;
	
	//reg  [8:0] C10;
    wire [8:0] nexC10;
	wire [8:0] wC101;
	
	//reg  [8:0] C5;
    wire [8:0] nexC5;
	wire [8:0] wC51;
	
	
    // Registro E
    always @(posedge clk)
        E <= nexE;
    // Parte combinacional de E
    assign nexE = (E5)? X:wE4;
    //mux1
    assign wE1=(E1)? E-9'd50:E;
	//mux2
	assign wE2=(E2)? E-9'd10:E-9'd20;
	//mux3
    assign wE3=(E3)? E-9'd5:wE2;
	//mux4
	assign wE4=(E4)? wE3:wE1;

    // Registro C50
    always @(posedge clk)
        C50 <= nexC50;
    // Parte combinacional de C50
    assign nexC50 = (C502)? 9'd0:wC501;
    //mux1
    assign wC501=(C501)? C50+9'd1:C50;
	
	// Registro C20
    always @(posedge clk)
        C20 <= nexC20;
    // Parte combinacional de C20
    assign nexC20 = (C202)? 9'd0:wC201;
    //mux1
    assign wC201=(C201)? C20+9'd1:C20;
	
	// Registro C10
    always @(posedge clk)
        C10 <= nexC10;
    // Parte combinacional de C10
    assign nexC10 = (C102)? 9'd0:wC101;
    //mux1
    assign wC101=(C101)? C10+9'd1:C10;
	
	// Registro C5
    always @(posedge clk)
        C5 <= nexC5;
    // Parte combinacional de E
    assign nexC5 = (C52)? 9'd0:wC51;
    //mux1
    assign wC51=(C51)? C5+9'd1:C5;
	
endmodule