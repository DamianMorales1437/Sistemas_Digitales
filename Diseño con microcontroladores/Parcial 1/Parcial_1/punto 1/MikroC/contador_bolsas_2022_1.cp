#line 1 "D:/uis/9 semestre/Diseño con micros/Diseño de micros y proces/Jair/Parcial_1/punto 1/MikroC/contador_bolsas_2022_1.c"

const unsigned short DIGITOS[] =
{
 0x3F,
 0x06,
 0x5B,
 0x4F,
 0x66,
 0x6D,
 0x7D,
 0x07,
 0x7F,
 0x6F,
};

void VerDisplay( int Numero )
{
 unsigned short U;
 unsigned short D;
 unsigned short C;
 unsigned short UM;
 UM = Numero/1000;
 C = (Numero-UM*1000)/100;
 D = (Numero-UM*1000-C*100)/10;
 U = (Numero-UM*1000-C*100-D*10);
 PORTB = DIGITOS[U];
 PORTA.F0=1;
 delay_ms(10);
 PORTA=0;
 PORTB = DIGITOS[D];
 PORTA.F1=1;
 delay_ms(10);
 PORTA=0;
 PORTB = DIGITOS[C];
 PORTA.F2=1;
 delay_ms(10);
 PORTA=0;
 PORTB = DIGITOS[UM];
 PORTA.F3=1;
 delay_ms(10);
 PORTA=0;
}

void VerDisplay_T( int Time )
{
 unsigned short U;
 unsigned short D;
 unsigned short C;
 unsigned short UM;
 UM = Time/1000;
 C = (Time-UM*1000)/100;
 D = (Time-UM*1000-C*100)/10;
 U = (Time-UM*1000-C*100-D*10);
 PORTB = DIGITOS[U];
 PORTA.F0=1;
 delay_ms(10);
 PORTA=0;
 PORTB = DIGITOS[D];
 PORTA.F1=1;
 delay_ms(10);
 PORTA=0;
 PORTB = DIGITOS[C];
 PORTA.F2=1;
 delay_ms(10);
 PORTA=0;
 PORTB = DIGITOS[UM];
 PORTA.F3=1;
 delay_ms(10);
 PORTA=0;
}

void main ( void )
{
 unsigned short N=0;
 unsigned short ciclo = 0;
 unsigned short I = 0;
 unsigned short Ttotal = 0;
 int Numero=0;
 int Time = 0;
 TRISB = 0;
 TRISA = 0;
 PORTA = 0;
 PORTB = 0;
 Sound_Init(&PORTB,7);
 while( 1 )
 {

 VerDisplay( Numero );


 N++;
 if( N==12 )
 {
 N=0;
 Numero++;
 ciclo++;
 if (ciclo == 5){
 ciclo = 0;
 Ttotal=Ttotal+2;
 if (Numero<=15){
 Time=Time+2;
 }
 if(Numero == 15){
 while(I<110){
 Sound_play(698,10);
 VerDisplay( Numero );
 N++;
 if( N==12 )
 {
 N=0;
 Numero++;
 ciclo++;
 if (ciclo == 5){
 ciclo = 0;
 Ttotal=Ttotal+2;
 }
 }
 I++;
 }
 }
 }
 while (Ttotal==16){
 Sound_play(698,100);
 VerDisplay_T(Time);
 delay_ms(100);
 VerDisplay_T(Time);
 delay_ms(100);
 VerDisplay_T(Time);
 delay_ms(100);
 VerDisplay_T(Time);
 delay_ms(100);
 Sound_play(698,100);
 VerDisplay(Numero);
 delay_ms(100);
 VerDisplay(Numero);
 delay_ms(100);
 VerDisplay(Numero);
 delay_ms(100);
 VerDisplay(Numero);
 delay_ms(100);
 }
 }
 }
}
