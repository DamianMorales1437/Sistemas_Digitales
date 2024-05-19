// Declaración de las constantes para el display.
const unsigned short DIGITOS[] =
{
    0x3F, //Código del dígito 0
    0x06, //Código del dígito 1
    0x5B, //Código del dígito 2
    0x4F, //Código del dígito 3
    0x66, //Código del dígito 4
    0x6D, //Código del dígito 5
    0x7D, //Código del dígito 6
    0x07, //Código del dígito 7
    0x7F, //Código del dígito 8
    0x6F, //Código del dígito 9
};
//Función para visualizar el display dinámico.
void VerDisplay( int Numero )
{
    unsigned short U; //Variable para guardar las unidades.
    unsigned short D; //Variable para guardar las decenas.
    unsigned short C; //Variable para guardar las centenas.
    unsigned short UM; //Variable para guardar las unidades de mil.
    UM = Numero/1000; //Cálculo de las unidades de mil.
    C = (Numero-UM*1000)/100; //Cálculo de las centenas.
    D = (Numero-UM*1000-C*100)/10; //Cálculo de las decenas.
    U = (Numero-UM*1000-C*100-D*10); //Cálculo de las unidades.
    PORTB = DIGITOS[U]; //Visualiza las unidades.
    PORTA.F0=1; //Activa en alto el primer display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
    PORTB = DIGITOS[D]; //Visualiza las decenas.
    PORTA.F1=1; //Activa en alto el segundo display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
    PORTB = DIGITOS[C]; //Visualiza las centenas.
    PORTA.F2=1; //Activa en alto el tercer display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
    PORTB = DIGITOS[UM]; //Visualiza las unidades de mil.
    PORTA.F3=1; //Activa en alto el cuarto display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
}

void VerDisplay_T( int Time )
{
    unsigned short U; //Variable para guardar las unidades.
    unsigned short D; //Variable para guardar las decenas.
    unsigned short C; //Variable para guardar las centenas.
    unsigned short UM; //Variable para guardar las unidades de mil.
    UM = Time/1000; //Cálculo de las unidades de mil.
    C = (Time-UM*1000)/100; //Cálculo de las centenas.
    D = (Time-UM*1000-C*100)/10; //Cálculo de las decenas.
    U = (Time-UM*1000-C*100-D*10); //Cálculo de las unidades.
    PORTB = DIGITOS[U]; //Visualiza las unidades.
    PORTA.F0=1; //Activa en alto el primer display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
    PORTB = DIGITOS[D]; //Visualiza las decenas.
    PORTA.F1=1; //Activa en alto el segundo display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
    PORTB = DIGITOS[C]; //Visualiza las centenas.
    PORTA.F2=1; //Activa en alto el tercer display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
    PORTB = DIGITOS[UM]; //Visualiza las unidades de mil.
    PORTA.F3=1; //Activa en alto el cuarto display
    delay_ms(10); //Retado de 10m segundos
    PORTA=0; //Desactiva todos los displays.
}

void main ( void )
{
  unsigned short N=0; //Variable de conteo de bolsas.
  unsigned short ciclo = 0; //Variable de conteo de tiempo.
  unsigned short I = 0; //Variable de conteo de tiempo.
  unsigned short Ttotal = 0; //Variable de conteo de tiempo.
  int Numero=0;
  int Time = 0;
  TRISB = 0; //Configura el puerto B como salida
  TRISA = 0; //Configura el puerto A como salida
  PORTA = 0; //Se desactiva todos los displays
  PORTB = 0;
  Sound_Init(&PORTB,7);
  while( 1 ) //Bucle infinito
  {
    //Se visualiza el valor de Número.
    VerDisplay( Numero ); //Está función dura aproximadamente 40m segundos.
    //Se cuentan 12 incrementos en N para hacer un incremento
    //en Número aproximadamente cada 500m segundos.
    N++;
    if( N==12 )
    {
      N=0; //Se reinicia el conteo de N.
      Numero++; //Se incrementa el valor de Número.
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