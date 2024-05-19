
_VerDisplay1:

;Parcial1_punto2.c,26 :: 		void VerDisplay1 (int num, const unsigned short simb_dig_disp[],const int delay)
;Parcial1_punto2.c,31 :: 		C = num;
	MOVF       FARG_VerDisplay1_num+0, 0
	MOVWF      VerDisplay1_C_L0+0
;Parcial1_punto2.c,32 :: 		D = num;
	MOVF       FARG_VerDisplay1_num+0, 0
	MOVWF      VerDisplay1_D_L0+0
;Parcial1_punto2.c,34 :: 		PORTB = simb_dig_disp[U]; //Visualiza en el primer dips el digito/SIMBOLO.
	MOVF       FARG_VerDisplay1_num+0, 0
	ADDWF      FARG_VerDisplay1_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_VerDisplay1_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;Parcial1_punto2.c,35 :: 		PORTA.F0=1; //activa en alto el primer display
	BSF        PORTA+0, 0
;Parcial1_punto2.c,36 :: 		Vdelay_ms(delay);//Retardo de 10ms
	MOVF       FARG_VerDisplay1_delay+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       FARG_VerDisplay1_delay+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;Parcial1_punto2.c,37 :: 		PORTA=0;//Desactiva todos los displays.
	CLRF       PORTA+0
;Parcial1_punto2.c,38 :: 		PORTB = simb_dig_disp[D]; //Visualiza en el segundo dips el digito/SIMBOLO.
	MOVF       VerDisplay1_D_L0+0, 0
	ADDWF      FARG_VerDisplay1_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_VerDisplay1_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;Parcial1_punto2.c,39 :: 		PORTA.F1=1; //activa en alto el segundo display
	BSF        PORTA+0, 1
;Parcial1_punto2.c,40 :: 		Vdelay_ms(delay);//Retardo de 10ms
	MOVF       FARG_VerDisplay1_delay+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       FARG_VerDisplay1_delay+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;Parcial1_punto2.c,41 :: 		PORTA=0;//Desactiva todos los displays.
	CLRF       PORTA+0
;Parcial1_punto2.c,42 :: 		PORTB = simb_dig_disp[C]; //Visualiza en el tercer dips el digito/SIMBOLO.
	MOVF       VerDisplay1_C_L0+0, 0
	ADDWF      FARG_VerDisplay1_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVLW      0
	ADDWFC     FARG_VerDisplay1_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;Parcial1_punto2.c,43 :: 		PORTA.F2=1; //activa en alto el tercer display
	BSF        PORTA+0, 2
;Parcial1_punto2.c,44 :: 		Vdelay_ms(delay);//Retardo de 10ms
	MOVF       FARG_VerDisplay1_delay+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       FARG_VerDisplay1_delay+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;Parcial1_punto2.c,45 :: 		PORTA=0;//Desactiva todos los displays.
	CLRF       PORTA+0
;Parcial1_punto2.c,46 :: 		}
L_end_VerDisplay1:
	RETURN
; end of _VerDisplay1

_VerDisplay_digitos:

;Parcial1_punto2.c,47 :: 		void VerDisplay_digitos(int Numero1,const unsigned short simb_dig_disp[],const int delay, short finish)
;Parcial1_punto2.c,52 :: 		C =  Numero1/100; //centenas, digito tercer disp
	MOVLW      100
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       FARG_VerDisplay_digitos_Numero1+0, 0
	MOVWF      R0
	MOVF       FARG_VerDisplay_digitos_Numero1+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      FLOC__VerDisplay_digitos+2
	MOVF       R1, 0
	MOVWF      FLOC__VerDisplay_digitos+3
	MOVF       FLOC__VerDisplay_digitos+2, 0
	MOVWF      VerDisplay_digitos_C_L0+0
	MOVF       FLOC__VerDisplay_digitos+3, 0
	MOVWF      VerDisplay_digitos_C_L0+1
;Parcial1_punto2.c,53 :: 		D = (Numero1-C*100)/10; //decenas, digito segundo disp
	MOVF       FLOC__VerDisplay_digitos+2, 0
	MOVWF      R0
	MOVF       FLOC__VerDisplay_digitos+3, 0
	MOVWF      R1
	MOVLW      100
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Mul_16X16_U+0
	MOVF       R0, 0
	SUBWF      FARG_VerDisplay_digitos_Numero1+0, 0
	MOVWF      FLOC__VerDisplay_digitos+0
	MOVF       R1, 0
	SUBWFB     FARG_VerDisplay_digitos_Numero1+1, 0
	MOVWF      FLOC__VerDisplay_digitos+1
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       FLOC__VerDisplay_digitos+0, 0
	MOVWF      R0
	MOVF       FLOC__VerDisplay_digitos+1, 0
	MOVWF      R1
	CALL       _Div_16X16_U+0
	MOVF       R0, 0
	MOVWF      VerDisplay_digitos_D_L0+0
	MOVF       R1, 0
	MOVWF      VerDisplay_digitos_D_L0+1
;Parcial1_punto2.c,54 :: 		U = (Numero1-C*100-D*10); //unidades, digito primer disp
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Mul_16X16_U+0
	MOVF       R0, 0
	SUBWF      FLOC__VerDisplay_digitos+0, 0
	MOVWF      VerDisplay_digitos_U_L0+0
	MOVF       R1, 0
	SUBWFB     FLOC__VerDisplay_digitos+1, 0
	MOVWF      VerDisplay_digitos_U_L0+1
;Parcial1_punto2.c,55 :: 		if(C>5) C=C-5; //solo numeros del 0-5
	MOVF       FLOC__VerDisplay_digitos+3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__VerDisplay_digitos56
	MOVF       FLOC__VerDisplay_digitos+2, 0
	SUBLW      5
L__VerDisplay_digitos56:
	BTFSC      STATUS+0, 0
	GOTO       L_VerDisplay_digitos0
	MOVLW      5
	SUBWF      VerDisplay_digitos_C_L0+0, 1
	MOVLW      0
	SUBWFB     VerDisplay_digitos_C_L0+1, 1
L_VerDisplay_digitos0:
;Parcial1_punto2.c,56 :: 		if(D>5) D=D-5;
	MOVF       VerDisplay_digitos_D_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__VerDisplay_digitos57
	MOVF       VerDisplay_digitos_D_L0+0, 0
	SUBLW      5
L__VerDisplay_digitos57:
	BTFSC      STATUS+0, 0
	GOTO       L_VerDisplay_digitos1
	MOVLW      5
	SUBWF      VerDisplay_digitos_D_L0+0, 1
	MOVLW      0
	SUBWFB     VerDisplay_digitos_D_L0+1, 1
L_VerDisplay_digitos1:
;Parcial1_punto2.c,57 :: 		if(U>5) U=U-5;
	MOVF       VerDisplay_digitos_U_L0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__VerDisplay_digitos58
	MOVF       VerDisplay_digitos_U_L0+0, 0
	SUBLW      5
L__VerDisplay_digitos58:
	BTFSC      STATUS+0, 0
	GOTO       L_VerDisplay_digitos2
	MOVLW      5
	SUBWF      VerDisplay_digitos_U_L0+0, 1
	MOVLW      0
	SUBWFB     VerDisplay_digitos_U_L0+1, 1
L_VerDisplay_digitos2:
;Parcial1_punto2.c,58 :: 		PORTB = simb_dig_disp[U]; //Visualiza las unidades.
	MOVF       VerDisplay_digitos_U_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_U_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;Parcial1_punto2.c,59 :: 		PORTA.F0=1; //Activa en alto el primer display.
	BSF        PORTA+0, 0
;Parcial1_punto2.c,60 :: 		Vdelay_ms(delay);//Retardo de 10ms
	MOVF       FARG_VerDisplay_digitos_delay+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       FARG_VerDisplay_digitos_delay+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;Parcial1_punto2.c,61 :: 		PORTA=0;//Desactiva todos los displays.
	CLRF       PORTA+0
;Parcial1_punto2.c,62 :: 		if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
	MOVF       VerDisplay_digitos_U_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_U_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R2
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R2, 0
	XORWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos5
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R2
	MOVF       VerDisplay_digitos_C_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_C_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R2, 0
	XORWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos5
	MOVF       FARG_VerDisplay_digitos_finish+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos5
L__VerDisplay_digitos49:
;Parcial1_punto2.c,63 :: 		{Sound_play(1900,5);}
	MOVLW      108
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      5
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
L_VerDisplay_digitos5:
;Parcial1_punto2.c,64 :: 		PORTB = simb_dig_disp[D]; //Visualiza las decenas.
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;Parcial1_punto2.c,65 :: 		PORTA.F1=1; //Activa en alto el primer display.
	BSF        PORTA+0, 1
;Parcial1_punto2.c,66 :: 		Vdelay_ms(delay);//Retardo de 10ms
	MOVF       FARG_VerDisplay_digitos_delay+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       FARG_VerDisplay_digitos_delay+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;Parcial1_punto2.c,67 :: 		PORTA=0;//Desactiva todos los displays.
	CLRF       PORTA+0
;Parcial1_punto2.c,68 :: 		if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
	MOVF       VerDisplay_digitos_U_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_U_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R2
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R2, 0
	XORWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos8
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R2
	MOVF       VerDisplay_digitos_C_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_C_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R2, 0
	XORWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos8
	MOVF       FARG_VerDisplay_digitos_finish+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos8
L__VerDisplay_digitos48:
;Parcial1_punto2.c,69 :: 		{Sound_play(444,5);}
	MOVLW      188
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      5
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
L_VerDisplay_digitos8:
;Parcial1_punto2.c,70 :: 		PORTB = simb_dig_disp[C]; //Visualiza las centenas.
	MOVF       VerDisplay_digitos_C_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_C_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;Parcial1_punto2.c,71 :: 		PORTA.F2=1; //Activa en alto el primer display.
	BSF        PORTA+0, 2
;Parcial1_punto2.c,72 :: 		Vdelay_ms(delay);//Retardo de 10ms
	MOVF       FARG_VerDisplay_digitos_delay+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       FARG_VerDisplay_digitos_delay+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;Parcial1_punto2.c,73 :: 		PORTA=0;//Desactiva todos los displays.
	CLRF       PORTA+0
;Parcial1_punto2.c,74 :: 		if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
	MOVF       VerDisplay_digitos_U_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_U_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R2
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R2, 0
	XORWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos11
	MOVF       VerDisplay_digitos_D_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_D_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R2
	MOVF       VerDisplay_digitos_C_L0+0, 0
	ADDWF      FARG_VerDisplay_digitos_simb_dig_disp+0, 0
	MOVWF      FSR0L
	MOVF       VerDisplay_digitos_C_L0+1, 0
	ADDWFC     FARG_VerDisplay_digitos_simb_dig_disp+1, 0
	MOVWF      FSR0H
	MOVF       INDF0+0, 0
	MOVWF      R1
	MOVF       R2, 0
	XORWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos11
	MOVF       FARG_VerDisplay_digitos_finish+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_VerDisplay_digitos11
L__VerDisplay_digitos47:
;Parcial1_punto2.c,75 :: 		{Sound_play(1900,5);}
	MOVLW      108
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      5
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
L_VerDisplay_digitos11:
;Parcial1_punto2.c,76 :: 		}
L_end_VerDisplay_digitos:
	RETURN
; end of _VerDisplay_digitos

_main:

;Parcial1_punto2.c,78 :: 		void main ()
;Parcial1_punto2.c,80 :: 		unsigned short N=0;//Variable de conteo.
	CLRF       main_N_L0+0
	CLRF       main_P_L0+0
	CLRF       main_cont_L0+0
	CLRF       main_L_L0+0
	CLRF       main_L_L0+1
;Parcial1_punto2.c,88 :: 		ANSELA=0;
	CLRF       ANSELA+0
;Parcial1_punto2.c,89 :: 		ANSELB=0;
	CLRF       ANSELB+0
;Parcial1_punto2.c,90 :: 		TRISB = 0; //condigura el puerto B como salida
	CLRF       TRISB+0
;Parcial1_punto2.c,91 :: 		TRISA = 0xF0; //configura el puerto A como salida (tres disp)
	MOVLW      240
	MOVWF      TRISA+0
;Parcial1_punto2.c,92 :: 		PORTA = 0b0000000; // se desactivan todos los displays
	CLRF       PORTA+0
;Parcial1_punto2.c,93 :: 		PORTB=0;
	CLRF       PORTB+0
;Parcial1_punto2.c,94 :: 		Sound_Init(&PORTB,7);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Sound_Init_snd_port+1
	MOVLW      7
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;Parcial1_punto2.c,95 :: 		while (1) // Bucle infinito
L_main12:
;Parcial1_punto2.c,97 :: 		if(Button(&PORTA,6,1,0))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTA+0)
	MOVWF      FARG_Button_port+1
	MOVLW      6
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main14
;Parcial1_punto2.c,99 :: 		Num_Prob[0]=P_ALTAS[0];
	MOVLW      118
	MOVWF      main_Num_Prob_L0+0
;Parcial1_punto2.c,100 :: 		Num_Prob[1]=P_ALTAS[1];
	MOVLW      73
	MOVWF      main_Num_Prob_L0+1
;Parcial1_punto2.c,101 :: 		Num_Prob[2]=P_ALTAS[2];
	MOVLW      118
	MOVWF      main_Num_Prob_L0+2
;Parcial1_punto2.c,102 :: 		Num_Prob[3]=P_ALTAS[3];
	MOVLW      73
	MOVWF      main_Num_Prob_L0+3
;Parcial1_punto2.c,103 :: 		Num_Prob[4]=P_ALTAS[4];
	MOVLW      118
	MOVWF      main_Num_Prob_L0+4
;Parcial1_punto2.c,104 :: 		Num_Prob[5]=P_ALTAS[5];//Probabilidades altas
	MOVLW      73
	MOVWF      main_Num_Prob_L0+5
;Parcial1_punto2.c,105 :: 		}
	GOTO       L_main15
L_main14:
;Parcial1_punto2.c,108 :: 		Num_Prob[0]=Digitos[0];
	MOVLW      118
	MOVWF      main_Num_Prob_L0+0
;Parcial1_punto2.c,109 :: 		Num_Prob[1]=Digitos[1];
	MOVLW      73
	MOVWF      main_Num_Prob_L0+1
;Parcial1_punto2.c,110 :: 		Num_Prob[2]=Digitos[2];
	MOVLW      54
	MOVWF      main_Num_Prob_L0+2
;Parcial1_punto2.c,111 :: 		Num_Prob[3]=Digitos[3];
	MOVLW      92
	MOVWF      main_Num_Prob_L0+3
;Parcial1_punto2.c,112 :: 		Num_Prob[4]=Digitos[4];
	MOVLW      99
	MOVWF      main_Num_Prob_L0+4
;Parcial1_punto2.c,113 :: 		Num_Prob[5]=Digitos[5]; //Probabilidades bajas
	MOVLW      119
	MOVWF      main_Num_Prob_L0+5
;Parcial1_punto2.c,114 :: 		}
L_main15:
;Parcial1_punto2.c,116 :: 		VerDisplay1(cont,SIMBOLOS,1); //Visualiza el codigo de reposo (30ms)
	MOVF       main_cont_L0+0, 0
	MOVWF      FARG_VerDisplay1_num+0
	CLRF       FARG_VerDisplay1_num+1
	MOVLW      _SIMBOLOS+0
	MOVWF      FARG_VerDisplay1_simb_dig_disp+0
	MOVLW      hi_addr(_SIMBOLOS+0)
	MOVWF      FARG_VerDisplay1_simb_dig_disp+1
	MOVLW      1
	MOVWF      FARG_VerDisplay1_delay+0
	MOVLW      0
	MOVWF      FARG_VerDisplay1_delay+1
	CALL       _VerDisplay1+0
;Parcial1_punto2.c,117 :: 		N++; //Cambio de simbolo cada 30ms
	INCF       main_N_L0+0, 1
;Parcial1_punto2.c,118 :: 		if(N==2)
	MOVF       main_N_L0+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;Parcial1_punto2.c,120 :: 		cont++; //Aumenta el valor del contador,recorriendo la secuencia de SIMBOLOS.
	INCF       main_cont_L0+0, 1
;Parcial1_punto2.c,121 :: 		N=0; //Reinicio conteo N
	CLRF       main_N_L0+0
;Parcial1_punto2.c,122 :: 		if(cont==4)//Cantidad total de SIMBOLOS = 4
	MOVF       main_cont_L0+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;Parcial1_punto2.c,123 :: 		cont=0; // reinicio secuencia de simbolos
	CLRF       main_cont_L0+0
L_main17:
;Parcial1_punto2.c,124 :: 		}
L_main16:
;Parcial1_punto2.c,127 :: 		if(Button(&PORTA,7,1,0))estado=1;
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTA+0)
	MOVWF      FARG_Button_port+1
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main18
	MOVLW      1
	MOVWF      _estado+0
L_main18:
;Parcial1_punto2.c,128 :: 		if(estado && Button(&PORTA,7,1,1)){
	MOVF       _estado+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTA+0)
	MOVWF      FARG_Button_port+1
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main21
L__main53:
;Parcial1_punto2.c,129 :: 		while (L<31) //APROX 10a
L_main22:
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main60
	MOVLW      31
	SUBWF      main_L_L0+0, 0
L__main60:
	BTFSC      STATUS+0, 0
	GOTO       L_main23
;Parcial1_punto2.c,132 :: 		aleatorio_0=rand()%(1000);
	CALL       _rand+0
	MOVLW      232
	MOVWF      R4
	MOVLW      3
	MOVWF      R5
	CALL       _Div_16x16_S+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      main_aleatorio_0_L1+0
	MOVF       R1, 0
	MOVWF      main_aleatorio_0_L1+1
;Parcial1_punto2.c,133 :: 		if(L==0|L<8){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}} // 30ms
	MOVLW      0
	XORWF      main_L_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main61
	MOVLW      0
	XORWF      main_L_L0+0, 0
L__main61:
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main62
	MOVLW      8
	SUBWF      main_L_L0+0, 0
L__main62:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main24
L_main25:
	MOVLW      1
	SUBWF      main_P_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main26
	INCF       main_P_L0+0, 1
	MOVF       main_aleatorio_0_L1+0, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+0
	MOVF       main_aleatorio_0_L1+1, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+1
	MOVLW      main_Num_Prob_L0+0
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+0
	MOVLW      hi_addr(main_Num_Prob_L0+0)
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+1
	MOVLW      1
	MOVWF      FARG_VerDisplay_digitos_delay+0
	MOVLW      0
	MOVWF      FARG_VerDisplay_digitos_delay+1
	CLRF       FARG_VerDisplay_digitos_finish+0
	CALL       _VerDisplay_digitos+0
	GOTO       L_main25
L_main26:
L_main24:
;Parcial1_punto2.c,134 :: 		if(L>=8 && L<23){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}} // 2*30ms
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main63
	MOVLW      8
	SUBWF      main_L_L0+0, 0
L__main63:
	BTFSS      STATUS+0, 0
	GOTO       L_main29
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVLW      23
	SUBWF      main_L_L0+0, 0
L__main64:
	BTFSC      STATUS+0, 0
	GOTO       L_main29
L__main52:
L_main30:
	MOVLW      1
	SUBWF      main_P_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main31
	INCF       main_P_L0+0, 1
	MOVF       main_aleatorio_0_L1+0, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+0
	MOVF       main_aleatorio_0_L1+1, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+1
	MOVLW      main_Num_Prob_L0+0
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+0
	MOVLW      hi_addr(main_Num_Prob_L0+0)
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+1
	MOVLW      1
	MOVWF      FARG_VerDisplay_digitos_delay+0
	MOVLW      0
	MOVWF      FARG_VerDisplay_digitos_delay+1
	CLRF       FARG_VerDisplay_digitos_finish+0
	CALL       _VerDisplay_digitos+0
	GOTO       L_main30
L_main31:
L_main29:
;Parcial1_punto2.c,135 :: 		if(L>=0 && L<29){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}  // 8*30ms
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      0
	SUBWF      main_L_L0+0, 0
L__main65:
	BTFSS      STATUS+0, 0
	GOTO       L_main34
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main66
	MOVLW      29
	SUBWF      main_L_L0+0, 0
L__main66:
	BTFSC      STATUS+0, 0
	GOTO       L_main34
L__main51:
L_main35:
	MOVLW      1
	SUBWF      main_P_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main36
	INCF       main_P_L0+0, 1
	MOVF       main_aleatorio_0_L1+0, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+0
	MOVF       main_aleatorio_0_L1+1, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+1
	MOVLW      main_Num_Prob_L0+0
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+0
	MOVLW      hi_addr(main_Num_Prob_L0+0)
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+1
	MOVLW      1
	MOVWF      FARG_VerDisplay_digitos_delay+0
	MOVLW      0
	MOVWF      FARG_VerDisplay_digitos_delay+1
	CLRF       FARG_VerDisplay_digitos_finish+0
	CALL       _VerDisplay_digitos+0
	GOTO       L_main35
L_main36:
L_main34:
;Parcial1_punto2.c,136 :: 		if(L>=0 && L<31){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}  // 21*30ms
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main67
	MOVLW      0
	SUBWF      main_L_L0+0, 0
L__main67:
	BTFSS      STATUS+0, 0
	GOTO       L_main39
	MOVLW      128
	XORWF      main_L_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVLW      31
	SUBWF      main_L_L0+0, 0
L__main68:
	BTFSC      STATUS+0, 0
	GOTO       L_main39
L__main50:
L_main40:
	MOVLW      1
	SUBWF      main_P_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main41
	INCF       main_P_L0+0, 1
	MOVF       main_aleatorio_0_L1+0, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+0
	MOVF       main_aleatorio_0_L1+1, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+1
	MOVLW      main_Num_Prob_L0+0
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+0
	MOVLW      hi_addr(main_Num_Prob_L0+0)
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+1
	MOVLW      1
	MOVWF      FARG_VerDisplay_digitos_delay+0
	MOVLW      0
	MOVWF      FARG_VerDisplay_digitos_delay+1
	CLRF       FARG_VerDisplay_digitos_finish+0
	CALL       _VerDisplay_digitos+0
	GOTO       L_main40
L_main41:
L_main39:
;Parcial1_punto2.c,137 :: 		P=0;
	CLRF       main_P_L0+0
;Parcial1_punto2.c,138 :: 		estado=0;
	CLRF       _estado+0
;Parcial1_punto2.c,139 :: 		L++;
	INCF       main_L_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_L_L0+1, 1
;Parcial1_punto2.c,140 :: 		}
	GOTO       L_main22
L_main23:
;Parcial1_punto2.c,141 :: 		finish_but=1;
	BSF        main_finish_but_L0+0, BitPos(main_finish_but_L0+0)
;Parcial1_punto2.c,142 :: 		}
L_main21:
;Parcial1_punto2.c,144 :: 		if(finish_but){
	BTFSS      main_finish_but_L0+0, BitPos(main_finish_but_L0+0)
	GOTO       L_main42
;Parcial1_punto2.c,145 :: 		while(P<10) //aprox 5ms
L_main43:
	MOVLW      10
	SUBWF      main_P_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main44
;Parcial1_punto2.c,147 :: 		VerDisplay_digitos(aleatorio_0,Num_Prob,1,1);
	MOVF       main_aleatorio_0_L1+0, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+0
	MOVF       main_aleatorio_0_L1+1, 0
	MOVWF      FARG_VerDisplay_digitos_Numero1+1
	MOVLW      main_Num_Prob_L0+0
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+0
	MOVLW      hi_addr(main_Num_Prob_L0+0)
	MOVWF      FARG_VerDisplay_digitos_simb_dig_disp+1
	MOVLW      1
	MOVWF      FARG_VerDisplay_digitos_delay+0
	MOVLW      0
	MOVWF      FARG_VerDisplay_digitos_delay+1
	MOVLW      1
	MOVWF      FARG_VerDisplay_digitos_finish+0
	CALL       _VerDisplay_digitos+0
;Parcial1_punto2.c,149 :: 		if (Salida == 1)
	MOVF       main_Salida_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main45
;Parcial1_punto2.c,151 :: 		P=167;
	MOVLW      167
	MOVWF      main_P_L0+0
;Parcial1_punto2.c,152 :: 		}
	GOTO       L_main46
L_main45:
;Parcial1_punto2.c,153 :: 		else {P++;};
	INCF       main_P_L0+0, 1
L_main46:
;Parcial1_punto2.c,154 :: 		}
	GOTO       L_main43
L_main44:
;Parcial1_punto2.c,155 :: 		}
L_main42:
;Parcial1_punto2.c,156 :: 		finish_but=0;
	BCF        main_finish_but_L0+0, BitPos(main_finish_but_L0+0)
;Parcial1_punto2.c,157 :: 		P=0;
	CLRF       main_P_L0+0
;Parcial1_punto2.c,158 :: 		aleatorio_0=0;
	CLRF       main_aleatorio_0_L1+0
	CLRF       main_aleatorio_0_L1+1
;Parcial1_punto2.c,159 :: 		L=0;
	CLRF       main_L_L0+0
	CLRF       main_L_L0+1
;Parcial1_punto2.c,160 :: 		}
	GOTO       L_main12
;Parcial1_punto2.c,161 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
