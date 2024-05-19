
_MAX7219_write_1:

;parcial_4.c,20 :: 		void MAX7219_write_1(char reg1, char reg2, char data1, char data2)
;parcial_4.c,22 :: 		MAX7219_CS_LOAD_1  = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,23 :: 		SPI1_write(reg1);
	MOVF       FARG_MAX7219_write_1_reg1+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,24 :: 		SPI1_write(data1);
	MOVF       FARG_MAX7219_write_1_data1+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,25 :: 		MAX7219_CS_LOAD_1  = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,26 :: 		SPI1_write(reg2);
	MOVF       FARG_MAX7219_write_1_reg2+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,27 :: 		SPI1_write(data2);
	MOVF       FARG_MAX7219_write_1_data2+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,28 :: 		MAX7219_CS_LOAD_1  = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,29 :: 		}
L_end_MAX7219_write_1:
	RETURN
; end of _MAX7219_write_1

_MAX7219_init_1:

;parcial_4.c,32 :: 		void MAX7219_init_1()
;parcial_4.c,34 :: 		SPI1_init();
	CALL       _SPI1_Init+0
;parcial_4.c,36 :: 		MAX7219_write_1(DECODE_MODE_REG,DECODE_MODE_REG,DECODE_ALL,DECODE_ALL);
	MOVLW      9
	MOVWF      FARG_MAX7219_write_1_reg1+0
	MOVLW      9
	MOVWF      FARG_MAX7219_write_1_reg2+0
	MOVLW      255
	MOVWF      FARG_MAX7219_write_1_data1+0
	MOVLW      255
	MOVWF      FARG_MAX7219_write_1_data2+0
	CALL       _MAX7219_write_1+0
;parcial_4.c,37 :: 		MAX7219_write_1(INTESITY_REG,INTESITY_REG,BRIGHTNESS,BRIGHTNESS);
	MOVLW      10
	MOVWF      FARG_MAX7219_write_1_reg1+0
	MOVLW      10
	MOVWF      FARG_MAX7219_write_1_reg2+0
	MOVLW      15
	MOVWF      FARG_MAX7219_write_1_data1+0
	MOVLW      15
	MOVWF      FARG_MAX7219_write_1_data2+0
	CALL       _MAX7219_write_1+0
;parcial_4.c,38 :: 		MAX7219_write_1(SCAN_LIMIT_REG,SCAN_LIMIT_REG,SCAN_ALL_DIGITS,SCAN_ALL_DIGITS);
	MOVLW      11
	MOVWF      FARG_MAX7219_write_1_reg1+0
	MOVLW      11
	MOVWF      FARG_MAX7219_write_1_reg2+0
	MOVLW      7
	MOVWF      FARG_MAX7219_write_1_data1+0
	MOVLW      7
	MOVWF      FARG_MAX7219_write_1_data2+0
	CALL       _MAX7219_write_1+0
;parcial_4.c,39 :: 		MAX7219_write_1(SHUTDOWN_REG,SHUTDOWN_REG,NORMAL_OPERATION,NORMAL_OPERATION);
	MOVLW      12
	MOVWF      FARG_MAX7219_write_1_reg1+0
	MOVLW      12
	MOVWF      FARG_MAX7219_write_1_reg2+0
	MOVLW      1
	MOVWF      FARG_MAX7219_write_1_data1+0
	MOVLW      1
	MOVWF      FARG_MAX7219_write_1_data2+0
	CALL       _MAX7219_write_1+0
;parcial_4.c,40 :: 		MAX7219_write_1(DISPLAY_TEST_REG,DISPLAY_TEST_REG,ENABLE_TEST_MODE,ENABLE_TEST_MODE);
	MOVLW      15
	MOVWF      FARG_MAX7219_write_1_reg1+0
	MOVLW      15
	MOVWF      FARG_MAX7219_write_1_reg2+0
	MOVLW      1
	MOVWF      FARG_MAX7219_write_1_data1+0
	MOVLW      1
	MOVWF      FARG_MAX7219_write_1_data2+0
	CALL       _MAX7219_write_1+0
;parcial_4.c,41 :: 		MAX7219_write_1(DISPLAY_TEST_REG,DISPLAY_TEST_REG,DISABLE_TEST_MODE,DISABLE_TEST_MODE);
	MOVLW      15
	MOVWF      FARG_MAX7219_write_1_reg1+0
	MOVLW      15
	MOVWF      FARG_MAX7219_write_1_reg2+0
	CLRF       FARG_MAX7219_write_1_data1+0
	CLRF       FARG_MAX7219_write_1_data2+0
	CALL       _MAX7219_write_1+0
;parcial_4.c,42 :: 		}
L_end_MAX7219_init_1:
	RETURN
; end of _MAX7219_init_1

_Max7219Print_1:

;parcial_4.c,45 :: 		void Max7219Print_1(unsigned long Number, unsigned short NumberOfDigits)
;parcial_4.c,48 :: 		for(i=1;Number>0||i-NumberOfDigits<=0;Number/=10,i++)
	MOVLW      1
	MOVWF      Max7219Print_1_i_L0+0
	CLRF       Max7219Print_1_i_L0+1
	CLRF       Max7219Print_1_i_L0+2
	CLRF       Max7219Print_1_i_L0+3
L_Max7219Print_10:
	MOVF       FARG_Max7219Print_1_Number+3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_132
	MOVF       FARG_Max7219Print_1_Number+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_132
	MOVF       FARG_Max7219Print_1_Number+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_132
	MOVF       FARG_Max7219Print_1_Number+0, 0
	SUBLW      0
L__Max7219Print_132:
	BTFSS      STATUS+0, 0
	GOTO       L__Max7219Print_126
	MOVF       Max7219Print_1_i_L0+0, 0
	MOVWF      R1
	MOVF       Max7219Print_1_i_L0+1, 0
	MOVWF      R2
	MOVF       Max7219Print_1_i_L0+2, 0
	MOVWF      R3
	MOVF       Max7219Print_1_i_L0+3, 0
	MOVWF      R4
	MOVF       FARG_Max7219Print_1_NumberOfDigits+0, 0
	SUBWF      R1, 1
	MOVLW      0
	SUBWFB     R2, 1
	SUBWFB     R3, 1
	SUBWFB     R4, 1
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R4, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_133
	MOVF       R3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_133
	MOVF       R2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_133
	MOVF       R1, 0
	SUBLW      0
L__Max7219Print_133:
	BTFSC      STATUS+0, 0
	GOTO       L__Max7219Print_126
	GOTO       L_Max7219Print_11
L__Max7219Print_126:
;parcial_4.c,50 :: 		MAX7219_CS_LOAD_1=0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,51 :: 		SPI1_write(i);
	MOVF       Max7219Print_1_i_L0+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,52 :: 		SPI1_write(Number%10);
	MOVLW      10
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	MOVF       FARG_Max7219Print_1_Number+0, 0
	MOVWF      R0
	MOVF       FARG_Max7219Print_1_Number+1, 0
	MOVWF      R1
	MOVF       FARG_Max7219Print_1_Number+2, 0
	MOVWF      R2
	MOVF       FARG_Max7219Print_1_Number+3, 0
	MOVWF      R3
	CALL       _Div_32x32_U+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R10, 0
	MOVWF      R2
	MOVF       R11, 0
	MOVWF      R3
	MOVF       R0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,53 :: 		MAX7219_CS_LOAD_1=1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,48 :: 		for(i=1;Number>0||i-NumberOfDigits<=0;Number/=10,i++)
	MOVLW      10
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	MOVF       FARG_Max7219Print_1_Number+0, 0
	MOVWF      R0
	MOVF       FARG_Max7219Print_1_Number+1, 0
	MOVWF      R1
	MOVF       FARG_Max7219Print_1_Number+2, 0
	MOVWF      R2
	MOVF       FARG_Max7219Print_1_Number+3, 0
	MOVWF      R3
	CALL       _Div_32x32_U+0
	MOVF       R0, 0
	MOVWF      FARG_Max7219Print_1_Number+0
	MOVF       R1, 0
	MOVWF      FARG_Max7219Print_1_Number+1
	MOVF       R2, 0
	MOVWF      FARG_Max7219Print_1_Number+2
	MOVF       R3, 0
	MOVWF      FARG_Max7219Print_1_Number+3
	MOVLW      1
	ADDWF      Max7219Print_1_i_L0+0, 1
	MOVLW      0
	ADDWFC     Max7219Print_1_i_L0+1, 1
	ADDWFC     Max7219Print_1_i_L0+2, 1
	ADDWFC     Max7219Print_1_i_L0+3, 1
;parcial_4.c,54 :: 		}
	GOTO       L_Max7219Print_10
L_Max7219Print_11:
;parcial_4.c,55 :: 		}
L_end_Max7219Print_1:
	RETURN
; end of _Max7219Print_1

_Max7219Print_2:

;parcial_4.c,57 :: 		void Max7219Print_2(unsigned long Number, unsigned short NumberOfDigits)
;parcial_4.c,60 :: 		for(i=1;Number>0||i-NumberOfDigits<=0;Number/=10,i++)
	MOVLW      1
	MOVWF      Max7219Print_2_i_L0+0
	CLRF       Max7219Print_2_i_L0+1
	CLRF       Max7219Print_2_i_L0+2
	CLRF       Max7219Print_2_i_L0+3
L_Max7219Print_25:
	MOVF       FARG_Max7219Print_2_Number+3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_235
	MOVF       FARG_Max7219Print_2_Number+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_235
	MOVF       FARG_Max7219Print_2_Number+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_235
	MOVF       FARG_Max7219Print_2_Number+0, 0
	SUBLW      0
L__Max7219Print_235:
	BTFSS      STATUS+0, 0
	GOTO       L__Max7219Print_227
	MOVF       Max7219Print_2_i_L0+0, 0
	MOVWF      R1
	MOVF       Max7219Print_2_i_L0+1, 0
	MOVWF      R2
	MOVF       Max7219Print_2_i_L0+2, 0
	MOVWF      R3
	MOVF       Max7219Print_2_i_L0+3, 0
	MOVWF      R4
	MOVF       FARG_Max7219Print_2_NumberOfDigits+0, 0
	SUBWF      R1, 1
	MOVLW      0
	SUBWFB     R2, 1
	SUBWFB     R3, 1
	SUBWFB     R4, 1
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R4, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_236
	MOVF       R3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_236
	MOVF       R2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Max7219Print_236
	MOVF       R1, 0
	SUBLW      0
L__Max7219Print_236:
	BTFSC      STATUS+0, 0
	GOTO       L__Max7219Print_227
	GOTO       L_Max7219Print_26
L__Max7219Print_227:
;parcial_4.c,62 :: 		MAX7219_CS_LOAD_1=0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,63 :: 		SPI1_write(i);
	MOVF       Max7219Print_2_i_L0+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,64 :: 		SPI1_write(Number%10);
	MOVLW      10
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	MOVF       FARG_Max7219Print_2_Number+0, 0
	MOVWF      R0
	MOVF       FARG_Max7219Print_2_Number+1, 0
	MOVWF      R1
	MOVF       FARG_Max7219Print_2_Number+2, 0
	MOVWF      R2
	MOVF       FARG_Max7219Print_2_Number+3, 0
	MOVWF      R3
	CALL       _Div_32x32_U+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R10, 0
	MOVWF      R2
	MOVF       R11, 0
	MOVWF      R3
	MOVF       R0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,65 :: 		MAX7219_CS_LOAD_1=1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,60 :: 		for(i=1;Number>0||i-NumberOfDigits<=0;Number/=10,i++)
	MOVLW      10
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	MOVF       FARG_Max7219Print_2_Number+0, 0
	MOVWF      R0
	MOVF       FARG_Max7219Print_2_Number+1, 0
	MOVWF      R1
	MOVF       FARG_Max7219Print_2_Number+2, 0
	MOVWF      R2
	MOVF       FARG_Max7219Print_2_Number+3, 0
	MOVWF      R3
	CALL       _Div_32x32_U+0
	MOVF       R0, 0
	MOVWF      FARG_Max7219Print_2_Number+0
	MOVF       R1, 0
	MOVWF      FARG_Max7219Print_2_Number+1
	MOVF       R2, 0
	MOVWF      FARG_Max7219Print_2_Number+2
	MOVF       R3, 0
	MOVWF      FARG_Max7219Print_2_Number+3
	MOVLW      1
	ADDWF      Max7219Print_2_i_L0+0, 1
	MOVLW      0
	ADDWFC     Max7219Print_2_i_L0+1, 1
	ADDWFC     Max7219Print_2_i_L0+2, 1
	ADDWFC     Max7219Print_2_i_L0+3, 1
;parcial_4.c,66 :: 		}
	GOTO       L_Max7219Print_25
L_Max7219Print_26:
;parcial_4.c,67 :: 		}
L_end_Max7219Print_2:
	RETURN
; end of _Max7219Print_2

_Max7219DisplayOff_1:

;parcial_4.c,70 :: 		void Max7219DisplayOff_1()
;parcial_4.c,72 :: 		MAX7219_CS_LOAD_1=0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,73 :: 		SPI1_write(SHUTDOWN_REG);
	MOVLW      12
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,74 :: 		SPI1_write(DISABLE_DECODE);
	CLRF       FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,75 :: 		MAX7219_CS_LOAD_1=1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,76 :: 		}
L_end_Max7219DisplayOff_1:
	RETURN
; end of _Max7219DisplayOff_1

_Max7219DisplayOn_1:

;parcial_4.c,78 :: 		void Max7219DisplayOn_1()
;parcial_4.c,80 :: 		MAX7219_CS_LOAD_1=0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,81 :: 		SPI1_write(SHUTDOWN_REG);
	MOVLW      12
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,82 :: 		SPI1_write(NORMAL_OPERATION);
	MOVLW      1
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,83 :: 		MAX7219_CS_LOAD_1=1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,84 :: 		}
L_end_Max7219DisplayOn_1:
	RETURN
; end of _Max7219DisplayOn_1

_Max7219UpdateIntensity_1:

;parcial_4.c,86 :: 		void Max7219UpdateIntensity_1(char OnValue)
;parcial_4.c,88 :: 		if(OnValue>=0&&OnValue<=15)
	MOVLW      0
	SUBWF      FARG_Max7219UpdateIntensity_1_OnValue+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Max7219UpdateIntensity_112
	MOVF       FARG_Max7219UpdateIntensity_1_OnValue+0, 0
	SUBLW      15
	BTFSS      STATUS+0, 0
	GOTO       L_Max7219UpdateIntensity_112
L__Max7219UpdateIntensity_128:
;parcial_4.c,90 :: 		MAX7219_CS_LOAD_1=0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,91 :: 		SPI1_write(0x0a);
	MOVLW      10
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,92 :: 		SPI1_write(OnValue);
	MOVF       FARG_Max7219UpdateIntensity_1_OnValue+0, 0
	MOVWF      FARG_SPI1_Write_data_+0
	CALL       _SPI1_Write+0
;parcial_4.c,93 :: 		MAX7219_CS_LOAD_1=1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,94 :: 		}
L_Max7219UpdateIntensity_112:
;parcial_4.c,95 :: 		}
L_end_Max7219UpdateIntensity_1:
	RETURN
; end of _Max7219UpdateIntensity_1

_main:

;parcial_4.c,99 :: 		void main()
;parcial_4.c,101 :: 		ANSELB=0;
	CLRF       ANSELB+0
;parcial_4.c,102 :: 		MAX7219_CS_LOAD_1 = 0;                // Deselect DAC
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;parcial_4.c,103 :: 		MAX7219_CS_LOAD_DIRECTION_1 = 0;          // Set CS# pin as Output
	BCF        TRISA1_bit+0, BitPos(TRISA1_bit+0)
;parcial_4.c,104 :: 		SPI1_Init();                           // Initialize SPI module
	CALL       _SPI1_Init+0
;parcial_4.c,105 :: 		MAX7219_init_1();
	CALL       _MAX7219_init_1+0
;parcial_4.c,106 :: 		Max7219DisplayOn_1();
	CALL       _Max7219DisplayOn_1+0
;parcial_4.c,108 :: 		Max7219Print_1(i,7);
	MOVF       _i+0, 0
	MOVWF      FARG_Max7219Print_1_Number+0
	MOVF       _i+1, 0
	MOVWF      FARG_Max7219Print_1_Number+1
	MOVF       _i+2, 0
	MOVWF      FARG_Max7219Print_1_Number+2
	MOVF       _i+3, 0
	MOVWF      FARG_Max7219Print_1_Number+3
	MOVLW      7
	MOVWF      FARG_Max7219Print_1_NumberOfDigits+0
	CALL       _Max7219Print_1+0
;parcial_4.c,109 :: 		Max7219Print_2(i,7);
	MOVF       _i+0, 0
	MOVWF      FARG_Max7219Print_2_Number+0
	MOVF       _i+1, 0
	MOVWF      FARG_Max7219Print_2_Number+1
	MOVF       _i+2, 0
	MOVWF      FARG_Max7219Print_2_Number+2
	MOVF       _i+3, 0
	MOVWF      FARG_Max7219Print_2_Number+3
	MOVLW      7
	MOVWF      FARG_Max7219Print_2_NumberOfDigits+0
	CALL       _Max7219Print_2+0
;parcial_4.c,111 :: 		while(1)// loop forever
L_main13:
;parcial_4.c,113 :: 		for(i=0;i<99999999;i++)//Count From 0 To 99999999 And Display on 8 Seven segemnts
	CLRF       _i+0
	CLRF       _i+1
	CLRF       _i+2
	CLRF       _i+3
L_main15:
	MOVLW      5
	SUBWF      _i+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      245
	SUBWF      _i+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      224
	SUBWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      255
	SUBWF      _i+0, 0
L__main41:
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;parcial_4.c,115 :: 		Max7219Print_1(i,7);
	MOVF       _i+0, 0
	MOVWF      FARG_Max7219Print_1_Number+0
	MOVF       _i+1, 0
	MOVWF      FARG_Max7219Print_1_Number+1
	MOVF       _i+2, 0
	MOVWF      FARG_Max7219Print_1_Number+2
	MOVF       _i+3, 0
	MOVWF      FARG_Max7219Print_1_Number+3
	MOVLW      7
	MOVWF      FARG_Max7219Print_1_NumberOfDigits+0
	CALL       _Max7219Print_1+0
;parcial_4.c,117 :: 		delay_ms(10);
	MOVLW      104
	MOVWF      R12
	MOVLW      228
	MOVWF      R13
L_main18:
	DECFSZ     R13, 1
	GOTO       L_main18
	DECFSZ     R12, 1
	GOTO       L_main18
	NOP
;parcial_4.c,113 :: 		for(i=0;i<99999999;i++)//Count From 0 To 99999999 And Display on 8 Seven segemnts
	MOVLW      1
	ADDWF      _i+0, 1
	MOVLW      0
	ADDWFC     _i+1, 1
	ADDWFC     _i+2, 1
	ADDWFC     _i+3, 1
;parcial_4.c,118 :: 		}
	GOTO       L_main15
L_main16:
;parcial_4.c,119 :: 		if (j<=10){
	MOVF       _j+3, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVF       _j+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVF       _j+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVF       _j+0, 0
	SUBLW      10
L__main42:
	BTFSS      STATUS+0, 0
	GOTO       L_main19
;parcial_4.c,120 :: 		while(1)// loop forever
L_main20:
;parcial_4.c,122 :: 		for(j=0;j<99999999;j++)//Count From 0 To 99999999 And Display on 8 Seven segemnts
	CLRF       _j+0
	CLRF       _j+1
	CLRF       _j+2
	CLRF       _j+3
L_main22:
	MOVLW      5
	SUBWF      _j+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      245
	SUBWF      _j+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      224
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      255
	SUBWF      _j+0, 0
L__main43:
	BTFSC      STATUS+0, 0
	GOTO       L_main23
;parcial_4.c,124 :: 		Max7219Print_2(j,7);
	MOVF       _j+0, 0
	MOVWF      FARG_Max7219Print_2_Number+0
	MOVF       _j+1, 0
	MOVWF      FARG_Max7219Print_2_Number+1
	MOVF       _j+2, 0
	MOVWF      FARG_Max7219Print_2_Number+2
	MOVF       _j+3, 0
	MOVWF      FARG_Max7219Print_2_Number+3
	MOVLW      7
	MOVWF      FARG_Max7219Print_2_NumberOfDigits+0
	CALL       _Max7219Print_2+0
;parcial_4.c,126 :: 		delay_ms(10);
	MOVLW      104
	MOVWF      R12
	MOVLW      228
	MOVWF      R13
L_main25:
	DECFSZ     R13, 1
	GOTO       L_main25
	DECFSZ     R12, 1
	GOTO       L_main25
	NOP
;parcial_4.c,122 :: 		for(j=0;j<99999999;j++)//Count From 0 To 99999999 And Display on 8 Seven segemnts
	MOVLW      1
	ADDWF      _j+0, 1
	MOVLW      0
	ADDWFC     _j+1, 1
	ADDWFC     _j+2, 1
	ADDWFC     _j+3, 1
;parcial_4.c,127 :: 		}
	GOTO       L_main22
L_main23:
;parcial_4.c,128 :: 		}
	GOTO       L_main20
;parcial_4.c,129 :: 		}
L_main19:
;parcial_4.c,130 :: 		}
	GOTO       L_main13
;parcial_4.c,132 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
