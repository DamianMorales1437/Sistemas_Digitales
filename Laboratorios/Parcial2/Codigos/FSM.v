`timescale 1ns / 1ps
module FSM(
    input clk,
    input start,pause,
    input [8:0] X,E,
    output reg E1,E2,E3,E4,E5,C501,C502,C201,C202,C101,C102,C51,C52,
    output reg busy
    );
    
    parameter uno = 4'd1;
    parameter dos = 4'd2;
    parameter tres = 4'd3;
	parameter cuatro = 4'd4;
    parameter cinco = 4'd5;
    parameter seis = 4'd6;
	parameter siete = 4'd7;
	parameter ocho = 4'd8;
    parameter nueve = 4'd9;
    parameter diez = 4'd10;
	parameter once = 4'd11;
    parameter doce = 4'd12;
    parameter trece = 4'd13;
  

    reg [3:0] presente = uno; // Registro de Estado - Valor inicial
    reg [3:0] futuro;            // Entrada del registro de Estado

    // Registro de estado 
    always @(posedge clk)
        presente <= futuro;

    // Lógica del estado siguiente
    always @(presente,start,pause,X,E)
        case (presente)
            uno:
                if(start)
				begin
                    if(X % 5 == 9'd0)
				    begin
                    futuro <= dos;
                    end
				    else
				    begin
                    futuro <= uno;
				    end  
                end
				else
				begin
                    futuro <= uno;
				end	
            dos:
                if(X>=9'd50)
                    futuro <= seis;
                else
                    futuro <= tres;
            tres:
                if(X>=9'd20)
                    futuro <= diez;
                else
                    futuro <= cuatro;
			cuatro:
                if(X>=9'd10)
                    futuro <= once;
                else
                    futuro <= cinco;
			cinco:
                if(X==9'd5)
                    futuro <= doce;
                else
                    futuro <= trece;
			seis:
                if(E>=9'd100)
                    futuro <= seis;
                else
                    futuro <= siete;
			siete:
                 if(E>=9'd20)
                    futuro <= diez;
                else
                    futuro <= ocho;
			ocho:
                if(E>=9'd10)
                    futuro <= once;
                else
                    futuro <= nueve;
            nueve:
                if(E==9'd5)
                    futuro <= doce;
                else
                    futuro <= trece;
			diez:
                if(E>=9'd40)
                    futuro <= diez;
                else
                    futuro <= ocho;
			once:
                if(E==9'd15)
                    futuro <= doce;
                else
                    futuro <= trece;
			doce:
                if(pause)
                    futuro <= trece;
                else
                    futuro <= uno;
			trece:
                 if(pause)
                    futuro <= trece;
                else
                    futuro <= uno;
            default:
                futuro <= uno;
        endcase
    
    // Lógica de salida
    always @(presente)
        case (presente)
            uno : begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b1;
                C501 <= 1'b0;
				C502 <= 1'b1;
                C201 <= 1'b0;
				C202 <= 1'b1;
		        C101 <= 1'b0;
				C102 <= 1'b1;
				C51 <= 1'b0;
				C52 <= 1'b1;
				busy <= 1'b0;
            end
            dos: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b1;
                C501 <= 1'b0;
				C502 <= 1'b1;
                C201 <= 1'b0;
				C202 <= 1'b1;
		        C101 <= 1'b0;
				C102 <= 1'b1;
				C51 <= 1'b0;
				C52 <= 1'b1;
				busy <= 1'b1;
            end
            tres: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b1;
                C501 <= 1'b0;
				C502 <= 1'b1;
                C201 <= 1'b0;
				C202 <= 1'b1;
		        C101 <= 1'b0;
				C102 <= 1'b1;
				C51 <= 1'b0;
				C52 <= 1'b1;
				busy <= 1'b1;
            end
			cuatro: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b1;
                C501 <= 1'b0;
				C502 <= 1'b1;
                C201 <= 1'b0;
				C202 <= 1'b1;
		        C101 <= 1'b0;
				C102 <= 1'b1;
				C51 <= 1'b0;
				C52 <= 1'b1;
				busy <= 1'b1;
            end
			cinco: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b1;
                C501 <= 1'b0;
				C502 <= 1'b1;
                C201 <= 1'b0;
				C202 <= 1'b1;
		        C101 <= 1'b0;
				C102 <= 1'b1;
				C51 <= 1'b0;
				C52 <= 1'b1;
				busy <= 1'b1;
            end
			seis: begin
                E1 <= 1'b1;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b0;
                C501 <= 1'b1;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
			siete: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
			ocho: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
            nueve: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
			diez: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b1;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b1;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
			once: begin
                E1 <= 1'b0;
                E2 <= 1'b1;
                E3 <= 1'b0;
				E4 <= 1'b1;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b1;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
			doce: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b1;
				E4 <= 1'b1;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b1;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
			trece: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b0;
                C501 <= 1'b0;
				C502 <= 1'b0;
                C201 <= 1'b0;
				C202 <= 1'b0;
		        C101 <= 1'b0;
				C102 <= 1'b0;
				C51 <= 1'b0;
				C52 <= 1'b0;
				busy <= 1'b1;
            end
            default: begin
                E1 <= 1'b0;
                E2 <= 1'b0;
                E3 <= 1'b0;
				E4 <= 1'b0;
                E5 <= 1'b1;
                C501 <= 1'b0;
				C502 <= 1'b1;
                C201 <= 1'b0;
				C202 <= 1'b1;
		        C101 <= 1'b0;
				C102 <= 1'b1;
				C51 <= 1'b0;
				C52 <= 1'b1;
				busy <= 1'b0;
            end
        endcase
    
endmodule
