#line 1 "C:/Users/s_tir/Desktop/parcial 4/parcial 4/mikroc pro/parcial_4.c"
#line 18 "C:/Users/s_tir/Desktop/parcial 4/parcial 4/mikroc pro/parcial_4.c"
sbit MAX7219_CS_LOAD_1 at RA1_bit;
sbit MAX7219_CS_LOAD_DIRECTION_1 at TRISA1_bit;
void MAX7219_write_1(char reg1, char reg2, char data1, char data2)
{
 MAX7219_CS_LOAD_1 = 0;
 SPI1_write(reg1);
 SPI1_write(data1);
 MAX7219_CS_LOAD_1 = 1;
 SPI1_write(reg2);
 SPI1_write(data2);
 MAX7219_CS_LOAD_1 = 0;
}


void MAX7219_init_1()
{
 SPI1_init();

 MAX7219_write_1( 0x09 , 0x09 , 0xFF , 0xFF );
 MAX7219_write_1( 0x0A , 0x0A , 0x0F , 0x0F );
 MAX7219_write_1( 0x0B , 0x0B , 0x07 , 0x07 );
 MAX7219_write_1( 0x0C , 0x0C , 0x01 , 0x01 );
 MAX7219_write_1( 0x0F , 0x0F , 0x01 , 0x01 );
 MAX7219_write_1( 0x0F , 0x0F , 0x00 , 0x00 );
}


void Max7219Print_1(unsigned long Number, unsigned short NumberOfDigits)
{
 long i;
 for(i=1;Number>0||i-NumberOfDigits<=0;Number/=10,i++)
 {
 MAX7219_CS_LOAD_1=0;
 SPI1_write(i);
 SPI1_write(Number%10);
 MAX7219_CS_LOAD_1=1;
 }
}

 void Max7219Print_2(unsigned long Number, unsigned short NumberOfDigits)
{
 long i;
 for(i=1;Number>0||i-NumberOfDigits<=0;Number/=10,i++)
 {
 MAX7219_CS_LOAD_1=0;
 SPI1_write(i);
 SPI1_write(Number%10);
 MAX7219_CS_LOAD_1=1;
 }
}


void Max7219DisplayOff_1()
{
 MAX7219_CS_LOAD_1=0;
 SPI1_write( 0x0C );
 SPI1_write( 0x00 );
 MAX7219_CS_LOAD_1=1;
}

void Max7219DisplayOn_1()
{
 MAX7219_CS_LOAD_1=0;
 SPI1_write( 0x0C );
 SPI1_write( 0x01 );
 MAX7219_CS_LOAD_1=1;
}

void Max7219UpdateIntensity_1(char OnValue)
{
 if(OnValue>=0&&OnValue<=15)
 {
 MAX7219_CS_LOAD_1=0;
 SPI1_write(0x0a);
 SPI1_write(OnValue);
 MAX7219_CS_LOAD_1=1;
 }
}
unsigned long i,j;


void main()
{
 ANSELB=0;
 MAX7219_CS_LOAD_1 = 0;
 MAX7219_CS_LOAD_DIRECTION_1 = 0;
 SPI1_Init();
 MAX7219_init_1();
 Max7219DisplayOn_1();

 Max7219Print_1(i,7);
 Max7219Print_2(i,7);

while(1)
 {
 for(i=0;i<99999999;i++)
 {
 Max7219Print_1(i,7);

 delay_ms(10);
 }
 if (j<=10){
 while(1)
 {
 for(j=0;j<99999999;j++)
 {
 Max7219Print_2(j,7);

 delay_ms(10);
 }
 }
 }
 }

}
