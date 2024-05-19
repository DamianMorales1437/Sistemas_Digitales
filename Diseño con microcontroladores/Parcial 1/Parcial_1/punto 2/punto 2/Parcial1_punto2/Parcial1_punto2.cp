#line 1 "D:/uis/9 semestre/Diseño con micros/Diseño de micros y proces/Jair/Parcial_1/punto 2/punto 2/Parcial1_punto2/Parcial1_punto2.c"
const unsigned short DIGITOS[] =
{
 0x76,
 0x49,
 0x36,
 0x5C,
 0x63,
 0x77,
 };
const unsigned short P_ALTAS[] =
{
 0x76,
 0x49,
 0x76,
 0x49,
 0x76,
 0x49,
 };
const unsigned short SIMBOLOS[] =
{
 0x06,
 0x01,
 0x30,
 0x08,
};
void VerDisplay1 (int num, const unsigned short simb_dig_disp[],const int delay)
{
 unsigned short U;
 unsigned short D;
 unsigned short C;
 C = num;
 D = num;
 U = num;
 PORTB = simb_dig_disp[U];
 PORTA.F0=1;
 Vdelay_ms(delay);
 PORTA=0;
 PORTB = simb_dig_disp[D];
 PORTA.F1=1;
 Vdelay_ms(delay);
 PORTA=0;
 PORTB = simb_dig_disp[C];
 PORTA.F2=1;
 Vdelay_ms(delay);
 PORTA=0;
}
void VerDisplay_digitos(int Numero1,const unsigned short simb_dig_disp[],const int delay, short finish)
{
 unsigned int U;
 unsigned int D;
 unsigned int C;
 C = Numero1/100;
 D = (Numero1-C*100)/10;
 U = (Numero1-C*100-D*10);
 if(C>5) C=C-5;
 if(D>5) D=D-5;
 if(U>5) U=U-5;
 PORTB = simb_dig_disp[U];
 PORTA.F0=1;
 Vdelay_ms(delay);
 PORTA=0;
 if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
 {Sound_play(1900,5);}
 PORTB = simb_dig_disp[D];
 PORTA.F1=1;
 Vdelay_ms(delay);
 PORTA=0;
 if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
 {Sound_play(444,5);}
 PORTB = simb_dig_disp[C];
 PORTA.F2=1;
 Vdelay_ms(delay);
 PORTA=0;
 if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
 {Sound_play(1900,5);}
}
char estado=0;
void main ()
{
 unsigned short N=0;
 unsigned short P=0;
 unsigned short cont=0;
 int L=0;
 bit finish_but;
 short interruptor;
 short Num_Prob[5];
 short Salida;
 ANSELA=0;
 ANSELB=0;
 TRISB = 0;
 TRISA = 0xF0;
 PORTA = 0b0000000;
 PORTB=0;
 Sound_Init(&PORTB,7);
 while (1)
 { int aleatorio_0;
 if(Button(&PORTA,6,1,0))
 {interruptor=1;
 Num_Prob[0]=P_ALTAS[0];
 Num_Prob[1]=P_ALTAS[1];
 Num_Prob[2]=P_ALTAS[2];
 Num_Prob[3]=P_ALTAS[3];
 Num_Prob[4]=P_ALTAS[4];
 Num_Prob[5]=P_ALTAS[5];
 }
 else
 {interruptor=0;
 Num_Prob[0]=Digitos[0];
 Num_Prob[1]=Digitos[1];
 Num_Prob[2]=Digitos[2];
 Num_Prob[3]=Digitos[3];
 Num_Prob[4]=Digitos[4];
 Num_Prob[5]=Digitos[5];
 }

 VerDisplay1(cont,SIMBOLOS,1);
 N++;
 if(N==2)
 {
 cont++;
 N=0;
 if(cont==4)
 cont=0;
 }


 if(Button(&PORTA,7,1,0))estado=1;
 if(estado && Button(&PORTA,7,1,1)){
 while (L<31)
 {

 aleatorio_0=rand()%(1000);
 if(L==0|L<8){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}
 if(L>=8 && L<23){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}
 if(L>=0 && L<29){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}
 if(L>=0 && L<31){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}
 P=0;
 estado=0;
 L++;
 }
 finish_but=1;
 }

 if(finish_but){
 while(P<10)
 {
 VerDisplay_digitos(aleatorio_0,Num_Prob,1,1);

 if (Salida == 1)
 {
 P=167;
 }
 else {P++;};
 }
 }
 finish_but=0;
 P=0;
 aleatorio_0=0;
 L=0;
 }
}
