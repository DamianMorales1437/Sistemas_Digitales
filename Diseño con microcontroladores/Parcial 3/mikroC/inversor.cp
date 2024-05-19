#line 1 "C:/Users/s_tir/Desktop/Entrega3/mikroC/inversor.c"


 const muestras=360;
#line 6 "C:/Users/s_tir/Desktop/Entrega3/mikroC/inversor.c"
 unsigned int onda[]={232,236,239,243,247,250,257,261,265,268,272,276,279,283,286,290,297,301,305,308,312,315,319,323,326,330,334,337,341,344,348,352,355,359,363,366,366,370,373,377,381,384,388,392,392,395,399,402,402,406,410,413,413,417,421,421,424,428,428,431,431,435,435,439,439,442,442,446,446,450,450,450,453,453,453,457,457,457,457,460,460,460,460,460,460,460,464,464,464,464,464,464,464,464,464,460,460,460,460,460,460,457,457,457,457,453,453,453,450,450,450,446,446,442,442,442,439,439,435,435,431,428,428,424,424,421,417,417,413,410,410,406,402,399,399,395,392,388,384,381,381,377,373,370,366,363,359,355,352,348,344,341,337,334,330,326,323,319,315,312,308,305,301,297,294,290,286,283,279,276,268,265,261,257,254,250,247,243,239,232,228,225,221,218,214,210,207,199,196,192,189,185,181,178,174,170,167,163,160,152,149,145,141,138,134,131,127,123,120,116,112,109,105,105,102,98,94,91,87,83,80,76,76,73,69,65,62,62,58,54,51,51,47,44,44,40,40,36,33,33,29,29,25,25,22,22,18,18,15,15,15,11,11,11,7,7,7,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,4,4,7,7,7,7,11,11,11,15,15,18,18,18,22,22,25,25,29,29,33,36,36,40,40,44,47,47,51,54,58,58,62,65,69,69,73,76,80,83,87,87,91,94,98,102,105,109,112,116,120,123,127,131,134,138,141,145,149,152,156,160,163,167,170,174,178,185,189,192,196,199,203,207,210,214,221,225,228,232
};
unsigned int es,eso;



char LEEBIT (unsigned int port, char bit1)
{

 if ((port & (1 << bit1))>0) return (1);
 else return (0);
}

void interrpcion() iv 0x0008 ics ICS_AUTO
{

 if (TMR2IF_bit==1)
{
eso++;
if (eso>=muestras-1) eso=0;

es=onda[eso];

 CCPR1L=es >> 2;
DC1B1_bit=LEEBIT(es,1);
DC1B0_bit=LEEBIT(es,0);
TMR2IF_bit=0;
}

}

void main()
{


adcon1=0b1111;
INTCON=0b01000000;


TRISA=0;
trisc=0;


CCP1CON=0b00101100;


T2CON=0;



T2CKPS1_bit=0;
T2CKPS0_bit=1;
PR2=143;

 eso=0;
 es=onda[eso];

 CCPR1L=es >> 2;

 if ((es & (1 << 1))>0) DC1B1_bit=1;
 else DC1B1_bit=0;

 if ((es & (1 << 0))>0) DC1B0_bit=1;
 else DC1B0_bit=0;


TMR2IF_bit=0;
TMR2IE_bit=1;
GIE_bit=1;
TMR2ON_bit=1;


}
