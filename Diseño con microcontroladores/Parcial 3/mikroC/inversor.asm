
_LEEBIT:

;inversor.c,12 :: 		char LEEBIT (unsigned int port, char bit1)
;inversor.c,15 :: 		if ((port & (1 << bit1))>0) return (1);
	MOVF        FARG_LEEBIT_bit1+0, 0 
	MOVWF       R2 
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__LEEBIT9:
	BZ          L__LEEBIT10
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__LEEBIT9
L__LEEBIT10:
	MOVF        R0, 0 
	ANDWF       FARG_LEEBIT_port+0, 0 
	MOVWF       R2 
	MOVF        FARG_LEEBIT_port+1, 0 
	ANDWF       R1, 0 
	MOVWF       R3 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__LEEBIT11
	MOVF        R2, 0 
	SUBLW       0
L__LEEBIT11:
	BTFSC       STATUS+0, 0 
	GOTO        L_LEEBIT0
	MOVLW       1
	MOVWF       R0 
	GOTO        L_end_LEEBIT
L_LEEBIT0:
;inversor.c,16 :: 		else return (0);
	CLRF        R0 
;inversor.c,17 :: 		}
L_end_LEEBIT:
	RETURN      0
; end of _LEEBIT

_interrpcion:

;inversor.c,19 :: 		void interrpcion() iv 0x0008 ics ICS_AUTO
;inversor.c,22 :: 		if (TMR2IF_bit==1)
	BTFSS       TMR2IF_bit+0, BitPos(TMR2IF_bit+0) 
	GOTO        L_interrpcion2
;inversor.c,24 :: 		eso++;
	INFSNZ      _eso+0, 1 
	INCF        _eso+1, 1 
;inversor.c,25 :: 		if (eso>=muestras-1) eso=0;
	MOVLW       1
	SUBWF       _eso+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrpcion14
	MOVLW       103
	SUBWF       _eso+0, 0 
L__interrpcion14:
	BTFSS       STATUS+0, 0 
	GOTO        L_interrpcion3
	CLRF        _eso+0 
	CLRF        _eso+1 
L_interrpcion3:
;inversor.c,27 :: 		es=onda[eso];
	MOVF        _eso+0, 0 
	MOVWF       R0 
	MOVF        _eso+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _onda+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_onda+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVF        POSTINC0+0, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       _es+0 
	MOVF        R4, 0 
	MOVWF       _es+1 
;inversor.c,29 :: 		CCPR1L=es >> 2;// carga parte baja
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	MOVF        R0, 0 
	MOVWF       CCPR1L+0 
;inversor.c,30 :: 		DC1B1_bit=LEEBIT(es,1);// carga bit 1
	MOVF        R3, 0 
	MOVWF       FARG_LEEBIT_port+0 
	MOVF        R4, 0 
	MOVWF       FARG_LEEBIT_port+1 
	MOVLW       1
	MOVWF       FARG_LEEBIT_bit1+0 
	CALL        _LEEBIT+0, 0
	BTFSC       R0, 0 
	GOTO        L__interrpcion15
	BCF         DC1B1_bit+0, BitPos(DC1B1_bit+0) 
	GOTO        L__interrpcion16
L__interrpcion15:
	BSF         DC1B1_bit+0, BitPos(DC1B1_bit+0) 
L__interrpcion16:
;inversor.c,31 :: 		DC1B0_bit=LEEBIT(es,0);  // carga bit 0
	MOVF        _es+0, 0 
	MOVWF       FARG_LEEBIT_port+0 
	MOVF        _es+1, 0 
	MOVWF       FARG_LEEBIT_port+1 
	CLRF        FARG_LEEBIT_bit1+0 
	CALL        _LEEBIT+0, 0
	BTFSC       R0, 0 
	GOTO        L__interrpcion17
	BCF         DC1B0_bit+0, BitPos(DC1B0_bit+0) 
	GOTO        L__interrpcion18
L__interrpcion17:
	BSF         DC1B0_bit+0, BitPos(DC1B0_bit+0) 
L__interrpcion18:
;inversor.c,32 :: 		TMR2IF_bit=0;
	BCF         TMR2IF_bit+0, BitPos(TMR2IF_bit+0) 
;inversor.c,33 :: 		}
L_interrpcion2:
;inversor.c,35 :: 		}
L_end_interrpcion:
L__interrpcion13:
	RETFIE      1
; end of _interrpcion

_main:

;inversor.c,37 :: 		void main()
;inversor.c,41 :: 		adcon1=0b1111;
	MOVLW       15
	MOVWF       ADCON1+0 
;inversor.c,42 :: 		INTCON=0b01000000;
	MOVLW       64
	MOVWF       INTCON+0 
;inversor.c,45 :: 		TRISA=0;
	CLRF        TRISA+0 
;inversor.c,46 :: 		trisc=0;// salida pwm
	CLRF        TRISC+0 
;inversor.c,49 :: 		CCP1CON=0b00101100;// configura como pwm;
	MOVLW       44
	MOVWF       CCP1CON+0 
;inversor.c,52 :: 		T2CON=0;
	CLRF        T2CON+0 
;inversor.c,56 :: 		T2CKPS1_bit=0;  //prescalador time 2
	BCF         T2CKPS1_bit+0, BitPos(T2CKPS1_bit+0) 
;inversor.c,57 :: 		T2CKPS0_bit=1;  //prescalador time 2
	BSF         T2CKPS0_bit+0, BitPos(T2CKPS0_bit+0) 
;inversor.c,58 :: 		PR2=143;            //registro pr2
	MOVLW       143
	MOVWF       PR2+0 
;inversor.c,60 :: 		eso=0;
	CLRF        _eso+0 
	CLRF        _eso+1 
;inversor.c,61 :: 		es=onda[eso];
	CLRF        R0 
	CLRF        R1 
	MOVLW       _onda+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_onda+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVF        POSTINC0+0, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       _es+0 
	MOVF        R4, 0 
	MOVWF       _es+1 
;inversor.c,63 :: 		CCPR1L=es >> 2;
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	MOVF        R0, 0 
	MOVWF       CCPR1L+0 
;inversor.c,65 :: 		if ((es & (1 << 1))>0) DC1B1_bit=1;
	MOVLW       2
	ANDWF       R3, 0 
	MOVWF       R1 
	MOVF        R4, 0 
	ANDLW       0
	MOVWF       R2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main20
	MOVF        R1, 0 
	SUBLW       0
L__main20:
	BTFSC       STATUS+0, 0 
	GOTO        L_main4
	BSF         DC1B1_bit+0, BitPos(DC1B1_bit+0) 
	GOTO        L_main5
L_main4:
;inversor.c,66 :: 		else DC1B1_bit=0;
	BCF         DC1B1_bit+0, BitPos(DC1B1_bit+0) 
L_main5:
;inversor.c,68 :: 		if ((es & (1 << 0))>0) DC1B0_bit=1;
	MOVLW       1
	ANDWF       _es+0, 0 
	MOVWF       R1 
	MOVF        _es+1, 0 
	ANDLW       0
	MOVWF       R2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main21
	MOVF        R1, 0 
	SUBLW       0
L__main21:
	BTFSC       STATUS+0, 0 
	GOTO        L_main6
	BSF         DC1B0_bit+0, BitPos(DC1B0_bit+0) 
	GOTO        L_main7
L_main6:
;inversor.c,69 :: 		else DC1B0_bit=0;
	BCF         DC1B0_bit+0, BitPos(DC1B0_bit+0) 
L_main7:
;inversor.c,72 :: 		TMR2IF_bit=0;
	BCF         TMR2IF_bit+0, BitPos(TMR2IF_bit+0) 
;inversor.c,73 :: 		TMR2IE_bit=1;
	BSF         TMR2IE_bit+0, BitPos(TMR2IE_bit+0) 
;inversor.c,74 :: 		GIE_bit=1;
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;inversor.c,75 :: 		TMR2ON_bit=1;//prende pwm
	BSF         TMR2ON_bit+0, BitPos(TMR2ON_bit+0) 
;inversor.c,78 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
