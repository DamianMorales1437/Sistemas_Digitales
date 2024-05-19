
_VerDisplay:

;contador_bolsas_2022_1.c,16 :: 		void VerDisplay( int Numero )
;contador_bolsas_2022_1.c,22 :: 		UM = Numero/1000; //Cálculo de las unidades de mil.
	MOVLW      232
	MOVWF      R4
	MOVLW      3
	MOVWF      R5
	MOVF       FARG_VerDisplay_Numero+0, 0
	MOVWF      R0
	MOVF       FARG_VerDisplay_Numero+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      VerDisplay_UM_L0+0
;contador_bolsas_2022_1.c,23 :: 		C = (Numero-UM*1000)/100; //Cálculo de las centenas.
	MOVLW      0
	MOVWF      R1
	MOVLW      232
	MOVWF      R4
	MOVLW      3
	MOVWF      R5
	CALL       _Mul_16X16_U+0
	MOVF       R0, 0
	MOVWF      FLOC__VerDisplay+4
	MOVF       R1, 0
	MOVWF      FLOC__VerDisplay+5
	MOVF       FLOC__VerDisplay+4, 0
	SUBWF      FARG_VerDisplay_Numero+0, 0
	MOVWF      R0
	MOVF       FLOC__VerDisplay+5, 0
	SUBWFB     FARG_VerDisplay_Numero+1, 0
	MOVWF      R1
	MOVLW      100
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      VerDisplay_C_L0+0
;contador_bolsas_2022_1.c,24 :: 		D = (Numero-UM*1000-C*100)/10; //Cálculo de las decenas.
	MOVF       FLOC__VerDisplay+4, 0
	MOVWF      R2
	CLRF       R3
	MOVF       R2, 0
	SUBWF      FARG_VerDisplay_Numero+0, 0
	MOVWF      FLOC__VerDisplay+2
	MOVF       R3, 0
	SUBWFB     FARG_VerDisplay_Numero+1, 0
	MOVWF      FLOC__VerDisplay+3
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__VerDisplay+0
	MOVF       R1, 0
	MOVWF      FLOC__VerDisplay+1
	MOVF       FLOC__VerDisplay+0, 0
	SUBWF      FLOC__VerDisplay+2, 0
	MOVWF      R0
	MOVF       FLOC__VerDisplay+1, 0
	SUBWFB     FLOC__VerDisplay+3, 0
	MOVWF      R1
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      VerDisplay_D_L0+0
;contador_bolsas_2022_1.c,25 :: 		U = (Numero-UM*1000-C*100-D*10); //Cálculo de las unidades.
	MOVF       FLOC__VerDisplay+4, 0
	SUBWF      FARG_VerDisplay_Numero+0, 0
	MOVWF      R2
	MOVF       FLOC__VerDisplay+0, 0
	SUBWF      R2, 0
	MOVWF      FLOC__VerDisplay+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	SUBWF      FLOC__VerDisplay+0, 0
	MOVWF      R0
;contador_bolsas_2022_1.c,26 :: 		PORTB = DIGITOS[U]; //Visualiza las unidades.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       R0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,27 :: 		PORTA.F0=1; //Activa en alto el primer display
	BSF        PORTA+0, 0
;contador_bolsas_2022_1.c,28 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay0:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay0
	DECFSZ     R12, 1
	GOTO       L_VerDisplay0
	NOP
;contador_bolsas_2022_1.c,29 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,30 :: 		PORTB = DIGITOS[D]; //Visualiza las decenas.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       VerDisplay_D_L0+0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,31 :: 		PORTA.F1=1; //Activa en alto el segundo display
	BSF        PORTA+0, 1
;contador_bolsas_2022_1.c,32 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay1:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay1
	DECFSZ     R12, 1
	GOTO       L_VerDisplay1
	NOP
;contador_bolsas_2022_1.c,33 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,34 :: 		PORTB = DIGITOS[C]; //Visualiza las centenas.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       VerDisplay_C_L0+0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,35 :: 		PORTA.F2=1; //Activa en alto el tercer display
	BSF        PORTA+0, 2
;contador_bolsas_2022_1.c,36 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay2:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay2
	DECFSZ     R12, 1
	GOTO       L_VerDisplay2
	NOP
;contador_bolsas_2022_1.c,37 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,38 :: 		PORTB = DIGITOS[UM]; //Visualiza las unidades de mil.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       VerDisplay_UM_L0+0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,39 :: 		PORTA.F3=1; //Activa en alto el cuarto display
	BSF        PORTA+0, 3
;contador_bolsas_2022_1.c,40 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay3:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay3
	DECFSZ     R12, 1
	GOTO       L_VerDisplay3
	NOP
;contador_bolsas_2022_1.c,41 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,42 :: 		}
L_end_VerDisplay:
	RETURN
; end of _VerDisplay

_VerDisplay_T:

;contador_bolsas_2022_1.c,44 :: 		void VerDisplay_T( int Time )
;contador_bolsas_2022_1.c,50 :: 		UM = Time/1000; //Cálculo de las unidades de mil.
	MOVLW      232
	MOVWF      R4
	MOVLW      3
	MOVWF      R5
	MOVF       FARG_VerDisplay_T_Time+0, 0
	MOVWF      R0
	MOVF       FARG_VerDisplay_T_Time+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      VerDisplay_T_UM_L0+0
;contador_bolsas_2022_1.c,51 :: 		C = (Time-UM*1000)/100; //Cálculo de las centenas.
	MOVLW      0
	MOVWF      R1
	MOVLW      232
	MOVWF      R4
	MOVLW      3
	MOVWF      R5
	CALL       _Mul_16X16_U+0
	MOVF       R0, 0
	MOVWF      FLOC__VerDisplay_T+4
	MOVF       R1, 0
	MOVWF      FLOC__VerDisplay_T+5
	MOVF       FLOC__VerDisplay_T+4, 0
	SUBWF      FARG_VerDisplay_T_Time+0, 0
	MOVWF      R0
	MOVF       FLOC__VerDisplay_T+5, 0
	SUBWFB     FARG_VerDisplay_T_Time+1, 0
	MOVWF      R1
	MOVLW      100
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      VerDisplay_T_C_L0+0
;contador_bolsas_2022_1.c,52 :: 		D = (Time-UM*1000-C*100)/10; //Cálculo de las decenas.
	MOVF       FLOC__VerDisplay_T+4, 0
	MOVWF      R2
	CLRF       R3
	MOVF       R2, 0
	SUBWF      FARG_VerDisplay_T_Time+0, 0
	MOVWF      FLOC__VerDisplay_T+2
	MOVF       R3, 0
	SUBWFB     FARG_VerDisplay_T_Time+1, 0
	MOVWF      FLOC__VerDisplay_T+3
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__VerDisplay_T+0
	MOVF       R1, 0
	MOVWF      FLOC__VerDisplay_T+1
	MOVF       FLOC__VerDisplay_T+0, 0
	SUBWF      FLOC__VerDisplay_T+2, 0
	MOVWF      R0
	MOVF       FLOC__VerDisplay_T+1, 0
	SUBWFB     FLOC__VerDisplay_T+3, 0
	MOVWF      R1
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      VerDisplay_T_D_L0+0
;contador_bolsas_2022_1.c,53 :: 		U = (Time-UM*1000-C*100-D*10); //Cálculo de las unidades.
	MOVF       FLOC__VerDisplay_T+4, 0
	SUBWF      FARG_VerDisplay_T_Time+0, 0
	MOVWF      R2
	MOVF       FLOC__VerDisplay_T+0, 0
	SUBWF      R2, 0
	MOVWF      FLOC__VerDisplay_T+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8X8_U+0
	MOVF       R0, 0
	SUBWF      FLOC__VerDisplay_T+0, 0
	MOVWF      R0
;contador_bolsas_2022_1.c,54 :: 		PORTB = DIGITOS[U]; //Visualiza las unidades.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       R0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,55 :: 		PORTA.F0=1; //Activa en alto el primer display
	BSF        PORTA+0, 0
;contador_bolsas_2022_1.c,56 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay_T4:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay_T4
	DECFSZ     R12, 1
	GOTO       L_VerDisplay_T4
	NOP
;contador_bolsas_2022_1.c,57 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,58 :: 		PORTB = DIGITOS[D]; //Visualiza las decenas.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       VerDisplay_T_D_L0+0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,59 :: 		PORTA.F1=1; //Activa en alto el segundo display
	BSF        PORTA+0, 1
;contador_bolsas_2022_1.c,60 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay_T5:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay_T5
	DECFSZ     R12, 1
	GOTO       L_VerDisplay_T5
	NOP
;contador_bolsas_2022_1.c,61 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,62 :: 		PORTB = DIGITOS[C]; //Visualiza las centenas.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       VerDisplay_T_C_L0+0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,63 :: 		PORTA.F2=1; //Activa en alto el tercer display
	BSF        PORTA+0, 2
;contador_bolsas_2022_1.c,64 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay_T6:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay_T6
	DECFSZ     R12, 1
	GOTO       L_VerDisplay_T6
	NOP
;contador_bolsas_2022_1.c,65 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,66 :: 		PORTB = DIGITOS[UM]; //Visualiza las unidades de mil.
	MOVLW      _DIGITOS+0
	MOVWF      FSR0L
	MOVLW      hi_addr(_DIGITOS+0)
	MOVWF      FSR0H
	MOVF       VerDisplay_T_UM_L0+0, 0
	ADDWF      FSR0L, 1
	BTFSC      STATUS+0, 0
	INCF       FSR0H, 1
	MOVF       INDF0+0, 0
	MOVWF      PORTB+0
;contador_bolsas_2022_1.c,67 :: 		PORTA.F3=1; //Activa en alto el cuarto display
	BSF        PORTA+0, 3
;contador_bolsas_2022_1.c,68 :: 		delay_ms(10); //Retado de 10m segundos
	MOVLW      2
	MOVWF      R12
	MOVLW      158
	MOVWF      R13
L_VerDisplay_T7:
	DECFSZ     R13, 1
	GOTO       L_VerDisplay_T7
	DECFSZ     R12, 1
	GOTO       L_VerDisplay_T7
	NOP
;contador_bolsas_2022_1.c,69 :: 		PORTA=0; //Desactiva todos los displays.
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,70 :: 		}
L_end_VerDisplay_T:
	RETURN
; end of _VerDisplay_T

_main:

;contador_bolsas_2022_1.c,72 :: 		void main ( void )
;contador_bolsas_2022_1.c,74 :: 		unsigned short N=0; //Variable de conteo de bolsas.
	CLRF       main_N_L0+0
	CLRF       main_ciclo_L0+0
	CLRF       main_I_L0+0
	CLRF       main_Ttotal_L0+0
	CLRF       main_Numero_L0+0
	CLRF       main_Numero_L0+1
	CLRF       main_Time_L0+0
	CLRF       main_Time_L0+1
;contador_bolsas_2022_1.c,80 :: 		TRISB = 0; //Configura el puerto B como salida
	CLRF       TRISB+0
;contador_bolsas_2022_1.c,81 :: 		TRISA = 0; //Configura el puerto A como salida
	CLRF       TRISA+0
;contador_bolsas_2022_1.c,82 :: 		PORTA = 0; //Se desactiva todos los displays
	CLRF       PORTA+0
;contador_bolsas_2022_1.c,83 :: 		PORTB = 0;
	CLRF       PORTB+0
;contador_bolsas_2022_1.c,84 :: 		Sound_Init(&PORTB,7);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Sound_Init_snd_port+1
	MOVLW      7
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;contador_bolsas_2022_1.c,85 :: 		while( 1 ) //Bucle infinito
L_main8:
;contador_bolsas_2022_1.c,88 :: 		VerDisplay( Numero ); //Está función dura aproximadamente 40m segundos.
	MOVF       main_Numero_L0+0, 0
	MOVWF      FARG_VerDisplay_Numero+0
	MOVF       main_Numero_L0+1, 0
	MOVWF      FARG_VerDisplay_Numero+1
	CALL       _VerDisplay+0
;contador_bolsas_2022_1.c,91 :: 		N++;
	INCF       main_N_L0+0, 1
;contador_bolsas_2022_1.c,92 :: 		if( N==12 )
	MOVF       main_N_L0+0, 0
	XORLW      12
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;contador_bolsas_2022_1.c,94 :: 		N=0; //Se reinicia el conteo de N.
	CLRF       main_N_L0+0
;contador_bolsas_2022_1.c,95 :: 		Numero++; //Se incrementa el valor de Número.
	INCF       main_Numero_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_Numero_L0+1, 1
;contador_bolsas_2022_1.c,96 :: 		ciclo++;
	INCF       main_ciclo_L0+0, 1
;contador_bolsas_2022_1.c,97 :: 		if (ciclo == 5){
	MOVF       main_ciclo_L0+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;contador_bolsas_2022_1.c,98 :: 		ciclo = 0;
	CLRF       main_ciclo_L0+0
;contador_bolsas_2022_1.c,99 :: 		Ttotal=Ttotal+2;
	MOVLW      2
	ADDWF      main_Ttotal_L0+0, 1
;contador_bolsas_2022_1.c,100 :: 		if (Numero<=15){
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main_Numero_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVF       main_Numero_L0+0, 0
	SUBLW      15
L__main31:
	BTFSS      STATUS+0, 0
	GOTO       L_main12
;contador_bolsas_2022_1.c,101 :: 		Time=Time+2;
	MOVLW      2
	ADDWF      main_Time_L0+0, 1
	MOVLW      0
	ADDWFC     main_Time_L0+1, 1
;contador_bolsas_2022_1.c,102 :: 		}
L_main12:
;contador_bolsas_2022_1.c,103 :: 		if(Numero == 15){
	MOVLW      0
	XORWF      main_Numero_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      15
	XORWF      main_Numero_L0+0, 0
L__main32:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;contador_bolsas_2022_1.c,104 :: 		while(I<110){
L_main14:
	MOVLW      110
	SUBWF      main_I_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;contador_bolsas_2022_1.c,105 :: 		Sound_play(698,10);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      10
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;contador_bolsas_2022_1.c,106 :: 		VerDisplay( Numero );
	MOVF       main_Numero_L0+0, 0
	MOVWF      FARG_VerDisplay_Numero+0
	MOVF       main_Numero_L0+1, 0
	MOVWF      FARG_VerDisplay_Numero+1
	CALL       _VerDisplay+0
;contador_bolsas_2022_1.c,107 :: 		N++;
	INCF       main_N_L0+0, 1
;contador_bolsas_2022_1.c,108 :: 		if( N==12 )
	MOVF       main_N_L0+0, 0
	XORLW      12
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;contador_bolsas_2022_1.c,110 :: 		N=0;
	CLRF       main_N_L0+0
;contador_bolsas_2022_1.c,111 :: 		Numero++;
	INCF       main_Numero_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_Numero_L0+1, 1
;contador_bolsas_2022_1.c,112 :: 		ciclo++;
	INCF       main_ciclo_L0+0, 1
;contador_bolsas_2022_1.c,113 :: 		if (ciclo == 5){
	MOVF       main_ciclo_L0+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;contador_bolsas_2022_1.c,114 :: 		ciclo = 0;
	CLRF       main_ciclo_L0+0
;contador_bolsas_2022_1.c,115 :: 		Ttotal=Ttotal+2;
	MOVLW      2
	ADDWF      main_Ttotal_L0+0, 1
;contador_bolsas_2022_1.c,116 :: 		}
L_main17:
;contador_bolsas_2022_1.c,117 :: 		}
L_main16:
;contador_bolsas_2022_1.c,118 :: 		I++;
	INCF       main_I_L0+0, 1
;contador_bolsas_2022_1.c,119 :: 		}
	GOTO       L_main14
L_main15:
;contador_bolsas_2022_1.c,120 :: 		}
L_main13:
;contador_bolsas_2022_1.c,121 :: 		}
L_main11:
;contador_bolsas_2022_1.c,122 :: 		while (Ttotal==16){
L_main18:
	MOVF       main_Ttotal_L0+0, 0
	XORLW      16
	BTFSS      STATUS+0, 2
	GOTO       L_main19
;contador_bolsas_2022_1.c,123 :: 		Sound_play(698,100);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;contador_bolsas_2022_1.c,124 :: 		VerDisplay_T(Time);
	MOVF       main_Time_L0+0, 0
	MOVWF      FARG_VerDisplay_T_Time+0
	MOVF       main_Time_L0+1, 0
	MOVWF      FARG_VerDisplay_T_Time+1
	CALL       _VerDisplay_T+0
;contador_bolsas_2022_1.c,125 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main20:
	DECFSZ     R13, 1
	GOTO       L_main20
	DECFSZ     R12, 1
	GOTO       L_main20
	NOP
;contador_bolsas_2022_1.c,126 :: 		VerDisplay_T(Time);
	MOVF       main_Time_L0+0, 0
	MOVWF      FARG_VerDisplay_T_Time+0
	MOVF       main_Time_L0+1, 0
	MOVWF      FARG_VerDisplay_T_Time+1
	CALL       _VerDisplay_T+0
;contador_bolsas_2022_1.c,127 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main21:
	DECFSZ     R13, 1
	GOTO       L_main21
	DECFSZ     R12, 1
	GOTO       L_main21
	NOP
;contador_bolsas_2022_1.c,128 :: 		VerDisplay_T(Time);
	MOVF       main_Time_L0+0, 0
	MOVWF      FARG_VerDisplay_T_Time+0
	MOVF       main_Time_L0+1, 0
	MOVWF      FARG_VerDisplay_T_Time+1
	CALL       _VerDisplay_T+0
;contador_bolsas_2022_1.c,129 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main22:
	DECFSZ     R13, 1
	GOTO       L_main22
	DECFSZ     R12, 1
	GOTO       L_main22
	NOP
;contador_bolsas_2022_1.c,130 :: 		VerDisplay_T(Time);
	MOVF       main_Time_L0+0, 0
	MOVWF      FARG_VerDisplay_T_Time+0
	MOVF       main_Time_L0+1, 0
	MOVWF      FARG_VerDisplay_T_Time+1
	CALL       _VerDisplay_T+0
;contador_bolsas_2022_1.c,131 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main23:
	DECFSZ     R13, 1
	GOTO       L_main23
	DECFSZ     R12, 1
	GOTO       L_main23
	NOP
;contador_bolsas_2022_1.c,132 :: 		Sound_play(698,100);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;contador_bolsas_2022_1.c,133 :: 		VerDisplay(Numero);
	MOVF       main_Numero_L0+0, 0
	MOVWF      FARG_VerDisplay_Numero+0
	MOVF       main_Numero_L0+1, 0
	MOVWF      FARG_VerDisplay_Numero+1
	CALL       _VerDisplay+0
;contador_bolsas_2022_1.c,134 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main24:
	DECFSZ     R13, 1
	GOTO       L_main24
	DECFSZ     R12, 1
	GOTO       L_main24
	NOP
;contador_bolsas_2022_1.c,135 :: 		VerDisplay(Numero);
	MOVF       main_Numero_L0+0, 0
	MOVWF      FARG_VerDisplay_Numero+0
	MOVF       main_Numero_L0+1, 0
	MOVWF      FARG_VerDisplay_Numero+1
	CALL       _VerDisplay+0
;contador_bolsas_2022_1.c,136 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main25:
	DECFSZ     R13, 1
	GOTO       L_main25
	DECFSZ     R12, 1
	GOTO       L_main25
	NOP
;contador_bolsas_2022_1.c,137 :: 		VerDisplay(Numero);
	MOVF       main_Numero_L0+0, 0
	MOVWF      FARG_VerDisplay_Numero+0
	MOVF       main_Numero_L0+1, 0
	MOVWF      FARG_VerDisplay_Numero+1
	CALL       _VerDisplay+0
;contador_bolsas_2022_1.c,138 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main26:
	DECFSZ     R13, 1
	GOTO       L_main26
	DECFSZ     R12, 1
	GOTO       L_main26
	NOP
;contador_bolsas_2022_1.c,139 :: 		VerDisplay(Numero);
	MOVF       main_Numero_L0+0, 0
	MOVWF      FARG_VerDisplay_Numero+0
	MOVF       main_Numero_L0+1, 0
	MOVWF      FARG_VerDisplay_Numero+1
	CALL       _VerDisplay+0
;contador_bolsas_2022_1.c,140 :: 		delay_ms(100);
	MOVLW      17
	MOVWF      R12
	MOVLW      58
	MOVWF      R13
L_main27:
	DECFSZ     R13, 1
	GOTO       L_main27
	DECFSZ     R12, 1
	GOTO       L_main27
	NOP
;contador_bolsas_2022_1.c,141 :: 		}
	GOTO       L_main18
L_main19:
;contador_bolsas_2022_1.c,142 :: 		}
L_main10:
;contador_bolsas_2022_1.c,143 :: 		}
	GOTO       L_main8
;contador_bolsas_2022_1.c,144 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
