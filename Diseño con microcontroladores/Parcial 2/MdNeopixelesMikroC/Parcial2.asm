
_one:

;Parcial2.c,1 :: 		void one(){
;Parcial2.c,2 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,3 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,4 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,5 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,6 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,7 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,8 :: 		LATA.F5 = 0;
	BCF        LATA+0, 5
;Parcial2.c,9 :: 		}
L_end_one:
	RETURN
; end of _one

_zero:

;Parcial2.c,11 :: 		void zero(){
;Parcial2.c,12 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,13 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,14 :: 		LATA.F5 = 1;
	BSF        LATA+0, 5
;Parcial2.c,15 :: 		LATA.F5 = 0;
	BCF        LATA+0, 5
;Parcial2.c,16 :: 		LATA.F5 = 0;
	BCF        LATA+0, 5
;Parcial2.c,17 :: 		}
L_end_zero:
	RETURN
; end of _zero

_green:

;Parcial2.c,19 :: 		void green(){
;Parcial2.c,20 :: 		one();
	CALL       _one+0
;Parcial2.c,21 :: 		one();
	CALL       _one+0
;Parcial2.c,22 :: 		one();
	CALL       _one+0
;Parcial2.c,23 :: 		one();
	CALL       _one+0
;Parcial2.c,24 :: 		one();
	CALL       _one+0
;Parcial2.c,25 :: 		one();
	CALL       _one+0
;Parcial2.c,26 :: 		one();
	CALL       _one+0
;Parcial2.c,27 :: 		one();
	CALL       _one+0
;Parcial2.c,29 :: 		zero();
	CALL       _zero+0
;Parcial2.c,30 :: 		zero();
	CALL       _zero+0
;Parcial2.c,31 :: 		zero();
	CALL       _zero+0
;Parcial2.c,32 :: 		zero();
	CALL       _zero+0
;Parcial2.c,33 :: 		zero();
	CALL       _zero+0
;Parcial2.c,34 :: 		zero();
	CALL       _zero+0
;Parcial2.c,35 :: 		zero();
	CALL       _zero+0
;Parcial2.c,36 :: 		zero();
	CALL       _zero+0
;Parcial2.c,38 :: 		zero();
	CALL       _zero+0
;Parcial2.c,39 :: 		zero();
	CALL       _zero+0
;Parcial2.c,40 :: 		zero();
	CALL       _zero+0
;Parcial2.c,41 :: 		zero();
	CALL       _zero+0
;Parcial2.c,42 :: 		zero();
	CALL       _zero+0
;Parcial2.c,43 :: 		zero();
	CALL       _zero+0
;Parcial2.c,44 :: 		zero();
	CALL       _zero+0
;Parcial2.c,45 :: 		zero();
	CALL       _zero+0
;Parcial2.c,46 :: 		}
L_end_green:
	RETURN
; end of _green

_greend:

;Parcial2.c,47 :: 		void greend(){
;Parcial2.c,48 :: 		zero();
	CALL       _zero+0
;Parcial2.c,49 :: 		one();
	CALL       _one+0
;Parcial2.c,50 :: 		one();
	CALL       _one+0
;Parcial2.c,51 :: 		one();
	CALL       _one+0
;Parcial2.c,52 :: 		one();
	CALL       _one+0
;Parcial2.c,53 :: 		one();
	CALL       _one+0
;Parcial2.c,54 :: 		zero();
	CALL       _zero+0
;Parcial2.c,55 :: 		one();
	CALL       _one+0
;Parcial2.c,57 :: 		zero();
	CALL       _zero+0
;Parcial2.c,58 :: 		zero();
	CALL       _zero+0
;Parcial2.c,59 :: 		zero();
	CALL       _zero+0
;Parcial2.c,60 :: 		zero();
	CALL       _zero+0
;Parcial2.c,61 :: 		one();
	CALL       _one+0
;Parcial2.c,62 :: 		one();
	CALL       _one+0
;Parcial2.c,63 :: 		one();
	CALL       _one+0
;Parcial2.c,64 :: 		one();
	CALL       _one+0
;Parcial2.c,66 :: 		zero();
	CALL       _zero+0
;Parcial2.c,67 :: 		zero();
	CALL       _zero+0
;Parcial2.c,68 :: 		zero();
	CALL       _zero+0
;Parcial2.c,69 :: 		zero();
	CALL       _zero+0
;Parcial2.c,70 :: 		one();
	CALL       _one+0
;Parcial2.c,71 :: 		zero();
	CALL       _zero+0
;Parcial2.c,72 :: 		one();
	CALL       _one+0
;Parcial2.c,73 :: 		one();
	CALL       _one+0
;Parcial2.c,74 :: 		}
L_end_greend:
	RETURN
; end of _greend

_red:

;Parcial2.c,76 :: 		void red(){
;Parcial2.c,77 :: 		zero();
	CALL       _zero+0
;Parcial2.c,78 :: 		zero();
	CALL       _zero+0
;Parcial2.c,79 :: 		zero();
	CALL       _zero+0
;Parcial2.c,80 :: 		zero();
	CALL       _zero+0
;Parcial2.c,81 :: 		zero();
	CALL       _zero+0
;Parcial2.c,82 :: 		zero();
	CALL       _zero+0
;Parcial2.c,83 :: 		zero();
	CALL       _zero+0
;Parcial2.c,84 :: 		zero();
	CALL       _zero+0
;Parcial2.c,86 :: 		one();
	CALL       _one+0
;Parcial2.c,87 :: 		one();
	CALL       _one+0
;Parcial2.c,88 :: 		one();
	CALL       _one+0
;Parcial2.c,89 :: 		one();
	CALL       _one+0
;Parcial2.c,90 :: 		one();
	CALL       _one+0
;Parcial2.c,91 :: 		one();
	CALL       _one+0
;Parcial2.c,92 :: 		one();
	CALL       _one+0
;Parcial2.c,93 :: 		one();
	CALL       _one+0
;Parcial2.c,95 :: 		zero();
	CALL       _zero+0
;Parcial2.c,96 :: 		zero();
	CALL       _zero+0
;Parcial2.c,97 :: 		zero();
	CALL       _zero+0
;Parcial2.c,98 :: 		zero();
	CALL       _zero+0
;Parcial2.c,99 :: 		zero();
	CALL       _zero+0
;Parcial2.c,100 :: 		zero();
	CALL       _zero+0
;Parcial2.c,101 :: 		zero();
	CALL       _zero+0
;Parcial2.c,102 :: 		zero();
	CALL       _zero+0
;Parcial2.c,103 :: 		}
L_end_red:
	RETURN
; end of _red

_blue:

;Parcial2.c,107 :: 		void blue(){
;Parcial2.c,108 :: 		zero();
	CALL       _zero+0
;Parcial2.c,109 :: 		zero();
	CALL       _zero+0
;Parcial2.c,110 :: 		zero();
	CALL       _zero+0
;Parcial2.c,111 :: 		zero();
	CALL       _zero+0
;Parcial2.c,112 :: 		zero();
	CALL       _zero+0
;Parcial2.c,113 :: 		zero();
	CALL       _zero+0
;Parcial2.c,114 :: 		zero();
	CALL       _zero+0
;Parcial2.c,115 :: 		zero();
	CALL       _zero+0
;Parcial2.c,117 :: 		zero();
	CALL       _zero+0
;Parcial2.c,118 :: 		zero();
	CALL       _zero+0
;Parcial2.c,119 :: 		zero();
	CALL       _zero+0
;Parcial2.c,120 :: 		zero();
	CALL       _zero+0
;Parcial2.c,121 :: 		zero();
	CALL       _zero+0
;Parcial2.c,122 :: 		zero();
	CALL       _zero+0
;Parcial2.c,123 :: 		zero();
	CALL       _zero+0
;Parcial2.c,124 :: 		zero();
	CALL       _zero+0
;Parcial2.c,126 :: 		one();
	CALL       _one+0
;Parcial2.c,127 :: 		one();
	CALL       _one+0
;Parcial2.c,128 :: 		one();
	CALL       _one+0
;Parcial2.c,129 :: 		one();
	CALL       _one+0
;Parcial2.c,130 :: 		one();
	CALL       _one+0
;Parcial2.c,131 :: 		one();
	CALL       _one+0
;Parcial2.c,132 :: 		one();
	CALL       _one+0
;Parcial2.c,133 :: 		one();
	CALL       _one+0
;Parcial2.c,134 :: 		}
L_end_blue:
	RETURN
; end of _blue

_pink:

;Parcial2.c,138 :: 		void pink(){
;Parcial2.c,139 :: 		zero();
	CALL       _zero+0
;Parcial2.c,140 :: 		zero();
	CALL       _zero+0
;Parcial2.c,141 :: 		zero();
	CALL       _zero+0
;Parcial2.c,142 :: 		zero();
	CALL       _zero+0
;Parcial2.c,143 :: 		zero();
	CALL       _zero+0
;Parcial2.c,144 :: 		zero();
	CALL       _zero+0
;Parcial2.c,145 :: 		zero();
	CALL       _zero+0
;Parcial2.c,146 :: 		zero();
	CALL       _zero+0
;Parcial2.c,148 :: 		one();
	CALL       _one+0
;Parcial2.c,149 :: 		one();
	CALL       _one+0
;Parcial2.c,150 :: 		one();
	CALL       _one+0
;Parcial2.c,151 :: 		one();
	CALL       _one+0
;Parcial2.c,152 :: 		one();
	CALL       _one+0
;Parcial2.c,153 :: 		one();
	CALL       _one+0
;Parcial2.c,154 :: 		one();
	CALL       _one+0
;Parcial2.c,155 :: 		one();
	CALL       _one+0
;Parcial2.c,157 :: 		one();
	CALL       _one+0
;Parcial2.c,158 :: 		one();
	CALL       _one+0
;Parcial2.c,159 :: 		one();
	CALL       _one+0
;Parcial2.c,160 :: 		one();
	CALL       _one+0
;Parcial2.c,161 :: 		one();
	CALL       _one+0
;Parcial2.c,162 :: 		one();
	CALL       _one+0
;Parcial2.c,163 :: 		one();
	CALL       _one+0
;Parcial2.c,164 :: 		one();
	CALL       _one+0
;Parcial2.c,165 :: 		}
L_end_pink:
	RETURN
; end of _pink

_lightblue:

;Parcial2.c,168 :: 		void lightblue(){
;Parcial2.c,169 :: 		one();
	CALL       _one+0
;Parcial2.c,170 :: 		one();
	CALL       _one+0
;Parcial2.c,171 :: 		one();
	CALL       _one+0
;Parcial2.c,172 :: 		one();
	CALL       _one+0
;Parcial2.c,173 :: 		one();
	CALL       _one+0
;Parcial2.c,174 :: 		one();
	CALL       _one+0
;Parcial2.c,175 :: 		one();
	CALL       _one+0
;Parcial2.c,176 :: 		one();
	CALL       _one+0
;Parcial2.c,178 :: 		zero();
	CALL       _zero+0
;Parcial2.c,179 :: 		zero();
	CALL       _zero+0
;Parcial2.c,180 :: 		zero();
	CALL       _zero+0
;Parcial2.c,181 :: 		zero();
	CALL       _zero+0
;Parcial2.c,182 :: 		zero();
	CALL       _zero+0
;Parcial2.c,183 :: 		zero();
	CALL       _zero+0
;Parcial2.c,184 :: 		zero();
	CALL       _zero+0
;Parcial2.c,185 :: 		zero();
	CALL       _zero+0
;Parcial2.c,187 :: 		one();
	CALL       _one+0
;Parcial2.c,188 :: 		one();
	CALL       _one+0
;Parcial2.c,189 :: 		one();
	CALL       _one+0
;Parcial2.c,190 :: 		one();
	CALL       _one+0
;Parcial2.c,191 :: 		one();
	CALL       _one+0
;Parcial2.c,192 :: 		one();
	CALL       _one+0
;Parcial2.c,193 :: 		one();
	CALL       _one+0
;Parcial2.c,194 :: 		one();
	CALL       _one+0
;Parcial2.c,195 :: 		}
L_end_lightblue:
	RETURN
; end of _lightblue

_yellow:

;Parcial2.c,197 :: 		void yellow(){
;Parcial2.c,198 :: 		one();
	CALL       _one+0
;Parcial2.c,199 :: 		one();
	CALL       _one+0
;Parcial2.c,200 :: 		one();
	CALL       _one+0
;Parcial2.c,201 :: 		one();
	CALL       _one+0
;Parcial2.c,202 :: 		one();
	CALL       _one+0
;Parcial2.c,203 :: 		one();
	CALL       _one+0
;Parcial2.c,204 :: 		one();
	CALL       _one+0
;Parcial2.c,205 :: 		one();
	CALL       _one+0
;Parcial2.c,207 :: 		one();
	CALL       _one+0
;Parcial2.c,208 :: 		one();
	CALL       _one+0
;Parcial2.c,209 :: 		one();
	CALL       _one+0
;Parcial2.c,210 :: 		one();
	CALL       _one+0
;Parcial2.c,211 :: 		one();
	CALL       _one+0
;Parcial2.c,212 :: 		one();
	CALL       _one+0
;Parcial2.c,213 :: 		one();
	CALL       _one+0
;Parcial2.c,214 :: 		one();
	CALL       _one+0
;Parcial2.c,216 :: 		zero();
	CALL       _zero+0
;Parcial2.c,217 :: 		zero();
	CALL       _zero+0
;Parcial2.c,218 :: 		zero();
	CALL       _zero+0
;Parcial2.c,219 :: 		zero();
	CALL       _zero+0
;Parcial2.c,220 :: 		zero();
	CALL       _zero+0
;Parcial2.c,221 :: 		zero();
	CALL       _zero+0
;Parcial2.c,222 :: 		zero();
	CALL       _zero+0
;Parcial2.c,223 :: 		zero();
	CALL       _zero+0
;Parcial2.c,224 :: 		}
L_end_yellow:
	RETURN
; end of _yellow

_white:

;Parcial2.c,227 :: 		void white(){
;Parcial2.c,228 :: 		one();
	CALL       _one+0
;Parcial2.c,229 :: 		one();
	CALL       _one+0
;Parcial2.c,230 :: 		one();
	CALL       _one+0
;Parcial2.c,231 :: 		one();
	CALL       _one+0
;Parcial2.c,232 :: 		one();
	CALL       _one+0
;Parcial2.c,233 :: 		one();
	CALL       _one+0
;Parcial2.c,234 :: 		one();
	CALL       _one+0
;Parcial2.c,235 :: 		one();
	CALL       _one+0
;Parcial2.c,237 :: 		one();
	CALL       _one+0
;Parcial2.c,238 :: 		one();
	CALL       _one+0
;Parcial2.c,239 :: 		one();
	CALL       _one+0
;Parcial2.c,240 :: 		one();
	CALL       _one+0
;Parcial2.c,241 :: 		one();
	CALL       _one+0
;Parcial2.c,242 :: 		one();
	CALL       _one+0
;Parcial2.c,243 :: 		one();
	CALL       _one+0
;Parcial2.c,244 :: 		one();
	CALL       _one+0
;Parcial2.c,246 :: 		one();
	CALL       _one+0
;Parcial2.c,247 :: 		one();
	CALL       _one+0
;Parcial2.c,248 :: 		one();
	CALL       _one+0
;Parcial2.c,249 :: 		one();
	CALL       _one+0
;Parcial2.c,250 :: 		one();
	CALL       _one+0
;Parcial2.c,251 :: 		one();
	CALL       _one+0
;Parcial2.c,252 :: 		one();
	CALL       _one+0
;Parcial2.c,253 :: 		one();
	CALL       _one+0
;Parcial2.c,254 :: 		}
L_end_white:
	RETURN
; end of _white

_black:

;Parcial2.c,256 :: 		void black(){
;Parcial2.c,257 :: 		zero();
	CALL       _zero+0
;Parcial2.c,258 :: 		zero();
	CALL       _zero+0
;Parcial2.c,259 :: 		zero();
	CALL       _zero+0
;Parcial2.c,260 :: 		zero();
	CALL       _zero+0
;Parcial2.c,261 :: 		zero();
	CALL       _zero+0
;Parcial2.c,262 :: 		zero();
	CALL       _zero+0
;Parcial2.c,263 :: 		zero();
	CALL       _zero+0
;Parcial2.c,264 :: 		zero();
	CALL       _zero+0
;Parcial2.c,266 :: 		zero();
	CALL       _zero+0
;Parcial2.c,267 :: 		zero();
	CALL       _zero+0
;Parcial2.c,268 :: 		zero();
	CALL       _zero+0
;Parcial2.c,269 :: 		zero();
	CALL       _zero+0
;Parcial2.c,270 :: 		zero();
	CALL       _zero+0
;Parcial2.c,271 :: 		zero();
	CALL       _zero+0
;Parcial2.c,272 :: 		zero();
	CALL       _zero+0
;Parcial2.c,273 :: 		zero();
	CALL       _zero+0
;Parcial2.c,275 :: 		zero();
	CALL       _zero+0
;Parcial2.c,276 :: 		zero();
	CALL       _zero+0
;Parcial2.c,277 :: 		zero();
	CALL       _zero+0
;Parcial2.c,278 :: 		zero();
	CALL       _zero+0
;Parcial2.c,279 :: 		zero();
	CALL       _zero+0
;Parcial2.c,280 :: 		zero();
	CALL       _zero+0
;Parcial2.c,281 :: 		zero();
	CALL       _zero+0
;Parcial2.c,282 :: 		zero();
	CALL       _zero+0
;Parcial2.c,283 :: 		}
L_end_black:
	RETURN
; end of _black

_paleta:

;Parcial2.c,285 :: 		void paleta(){
;Parcial2.c,286 :: 		white();
	CALL       _white+0
;Parcial2.c,287 :: 		black();
	CALL       _black+0
;Parcial2.c,288 :: 		red();
	CALL       _red+0
;Parcial2.c,289 :: 		blue();
	CALL       _blue+0
;Parcial2.c,290 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,291 :: 		green();
	CALL       _green+0
;Parcial2.c,292 :: 		pink();
	CALL       _pink+0
;Parcial2.c,293 :: 		lightblue();
	CALL       _lightblue+0
;Parcial2.c,294 :: 		}
L_end_paleta:
	RETURN
; end of _paleta

_Colombia:

;Parcial2.c,296 :: 		void Colombia(){
;Parcial2.c,297 :: 		short m = 0;
	CLRF       Colombia_m_L0+0
;Parcial2.c,298 :: 		m=0;
	CLRF       Colombia_m_L0+0
;Parcial2.c,299 :: 		while(m < 32){
L_Colombia0:
	MOVLW      128
	XORWF      Colombia_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      32
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Colombia1
;Parcial2.c,300 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,301 :: 		m++;
	INCF       Colombia_m_L0+0, 1
;Parcial2.c,302 :: 		}
	GOTO       L_Colombia0
L_Colombia1:
;Parcial2.c,303 :: 		m=0;
	CLRF       Colombia_m_L0+0
;Parcial2.c,304 :: 		while(m < 16){
L_Colombia2:
	MOVLW      128
	XORWF      Colombia_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      16
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Colombia3
;Parcial2.c,305 :: 		blue();
	CALL       _blue+0
;Parcial2.c,306 :: 		m++;
	INCF       Colombia_m_L0+0, 1
;Parcial2.c,307 :: 		}
	GOTO       L_Colombia2
L_Colombia3:
;Parcial2.c,308 :: 		m=0;
	CLRF       Colombia_m_L0+0
;Parcial2.c,309 :: 		while(m < 16){
L_Colombia4:
	MOVLW      128
	XORWF      Colombia_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      16
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Colombia5
;Parcial2.c,310 :: 		red();
	CALL       _red+0
;Parcial2.c,311 :: 		m++;
	INCF       Colombia_m_L0+0, 1
;Parcial2.c,312 :: 		}
	GOTO       L_Colombia4
L_Colombia5:
;Parcial2.c,313 :: 		m=0;
	CLRF       Colombia_m_L0+0
;Parcial2.c,314 :: 		}
L_end_Colombia:
	RETURN
; end of _Colombia

_flecha:

;Parcial2.c,316 :: 		void flecha(){
;Parcial2.c,317 :: 		short m = 0;
	CLRF       flecha_m_L0+0
;Parcial2.c,318 :: 		while(m < 12){
L_flecha6:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      12
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha7
;Parcial2.c,319 :: 		white();
	CALL       _white+0
;Parcial2.c,320 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,321 :: 		}
	GOTO       L_flecha6
L_flecha7:
;Parcial2.c,322 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,323 :: 		black();
	CALL       _black+0
;Parcial2.c,324 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,325 :: 		while(m < 7){
L_flecha8:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      7
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha9
;Parcial2.c,326 :: 		white();
	CALL       _white+0
;Parcial2.c,327 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,328 :: 		}
	GOTO       L_flecha8
L_flecha9:
;Parcial2.c,329 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,330 :: 		while(m < 2){
L_flecha10:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha11
;Parcial2.c,331 :: 		black();
	CALL       _black+0
;Parcial2.c,332 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,333 :: 		}
	GOTO       L_flecha10
L_flecha11:
;Parcial2.c,334 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,335 :: 		while(m < 3){
L_flecha12:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha13
;Parcial2.c,336 :: 		white();
	CALL       _white+0
;Parcial2.c,337 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,338 :: 		}
	GOTO       L_flecha12
L_flecha13:
;Parcial2.c,339 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,340 :: 		while(m < 6){
L_flecha14:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha15
;Parcial2.c,341 :: 		black();
	CALL       _black+0
;Parcial2.c,342 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,343 :: 		}
	GOTO       L_flecha14
L_flecha15:
;Parcial2.c,344 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,345 :: 		while(m < 2){
L_flecha16:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha17
;Parcial2.c,346 :: 		white();
	CALL       _white+0
;Parcial2.c,347 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,348 :: 		}
	GOTO       L_flecha16
L_flecha17:
;Parcial2.c,349 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,350 :: 		while(m < 6){
L_flecha18:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha19
;Parcial2.c,351 :: 		black();
	CALL       _black+0
;Parcial2.c,352 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,353 :: 		}
	GOTO       L_flecha18
L_flecha19:
;Parcial2.c,354 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,355 :: 		while(m < 5){
L_flecha20:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha21
;Parcial2.c,356 :: 		white();
	CALL       _white+0
;Parcial2.c,357 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,358 :: 		}
	GOTO       L_flecha20
L_flecha21:
;Parcial2.c,359 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,360 :: 		while(m < 2){
L_flecha22:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha23
;Parcial2.c,361 :: 		black();
	CALL       _black+0
;Parcial2.c,362 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,363 :: 		}
	GOTO       L_flecha22
L_flecha23:
;Parcial2.c,364 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,365 :: 		while(m < 6){
L_flecha24:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha25
;Parcial2.c,366 :: 		white();
	CALL       _white+0
;Parcial2.c,367 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,368 :: 		}
	GOTO       L_flecha24
L_flecha25:
;Parcial2.c,369 :: 		m=0;
	CLRF       flecha_m_L0+0
;Parcial2.c,370 :: 		red();//black();
	CALL       _red+0
;Parcial2.c,371 :: 		while(m < 11){
L_flecha26:
	MOVLW      128
	XORWF      flecha_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      11
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_flecha27
;Parcial2.c,372 :: 		white();
	CALL       _white+0
;Parcial2.c,373 :: 		m++;
	INCF       flecha_m_L0+0, 1
;Parcial2.c,374 :: 		}
	GOTO       L_flecha26
L_flecha27:
;Parcial2.c,375 :: 		}
L_end_flecha:
	RETURN
; end of _flecha

_E3Tlogo:

;Parcial2.c,377 :: 		void E3Tlogo(){
;Parcial2.c,378 :: 		short m = 0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,379 :: 		while(m<8){
L_E3Tlogo28:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo29
;Parcial2.c,380 :: 		white();
	CALL       _white+0
;Parcial2.c,381 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,383 :: 		}
	GOTO       L_E3Tlogo28
L_E3Tlogo29:
;Parcial2.c,384 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,385 :: 		while(m<3){
L_E3Tlogo30:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo31
;Parcial2.c,386 :: 		white();
	CALL       _white+0
;Parcial2.c,387 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,388 :: 		}
	GOTO       L_E3Tlogo30
L_E3Tlogo31:
;Parcial2.c,389 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,390 :: 		while(m<5){
L_E3Tlogo32:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo33
;Parcial2.c,391 :: 		black();
	CALL       _black+0
;Parcial2.c,392 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,393 :: 		}
	GOTO       L_E3Tlogo32
L_E3Tlogo33:
;Parcial2.c,394 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,395 :: 		white();
	CALL       _white+0
;Parcial2.c,396 :: 		while(m<4){
L_E3Tlogo34:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo35
;Parcial2.c,397 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,398 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,399 :: 		}
	GOTO       L_E3Tlogo34
L_E3Tlogo35:
;Parcial2.c,400 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,401 :: 		black();
	CALL       _black+0
;Parcial2.c,402 :: 		white();
	CALL       _white+0
;Parcial2.c,403 :: 		white();
	CALL       _white+0
;Parcial2.c,404 :: 		while(m<4){
L_E3Tlogo36:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo37
;Parcial2.c,405 :: 		black();
	CALL       _black+0
;Parcial2.c,406 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,407 :: 		}
	GOTO       L_E3Tlogo36
L_E3Tlogo37:
;Parcial2.c,408 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,409 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,410 :: 		black();
	CALL       _black+0
;Parcial2.c,411 :: 		white();
	CALL       _white+0
;Parcial2.c,412 :: 		white();
	CALL       _white+0
;Parcial2.c,413 :: 		black();
	CALL       _black+0
;Parcial2.c,414 :: 		while(m<4){
L_E3Tlogo38:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo39
;Parcial2.c,415 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,416 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,417 :: 		}
	GOTO       L_E3Tlogo38
L_E3Tlogo39:
;Parcial2.c,418 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,419 :: 		black();
	CALL       _black+0
;Parcial2.c,420 :: 		white();
	CALL       _white+0
;Parcial2.c,421 :: 		white();
	CALL       _white+0
;Parcial2.c,422 :: 		while(m<4){
L_E3Tlogo40:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo41
;Parcial2.c,423 :: 		black();
	CALL       _black+0
;Parcial2.c,424 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,425 :: 		}
	GOTO       L_E3Tlogo40
L_E3Tlogo41:
;Parcial2.c,426 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,427 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,428 :: 		black();
	CALL       _black+0
;Parcial2.c,429 :: 		white();
	CALL       _white+0
;Parcial2.c,430 :: 		white();
	CALL       _white+0
;Parcial2.c,431 :: 		black();
	CALL       _black+0
;Parcial2.c,432 :: 		while(m<4){
L_E3Tlogo42:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo43
;Parcial2.c,433 :: 		yellow();
	CALL       _yellow+0
;Parcial2.c,434 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,435 :: 		}
	GOTO       L_E3Tlogo42
L_E3Tlogo43:
;Parcial2.c,436 :: 		white();
	CALL       _white+0
;Parcial2.c,437 :: 		white();
	CALL       _white+0
;Parcial2.c,438 :: 		white();
	CALL       _white+0
;Parcial2.c,439 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,440 :: 		while(m<4){
L_E3Tlogo44:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo45
;Parcial2.c,441 :: 		black();
	CALL       _black+0
;Parcial2.c,442 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,443 :: 		}
	GOTO       L_E3Tlogo44
L_E3Tlogo45:
;Parcial2.c,444 :: 		m=0;
	CLRF       E3Tlogo_m_L0+0
;Parcial2.c,445 :: 		while(m<4){
L_E3Tlogo46:
	MOVLW      128
	XORWF      E3Tlogo_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_E3Tlogo47
;Parcial2.c,446 :: 		white();
	CALL       _white+0
;Parcial2.c,447 :: 		m++;
	INCF       E3Tlogo_m_L0+0, 1
;Parcial2.c,448 :: 		}
	GOTO       L_E3Tlogo46
L_E3Tlogo47:
;Parcial2.c,449 :: 		}
L_end_E3Tlogo:
	RETURN
; end of _E3Tlogo

_U:

;Parcial2.c,451 :: 		void U(){
;Parcial2.c,452 :: 		short n=0;
	CLRF       U_n_L0+0
	CLRF       U_m_L0+0
;Parcial2.c,454 :: 		while(n<6){
L_U48:
	MOVLW      128
	XORWF      U_n_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_U49
;Parcial2.c,455 :: 		m=0;
	CLRF       U_m_L0+0
;Parcial2.c,456 :: 		green();
	CALL       _green+0
;Parcial2.c,457 :: 		green();
	CALL       _green+0
;Parcial2.c,458 :: 		while(m<4){
L_U50:
	MOVLW      128
	XORWF      U_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_U51
;Parcial2.c,459 :: 		white();
	CALL       _white+0
;Parcial2.c,460 :: 		m++;
	INCF       U_m_L0+0, 1
;Parcial2.c,461 :: 		}
	GOTO       L_U50
L_U51:
;Parcial2.c,462 :: 		green();
	CALL       _green+0
;Parcial2.c,463 :: 		green();
	CALL       _green+0
;Parcial2.c,464 :: 		n++;
	INCF       U_n_L0+0, 1
;Parcial2.c,465 :: 		}
	GOTO       L_U48
L_U49:
;Parcial2.c,466 :: 		m=0;
	CLRF       U_m_L0+0
;Parcial2.c,467 :: 		while(m<8){
L_U52:
	MOVLW      128
	XORWF      U_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_U53
;Parcial2.c,468 :: 		green();
	CALL       _green+0
;Parcial2.c,469 :: 		m++;
	INCF       U_m_L0+0, 1
;Parcial2.c,471 :: 		}
	GOTO       L_U52
L_U53:
;Parcial2.c,472 :: 		m=0;
	CLRF       U_m_L0+0
;Parcial2.c,473 :: 		white();
	CALL       _white+0
;Parcial2.c,474 :: 		while(m<6){
L_U54:
	MOVLW      128
	XORWF      U_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_U55
;Parcial2.c,475 :: 		green();
	CALL       _green+0
;Parcial2.c,476 :: 		m++;
	INCF       U_m_L0+0, 1
;Parcial2.c,477 :: 		}
	GOTO       L_U54
L_U55:
;Parcial2.c,478 :: 		m=0;
	CLRF       U_m_L0+0
;Parcial2.c,479 :: 		white();
	CALL       _white+0
;Parcial2.c,481 :: 		}
L_end_U:
	RETURN
; end of _U

_I:

;Parcial2.c,483 :: 		void I(){
;Parcial2.c,484 :: 		short n=0;
	CLRF       I_n_L0+0
	CLRF       I_m_L0+0
;Parcial2.c,486 :: 		while(n<8){
L_I56:
	MOVLW      128
	XORWF      I_n_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_I57
;Parcial2.c,487 :: 		m=0;
	CLRF       I_m_L0+0
;Parcial2.c,488 :: 		while(m<3){
L_I58:
	MOVLW      128
	XORWF      I_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_I59
;Parcial2.c,489 :: 		white();
	CALL       _white+0
;Parcial2.c,490 :: 		m++;
	INCF       I_m_L0+0, 1
;Parcial2.c,491 :: 		}
	GOTO       L_I58
L_I59:
;Parcial2.c,492 :: 		green();
	CALL       _green+0
;Parcial2.c,493 :: 		green();
	CALL       _green+0
;Parcial2.c,494 :: 		m=0;
	CLRF       I_m_L0+0
;Parcial2.c,495 :: 		while(m<3){
L_I60:
	MOVLW      128
	XORWF      I_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_I61
;Parcial2.c,496 :: 		white();
	CALL       _white+0
;Parcial2.c,497 :: 		m++;
	INCF       I_m_L0+0, 1
;Parcial2.c,498 :: 		}
	GOTO       L_I60
L_I61:
;Parcial2.c,499 :: 		n++;
	INCF       I_n_L0+0, 1
;Parcial2.c,501 :: 		}
	GOTO       L_I56
L_I57:
;Parcial2.c,502 :: 		m=0;
	CLRF       I_m_L0+0
;Parcial2.c,503 :: 		n=0;
	CLRF       I_n_L0+0
;Parcial2.c,506 :: 		}
L_end_I:
	RETURN
; end of _I

_Sletra:

;Parcial2.c,508 :: 		void Sletra(){
;Parcial2.c,509 :: 		short m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,510 :: 		white();
	CALL       _white+0
;Parcial2.c,511 :: 		while(m<6){
L_Sletra62:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra63
;Parcial2.c,512 :: 		green();
	CALL       _green+0
;Parcial2.c,513 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,514 :: 		}
	GOTO       L_Sletra62
L_Sletra63:
;Parcial2.c,515 :: 		white();
	CALL       _white+0
;Parcial2.c,516 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,517 :: 		while(m<8){
L_Sletra64:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra65
;Parcial2.c,518 :: 		green();
	CALL       _green+0
;Parcial2.c,519 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,520 :: 		}
	GOTO       L_Sletra64
L_Sletra65:
;Parcial2.c,521 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,522 :: 		green();
	CALL       _green+0
;Parcial2.c,523 :: 		green();
	CALL       _green+0
;Parcial2.c,524 :: 		while(m<6){
L_Sletra66:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra67
;Parcial2.c,525 :: 		white();
	CALL       _white+0
;Parcial2.c,526 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,527 :: 		}
	GOTO       L_Sletra66
L_Sletra67:
;Parcial2.c,528 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,529 :: 		while(m<7){
L_Sletra68:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      7
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra69
;Parcial2.c,530 :: 		green();
	CALL       _green+0
;Parcial2.c,531 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,532 :: 		}
	GOTO       L_Sletra68
L_Sletra69:
;Parcial2.c,533 :: 		white();
	CALL       _white+0
;Parcial2.c,534 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,535 :: 		white();
	CALL       _white+0
;Parcial2.c,536 :: 		white();
	CALL       _white+0
;Parcial2.c,537 :: 		while(m<6){
L_Sletra70:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra71
;Parcial2.c,538 :: 		green();
	CALL       _green+0
;Parcial2.c,539 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,540 :: 		}
	GOTO       L_Sletra70
L_Sletra71:
;Parcial2.c,541 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,542 :: 		green();
	CALL       _green+0
;Parcial2.c,543 :: 		while(m<5){
L_Sletra72:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra73
;Parcial2.c,544 :: 		white();
	CALL       _white+0
;Parcial2.c,545 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,546 :: 		}
	GOTO       L_Sletra72
L_Sletra73:
;Parcial2.c,547 :: 		green();
	CALL       _green+0
;Parcial2.c,548 :: 		green();
	CALL       _green+0
;Parcial2.c,549 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,550 :: 		while(m<8){
L_Sletra74:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra75
;Parcial2.c,551 :: 		green();
	CALL       _green+0
;Parcial2.c,552 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,553 :: 		}
	GOTO       L_Sletra74
L_Sletra75:
;Parcial2.c,554 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,555 :: 		white();
	CALL       _white+0
;Parcial2.c,556 :: 		while(m<6){
L_Sletra76:
	MOVLW      128
	XORWF      Sletra_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Sletra77
;Parcial2.c,557 :: 		green();
	CALL       _green+0
;Parcial2.c,558 :: 		m++;
	INCF       Sletra_m_L0+0, 1
;Parcial2.c,559 :: 		}
	GOTO       L_Sletra76
L_Sletra77:
;Parcial2.c,560 :: 		white();
	CALL       _white+0
;Parcial2.c,561 :: 		m=0;
	CLRF       Sletra_m_L0+0
;Parcial2.c,564 :: 		}
L_end_Sletra:
	RETURN
; end of _Sletra

_minecraft:

;Parcial2.c,566 :: 		void minecraft(){
;Parcial2.c,567 :: 		short n = 0;
	CLRF       minecraft_n_L0+0
	CLRF       minecraft_m_L0+0
;Parcial2.c,569 :: 		while(m<17){
L_minecraft78:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      17
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft79
;Parcial2.c,570 :: 		black();
	CALL       _black+0
;Parcial2.c,571 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,572 :: 		}
	GOTO       L_minecraft78
L_minecraft79:
;Parcial2.c,573 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,574 :: 		while(n<2){
L_minecraft80:
	MOVLW      128
	XORWF      minecraft_n_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft81
;Parcial2.c,575 :: 		green();
	CALL       _green+0
;Parcial2.c,576 :: 		black();
	CALL       _black+0
;Parcial2.c,577 :: 		green();
	CALL       _green+0
;Parcial2.c,578 :: 		while(m<2){
L_minecraft82:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft83
;Parcial2.c,579 :: 		black();
	CALL       _black+0
;Parcial2.c,580 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,581 :: 		}
	GOTO       L_minecraft82
L_minecraft83:
;Parcial2.c,582 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,583 :: 		n++;
	INCF       minecraft_n_L0+0, 1
;Parcial2.c,584 :: 		}
	GOTO       L_minecraft80
L_minecraft81:
;Parcial2.c,585 :: 		n = 0;
	CLRF       minecraft_n_L0+0
;Parcial2.c,586 :: 		while(m<2){
L_minecraft84:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft85
;Parcial2.c,587 :: 		green();
	CALL       _green+0
;Parcial2.c,588 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,589 :: 		}
	GOTO       L_minecraft84
L_minecraft85:
;Parcial2.c,590 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,591 :: 		while(m<2){
L_minecraft86:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft87
;Parcial2.c,592 :: 		black();
	CALL       _black+0
;Parcial2.c,593 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,594 :: 		}
	GOTO       L_minecraft86
L_minecraft87:
;Parcial2.c,595 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,596 :: 		while(m<2){
L_minecraft88:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft89
;Parcial2.c,597 :: 		green();
	CALL       _green+0
;Parcial2.c,598 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,599 :: 		}
	GOTO       L_minecraft88
L_minecraft89:
;Parcial2.c,600 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,601 :: 		while(n<2){
L_minecraft90:
	MOVLW      128
	XORWF      minecraft_n_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft91
;Parcial2.c,602 :: 		white();
	CALL       _white+0
;Parcial2.c,603 :: 		while(m<4){
L_minecraft92:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft93
;Parcial2.c,604 :: 		green();
	CALL       _green+0
;Parcial2.c,605 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,606 :: 		}
	GOTO       L_minecraft92
L_minecraft93:
;Parcial2.c,607 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,608 :: 		n++;
	INCF       minecraft_n_L0+0, 1
;Parcial2.c,609 :: 		}
	GOTO       L_minecraft90
L_minecraft91:
;Parcial2.c,610 :: 		n = 0;
	CLRF       minecraft_n_L0+0
;Parcial2.c,611 :: 		while(m<2){
L_minecraft94:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft95
;Parcial2.c,612 :: 		white();
	CALL       _white+0
;Parcial2.c,613 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,614 :: 		}
	GOTO       L_minecraft94
L_minecraft95:
;Parcial2.c,615 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,616 :: 		while(m<6){
L_minecraft96:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft97
;Parcial2.c,617 :: 		green();
	CALL       _green+0
;Parcial2.c,618 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,619 :: 		}
	GOTO       L_minecraft96
L_minecraft97:
;Parcial2.c,620 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,621 :: 		while(m<2){
L_minecraft98:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft99
;Parcial2.c,622 :: 		black();
	CALL       _black+0
;Parcial2.c,623 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,624 :: 		}
	GOTO       L_minecraft98
L_minecraft99:
;Parcial2.c,625 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,626 :: 		while(m<11){
L_minecraft100:
	MOVLW      128
	XORWF      minecraft_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      11
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_minecraft101
;Parcial2.c,627 :: 		green();
	CALL       _green+0
;Parcial2.c,628 :: 		m++;
	INCF       minecraft_m_L0+0, 1
;Parcial2.c,629 :: 		}
	GOTO       L_minecraft100
L_minecraft101:
;Parcial2.c,630 :: 		m = 0;
	CLRF       minecraft_m_L0+0
;Parcial2.c,631 :: 		}
L_end_minecraft:
	RETURN
; end of _minecraft

_corazon:

;Parcial2.c,633 :: 		void corazon(){
;Parcial2.c,634 :: 		short m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,635 :: 		while(m<9){
L_corazon102:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      9
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon103
;Parcial2.c,636 :: 		black();
	CALL       _black+0
;Parcial2.c,637 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,638 :: 		}
	GOTO       L_corazon102
L_corazon103:
;Parcial2.c,639 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,640 :: 		while(m<2){
L_corazon104:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon105
;Parcial2.c,641 :: 		red();
	CALL       _red+0
;Parcial2.c,642 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,643 :: 		}
	GOTO       L_corazon104
L_corazon105:
;Parcial2.c,644 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,645 :: 		while(m<2){
L_corazon106:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon107
;Parcial2.c,646 :: 		black();
	CALL       _black+0
;Parcial2.c,647 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,648 :: 		}
	GOTO       L_corazon106
L_corazon107:
;Parcial2.c,649 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,650 :: 		while(m<2){
L_corazon108:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon109
;Parcial2.c,651 :: 		red();
	CALL       _red+0
;Parcial2.c,652 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,653 :: 		}
	GOTO       L_corazon108
L_corazon109:
;Parcial2.c,654 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,655 :: 		black();
	CALL       _black+0
;Parcial2.c,656 :: 		while(m<24){
L_corazon110:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      24
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon111
;Parcial2.c,657 :: 		red();
	CALL       _red+0
;Parcial2.c,658 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,659 :: 		}
	GOTO       L_corazon110
L_corazon111:
;Parcial2.c,660 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,661 :: 		black();
	CALL       _black+0
;Parcial2.c,662 :: 		while(m<6){
L_corazon112:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon113
;Parcial2.c,663 :: 		red();
	CALL       _red+0
;Parcial2.c,664 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,665 :: 		}
	GOTO       L_corazon112
L_corazon113:
;Parcial2.c,666 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,667 :: 		while(m<3){
L_corazon114:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon115
;Parcial2.c,668 :: 		black();
	CALL       _black+0
;Parcial2.c,669 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,670 :: 		}
	GOTO       L_corazon114
L_corazon115:
;Parcial2.c,671 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,672 :: 		while(m<4){
L_corazon116:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon117
;Parcial2.c,673 :: 		red();
	CALL       _red+0
;Parcial2.c,674 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,675 :: 		}
	GOTO       L_corazon116
L_corazon117:
;Parcial2.c,676 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,677 :: 		while(m<5){
L_corazon118:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon119
;Parcial2.c,678 :: 		black();
	CALL       _black+0
;Parcial2.c,679 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,680 :: 		}
	GOTO       L_corazon118
L_corazon119:
;Parcial2.c,681 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,682 :: 		while(m<2){
L_corazon120:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      2
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon121
;Parcial2.c,683 :: 		red();
	CALL       _red+0
;Parcial2.c,684 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,685 :: 		}
	GOTO       L_corazon120
L_corazon121:
;Parcial2.c,686 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,687 :: 		while(m<3){
L_corazon122:
	MOVLW      128
	XORWF      corazon_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_corazon123
;Parcial2.c,688 :: 		black();
	CALL       _black+0
;Parcial2.c,689 :: 		m++;
	INCF       corazon_m_L0+0, 1
;Parcial2.c,690 :: 		}
	GOTO       L_corazon122
L_corazon123:
;Parcial2.c,691 :: 		m = 0;
	CLRF       corazon_m_L0+0
;Parcial2.c,692 :: 		}
L_end_corazon:
	RETURN
; end of _corazon

_yoshi:

;Parcial2.c,694 :: 		void yoshi(){
;Parcial2.c,695 :: 		short m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,696 :: 		while(m<5){
L_yoshi124:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi125
;Parcial2.c,697 :: 		white();
	CALL       _white+0
;Parcial2.c,698 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,699 :: 		}
	GOTO       L_yoshi124
L_yoshi125:
;Parcial2.c,700 :: 		black();
	CALL       _black+0
;Parcial2.c,701 :: 		black();
	CALL       _black+0
;Parcial2.c,702 :: 		white();
	CALL       _white+0
;Parcial2.c,703 :: 		white();
	CALL       _white+0
;Parcial2.c,704 :: 		black();
	CALL       _black+0
;Parcial2.c,705 :: 		black();
	CALL       _black+0
;Parcial2.c,706 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,707 :: 		while(m<9){
L_yoshi126:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      9
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi127
;Parcial2.c,708 :: 		white();
	CALL       _white+0
;Parcial2.c,709 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,710 :: 		}     //linea 1
	GOTO       L_yoshi126
L_yoshi127:
;Parcial2.c,711 :: 		black();
	CALL       _black+0
;Parcial2.c,712 :: 		green();
	CALL       _green+0
;Parcial2.c,713 :: 		green();
	CALL       _green+0
;Parcial2.c,714 :: 		black();
	CALL       _black+0
;Parcial2.c,715 :: 		black();
	CALL       _black+0
;Parcial2.c,716 :: 		green();
	CALL       _green+0
;Parcial2.c,717 :: 		green();
	CALL       _green+0
;Parcial2.c,718 :: 		black();
	CALL       _black+0
;Parcial2.c,719 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,720 :: 		while(m<7){
L_yoshi128:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      7
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi129
;Parcial2.c,721 :: 		white();
	CALL       _white+0
;Parcial2.c,722 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,723 :: 		}                   //linea 2
	GOTO       L_yoshi128
L_yoshi129:
;Parcial2.c,724 :: 		black();
	CALL       _black+0
;Parcial2.c,725 :: 		green();
	CALL       _green+0
;Parcial2.c,726 :: 		white();
	CALL       _white+0
;Parcial2.c,727 :: 		white();
	CALL       _white+0
;Parcial2.c,728 :: 		green();
	CALL       _green+0
;Parcial2.c,729 :: 		green();
	CALL       _green+0
;Parcial2.c,730 :: 		white();
	CALL       _white+0
;Parcial2.c,731 :: 		white();
	CALL       _white+0
;Parcial2.c,732 :: 		green();
	CALL       _green+0
;Parcial2.c,733 :: 		black();
	CALL       _black+0
;Parcial2.c,734 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,735 :: 		while(m<3){
L_yoshi130:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi131
;Parcial2.c,736 :: 		white();
	CALL       _white+0
;Parcial2.c,737 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,738 :: 		}               //linea 3
	GOTO       L_yoshi130
L_yoshi131:
;Parcial2.c,739 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,740 :: 		while(m<3){
L_yoshi132:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi133
;Parcial2.c,741 :: 		white();
	CALL       _white+0
;Parcial2.c,742 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,743 :: 		}
	GOTO       L_yoshi132
L_yoshi133:
;Parcial2.c,744 :: 		black();
	CALL       _black+0
;Parcial2.c,745 :: 		white();
	CALL       _white+0
;Parcial2.c,746 :: 		white();
	CALL       _white+0
;Parcial2.c,747 :: 		black();
	CALL       _black+0
;Parcial2.c,748 :: 		white();
	CALL       _white+0
;Parcial2.c,749 :: 		white();
	CALL       _white+0
;Parcial2.c,750 :: 		black();
	CALL       _black+0
;Parcial2.c,751 :: 		white();
	CALL       _white+0
;Parcial2.c,752 :: 		white();
	CALL       _white+0
;Parcial2.c,753 :: 		black();
	CALL       _black+0
;Parcial2.c,754 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,755 :: 		while(m<3){
L_yoshi134:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi135
;Parcial2.c,756 :: 		white();
	CALL       _white+0
;Parcial2.c,757 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,758 :: 		}              //linea 4
	GOTO       L_yoshi134
L_yoshi135:
;Parcial2.c,759 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,760 :: 		while(m<3){
L_yoshi136:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi137
;Parcial2.c,761 :: 		white();
	CALL       _white+0
;Parcial2.c,762 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,763 :: 		}
	GOTO       L_yoshi136
L_yoshi137:
;Parcial2.c,764 :: 		black();
	CALL       _black+0
;Parcial2.c,765 :: 		white();
	CALL       _white+0
;Parcial2.c,766 :: 		white();
	CALL       _white+0
;Parcial2.c,767 :: 		black();
	CALL       _black+0
;Parcial2.c,768 :: 		white();
	CALL       _white+0
;Parcial2.c,769 :: 		white();
	CALL       _white+0
;Parcial2.c,770 :: 		black();
	CALL       _black+0
;Parcial2.c,771 :: 		white();
	CALL       _white+0
;Parcial2.c,772 :: 		white();
	CALL       _white+0
;Parcial2.c,773 :: 		black();
	CALL       _black+0
;Parcial2.c,774 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,775 :: 		while(m<3){
L_yoshi138:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi139
;Parcial2.c,776 :: 		white();
	CALL       _white+0
;Parcial2.c,777 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,778 :: 		}           //linea 5
	GOTO       L_yoshi138
L_yoshi139:
;Parcial2.c,779 :: 		white();
	CALL       _white+0
;Parcial2.c,780 :: 		white();
	CALL       _white+0
;Parcial2.c,781 :: 		black();
	CALL       _black+0
;Parcial2.c,782 :: 		black();
	CALL       _black+0
;Parcial2.c,783 :: 		white();
	CALL       _white+0
;Parcial2.c,784 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,785 :: 		while(m<6){
L_yoshi140:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi141
;Parcial2.c,786 :: 		black();
	CALL       _black+0
;Parcial2.c,787 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,788 :: 		}
	GOTO       L_yoshi140
L_yoshi141:
;Parcial2.c,789 :: 		white();
	CALL       _white+0
;Parcial2.c,790 :: 		black();
	CALL       _black+0
;Parcial2.c,791 :: 		black();
	CALL       _black+0
;Parcial2.c,792 :: 		white();
	CALL       _white+0
;Parcial2.c,793 :: 		white(); //linea 6
	CALL       _white+0
;Parcial2.c,795 :: 		white();
	CALL       _white+0
;Parcial2.c,796 :: 		black();
	CALL       _black+0
;Parcial2.c,797 :: 		green();
	CALL       _green+0
;Parcial2.c,798 :: 		green();
	CALL       _green+0
;Parcial2.c,799 :: 		black();
	CALL       _black+0
;Parcial2.c,800 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,801 :: 		while(m<5) {
L_yoshi142:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi143
;Parcial2.c,802 :: 		green();
	CALL       _green+0
;Parcial2.c,803 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,804 :: 		}
	GOTO       L_yoshi142
L_yoshi143:
;Parcial2.c,805 :: 		greend();
	CALL       _greend+0
;Parcial2.c,806 :: 		black();
	CALL       _black+0
;Parcial2.c,807 :: 		green();
	CALL       _green+0
;Parcial2.c,808 :: 		green();
	CALL       _green+0
;Parcial2.c,809 :: 		black();
	CALL       _black+0
;Parcial2.c,810 :: 		white();
	CALL       _white+0
;Parcial2.c,812 :: 		black();
	CALL       _black+0
;Parcial2.c,813 :: 		green();
	CALL       _green+0
;Parcial2.c,814 :: 		green();
	CALL       _green+0
;Parcial2.c,815 :: 		black();
	CALL       _black+0
;Parcial2.c,816 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,817 :: 		while(m<7) {
L_yoshi144:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      7
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi145
;Parcial2.c,818 :: 		green();
	CALL       _green+0
;Parcial2.c,819 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,820 :: 		}
	GOTO       L_yoshi144
L_yoshi145:
;Parcial2.c,821 :: 		greend();
	CALL       _greend+0
;Parcial2.c,822 :: 		black();
	CALL       _black+0
;Parcial2.c,823 :: 		green();
	CALL       _green+0
;Parcial2.c,824 :: 		green();
	CALL       _green+0
;Parcial2.c,825 :: 		black();
	CALL       _black+0
;Parcial2.c,827 :: 		black();
	CALL       _black+0
;Parcial2.c,828 :: 		white();
	CALL       _white+0
;Parcial2.c,829 :: 		black();
	CALL       _black+0
;Parcial2.c,830 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,831 :: 		while(m<3) {
L_yoshi146:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi147
;Parcial2.c,832 :: 		green();
	CALL       _green+0
;Parcial2.c,833 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,834 :: 		}
	GOTO       L_yoshi146
L_yoshi147:
;Parcial2.c,835 :: 		black();
	CALL       _black+0
;Parcial2.c,836 :: 		green();
	CALL       _green+0
;Parcial2.c,837 :: 		green();
	CALL       _green+0
;Parcial2.c,838 :: 		black();
	CALL       _black+0
;Parcial2.c,839 :: 		green();
	CALL       _green+0
;Parcial2.c,840 :: 		green();
	CALL       _green+0
;Parcial2.c,841 :: 		greend();
	CALL       _greend+0
;Parcial2.c,842 :: 		black();
	CALL       _black+0
;Parcial2.c,843 :: 		white();
	CALL       _white+0
;Parcial2.c,844 :: 		black();
	CALL       _black+0
;Parcial2.c,846 :: 		black();
	CALL       _black+0
;Parcial2.c,847 :: 		white();
	CALL       _white+0
;Parcial2.c,848 :: 		black();
	CALL       _black+0
;Parcial2.c,849 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,850 :: 		while(m<9) {
L_yoshi148:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      9
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi149
;Parcial2.c,851 :: 		green();
	CALL       _green+0
;Parcial2.c,852 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,853 :: 		}
	GOTO       L_yoshi148
L_yoshi149:
;Parcial2.c,854 :: 		greend();
	CALL       _greend+0
;Parcial2.c,855 :: 		black();
	CALL       _black+0
;Parcial2.c,856 :: 		white();
	CALL       _white+0
;Parcial2.c,857 :: 		black();
	CALL       _black+0
;Parcial2.c,859 :: 		black();
	CALL       _black+0
;Parcial2.c,860 :: 		white();
	CALL       _white+0
;Parcial2.c,861 :: 		black();
	CALL       _black+0
;Parcial2.c,862 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,863 :: 		while(m<9) {
L_yoshi150:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      9
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi151
;Parcial2.c,864 :: 		green();
	CALL       _green+0
;Parcial2.c,865 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,866 :: 		}
	GOTO       L_yoshi150
L_yoshi151:
;Parcial2.c,867 :: 		greend();
	CALL       _greend+0
;Parcial2.c,868 :: 		black();
	CALL       _black+0
;Parcial2.c,869 :: 		white();
	CALL       _white+0
;Parcial2.c,870 :: 		black();
	CALL       _black+0
;Parcial2.c,871 :: 		m = 0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,873 :: 		black();
	CALL       _black+0
;Parcial2.c,874 :: 		white();
	CALL       _white+0
;Parcial2.c,875 :: 		black();
	CALL       _black+0
;Parcial2.c,876 :: 		greend();
	CALL       _greend+0
;Parcial2.c,877 :: 		while(m<7){
L_yoshi152:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      7
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi153
;Parcial2.c,878 :: 		green();
	CALL       _green+0
;Parcial2.c,879 :: 		m++    ;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,880 :: 		}
	GOTO       L_yoshi152
L_yoshi153:
;Parcial2.c,881 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,882 :: 		greend();
	CALL       _greend+0
;Parcial2.c,883 :: 		greend();
	CALL       _greend+0
;Parcial2.c,884 :: 		black();
	CALL       _black+0
;Parcial2.c,885 :: 		white();
	CALL       _white+0
;Parcial2.c,886 :: 		black();
	CALL       _black+0
;Parcial2.c,889 :: 		black();
	CALL       _black+0
;Parcial2.c,890 :: 		black();
	CALL       _black+0
;Parcial2.c,891 :: 		black();
	CALL       _black+0
;Parcial2.c,892 :: 		greend();
	CALL       _greend+0
;Parcial2.c,893 :: 		greend();
	CALL       _greend+0
;Parcial2.c,895 :: 		while(m<5){
L_yoshi154:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      5
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi155
;Parcial2.c,896 :: 		green();
	CALL       _green+0
;Parcial2.c,897 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,898 :: 		}
	GOTO       L_yoshi154
L_yoshi155:
;Parcial2.c,899 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,900 :: 		while(m<3){
L_yoshi156:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi157
;Parcial2.c,901 :: 		greend();
	CALL       _greend+0
;Parcial2.c,902 :: 		m++   ;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,903 :: 		}
	GOTO       L_yoshi156
L_yoshi157:
;Parcial2.c,904 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,905 :: 		black();
	CALL       _black+0
;Parcial2.c,906 :: 		black();
	CALL       _black+0
;Parcial2.c,907 :: 		black();
	CALL       _black+0
;Parcial2.c,910 :: 		white();
	CALL       _white+0
;Parcial2.c,911 :: 		black();
	CALL       _black+0
;Parcial2.c,912 :: 		white();
	CALL       _white+0
;Parcial2.c,913 :: 		black();
	CALL       _black+0
;Parcial2.c,914 :: 		while(m<8){
L_yoshi158:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi159
;Parcial2.c,915 :: 		greend();
	CALL       _greend+0
;Parcial2.c,916 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,917 :: 		}
	GOTO       L_yoshi158
L_yoshi159:
;Parcial2.c,918 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,919 :: 		black();
	CALL       _black+0
;Parcial2.c,920 :: 		white();
	CALL       _white+0
;Parcial2.c,921 :: 		black();
	CALL       _black+0
;Parcial2.c,922 :: 		white();
	CALL       _white+0
;Parcial2.c,925 :: 		white();
	CALL       _white+0
;Parcial2.c,926 :: 		white();
	CALL       _white+0
;Parcial2.c,927 :: 		black();
	CALL       _black+0
;Parcial2.c,928 :: 		black();
	CALL       _black+0
;Parcial2.c,929 :: 		black();
	CALL       _black+0
;Parcial2.c,930 :: 		while(m<6){
L_yoshi160:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      6
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi161
;Parcial2.c,931 :: 		greend();
	CALL       _greend+0
;Parcial2.c,932 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,933 :: 		}
	GOTO       L_yoshi160
L_yoshi161:
;Parcial2.c,934 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,935 :: 		black();
	CALL       _black+0
;Parcial2.c,936 :: 		black();
	CALL       _black+0
;Parcial2.c,937 :: 		black();
	CALL       _black+0
;Parcial2.c,938 :: 		white();
	CALL       _white+0
;Parcial2.c,939 :: 		white();
	CALL       _white+0
;Parcial2.c,942 :: 		while(m<4){
L_yoshi162:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi163
;Parcial2.c,943 :: 		white();
	CALL       _white+0
;Parcial2.c,944 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,945 :: 		}
	GOTO       L_yoshi162
L_yoshi163:
;Parcial2.c,946 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,947 :: 		while(m<8){
L_yoshi164:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      8
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi165
;Parcial2.c,948 :: 		black();
	CALL       _black+0
;Parcial2.c,949 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,950 :: 		}
	GOTO       L_yoshi164
L_yoshi165:
;Parcial2.c,951 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,952 :: 		while(m<4){
L_yoshi166:
	MOVLW      128
	XORWF      yoshi_m_L0+0, 0
	MOVWF      R0
	MOVLW      128
	XORLW      4
	SUBWF      R0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_yoshi167
;Parcial2.c,953 :: 		white();
	CALL       _white+0
;Parcial2.c,954 :: 		m++;
	INCF       yoshi_m_L0+0, 1
;Parcial2.c,955 :: 		}
	GOTO       L_yoshi166
L_yoshi167:
;Parcial2.c,956 :: 		m=0;
	CLRF       yoshi_m_L0+0
;Parcial2.c,958 :: 		}
L_end_yoshi:
	RETURN
; end of _yoshi

_main:

;Parcial2.c,961 :: 		void main(){
;Parcial2.c,962 :: 		TRISA = 0;
	CLRF       TRISA+0
;Parcial2.c,963 :: 		ANSELA = 0;
	CLRF       ANSELA+0
;Parcial2.c,964 :: 		LATA = 0;
	CLRF       LATA+0
;Parcial2.c,965 :: 		OSCCON = 0b11110011;
	MOVLW      243
	MOVWF      OSCCON+0
;Parcial2.c,967 :: 		while(1){
L_main168:
;Parcial2.c,968 :: 		yoshi();
	CALL       _yoshi+0
;Parcial2.c,974 :: 		}
	GOTO       L_main168
;Parcial2.c,975 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
