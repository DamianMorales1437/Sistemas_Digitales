const unsigned short DIGITOS[] =  //P_NAJAS
{
  0x76, //codigo del digito 1
  0x49, //codigo del digito 2
  0x36, //codigo del digito 3
  0x5C, //codigo del digito 4
  0x63, //codigo del digito 5
  0x77, //codigo del digito 6
 };
const unsigned short P_ALTAS[] =  //P_NAJAS
{
  0x76, //codigo del digito 2
  0x49, //codigo del digito 1
  0x76, //codigo del digito 2
  0x49, //codigo del digito 1
  0x76, //codigo del digito 2
  0x49, //codigo del digito 1
 };
const unsigned short SIMBOLOS[] =  //P_NAJAS
{
  0x06, //codigo reposo A
  0x01, //codigo reposo B
  0x30, //codigo reposo C
  0x08, //codigo reposo D
};
void VerDisplay1 (int num, const unsigned short simb_dig_disp[],const int delay)
{
 unsigned short U; //variable primer display.
 unsigned short D; //variable segundo display.
 unsigned short C; //variable tercer display.
 C = num;
 D = num;
 U = num;
 PORTB = simb_dig_disp[U]; //Visualiza en el primer dips el digito/SIMBOLO.
 PORTA.F0=1; //activa en alto el primer display
 Vdelay_ms(delay);//Retardo de 10ms
 PORTA=0;//Desactiva todos los displays.
 PORTB = simb_dig_disp[D]; //Visualiza en el segundo dips el digito/SIMBOLO.
 PORTA.F1=1; //activa en alto el segundo display
 Vdelay_ms(delay);//Retardo de 10ms
 PORTA=0;//Desactiva todos los displays.
 PORTB = simb_dig_disp[C]; //Visualiza en el tercer dips el digito/SIMBOLO.
 PORTA.F2=1; //activa en alto el tercer display
 Vdelay_ms(delay);//Retardo de 10ms
 PORTA=0;//Desactiva todos los displays.
}
void VerDisplay_digitos(int Numero1,const unsigned short simb_dig_disp[],const int delay, short finish)
{
 unsigned int U; //Variable primer display
 unsigned int D; //Variable segundo display
 unsigned int C; //Variable tercer display
 C =  Numero1/100; //centenas, digito tercer disp
 D = (Numero1-C*100)/10; //decenas, digito segundo disp
 U = (Numero1-C*100-D*10); //unidades, digito primer disp
 if(C>5) C=C-5; //solo numeros del 0-5
 if(D>5) D=D-5;
 if(U>5) U=U-5;
 PORTB = simb_dig_disp[U]; //Visualiza las unidades.
 PORTA.F0=1; //Activa en alto el primer display.
 Vdelay_ms(delay);//Retardo de 10ms
 PORTA=0;//Desactiva todos los displays.
 if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
 {Sound_play(1900,5);}
 PORTB = simb_dig_disp[D]; //Visualiza las decenas.
 PORTA.F1=1; //Activa en alto el primer display.
 Vdelay_ms(delay);//Retardo de 10ms
 PORTA=0;//Desactiva todos los displays.
 if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
 {Sound_play(444,5);}
 PORTB = simb_dig_disp[C]; //Visualiza las centenas.
 PORTA.F2=1; //Activa en alto el primer display.
 Vdelay_ms(delay);//Retardo de 10ms
 PORTA=0;//Desactiva todos los displays.
 if((simb_dig_disp[U]==simb_dig_disp[D])&&(simb_dig_disp[D]== simb_dig_disp[C])&&(finish==1))
 {Sound_play(1900,5);}
}
char estado=0;
void main ()
{
 unsigned short N=0;//Variable de conteo.
 unsigned short P=0;//Variable de conteo.
 unsigned short cont=0;
 int L=0;
 bit finish_but;
 short interruptor;
 short Num_Prob[5];
 short Salida;
 ANSELA=0;
 ANSELB=0;
 TRISB = 0; //condigura el puerto B como salida
 TRISA = 0xF0; //configura el puerto A como salida (tres disp)
 PORTA = 0b0000000; // se desactivan todos los displays
 PORTB=0;
 Sound_Init(&PORTB,7);
 while (1) // Bucle infinito
 { int aleatorio_0;
   if(Button(&PORTA,6,1,0))
    {interruptor=1;
    Num_Prob[0]=P_ALTAS[0];
    Num_Prob[1]=P_ALTAS[1];
    Num_Prob[2]=P_ALTAS[2];
    Num_Prob[3]=P_ALTAS[3];
    Num_Prob[4]=P_ALTAS[4];
    Num_Prob[5]=P_ALTAS[5];//Probabilidades altas
    }
   else
    {interruptor=0;
    Num_Prob[0]=Digitos[0];
    Num_Prob[1]=Digitos[1];
    Num_Prob[2]=Digitos[2];
    Num_Prob[3]=Digitos[3];
    Num_Prob[4]=Digitos[4];
    Num_Prob[5]=Digitos[5]; //Probabilidades bajas
    }
    //REPOSO
    VerDisplay1(cont,SIMBOLOS,1); //Visualiza el codigo de reposo (30ms)
    N++; //Cambio de simbolo cada 30ms
    if(N==2)
    {
      cont++; //Aumenta el valor del contador,recorriendo la secuencia de SIMBOLOS.
      N=0; //Reinicio conteo N
      if(cont==4)//Cantidad total de SIMBOLOS = 4
         cont=0; // reinicio secuencia de simbolos
    }
   //PULSADOR = 1
   
   if(Button(&PORTA,7,1,0))estado=1;
   if(estado && Button(&PORTA,7,1,1)){
    while (L<31) //APROX 10a
    {
     //rand()% ((n mas alto-n mas bajo +1)+n mas bajo)
     aleatorio_0=rand()%(1000);
    if(L==0|L<8){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}} // 30ms
    if(L>=8 && L<23){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}} // 2*30ms
    if(L>=0 && L<29){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}  // 8*30ms
    if(L>=0 && L<31){while(P<1){P++; VerDisplay_digitos(aleatorio_0,Num_Prob,1,0);}}  // 21*30ms
      P=0;
      estado=0;
      L++;
    }
    finish_but=1;
   } 
   //RESULTADO + MELODIA SI GANA
   if(finish_but){
      while(P<10) //aprox 5ms
      { //aleatorio_0=111//prueba
        VerDisplay_digitos(aleatorio_0,Num_Prob,1,1);
        // combinaciones con las que el usuario gana
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