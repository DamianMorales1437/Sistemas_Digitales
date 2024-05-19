//------------------------------------------------------------------------------
#define DECODE_MODE_REG     0x09
#define INTESITY_REG        0x0A
#define SCAN_LIMIT_REG      0x0B
#define SHUTDOWN_REG        0x0C
#define DISPLAY_TEST_REG    0x0F
//------------------------------------------------------------------------------
#define DISABLE_DECODE      0x00
#define DECODE_ALL          0xFF
#define BRIGHTNESS          0x0F
#define SCAN_LOW_NIBBLE     0x03
#define SCAN_ALL_DIGITS     0x07
#define SHUTDOWN_MODE       0x00
#define NORMAL_OPERATION    0x01
#define DISABLE_TEST_MODE   0x00
#define ENABLE_TEST_MODE    0x01
//------------------------------------------------------------------------------
sbit MAX7219_CS_LOAD_1 at RA1_bit;
sbit MAX7219_CS_LOAD_DIRECTION_1 at TRISA1_bit;
void MAX7219_write_1(char reg1, char reg2, char data1, char data2)
{
  MAX7219_CS_LOAD_1  = 0;
  SPI1_write(reg1);
  SPI1_write(data1);
  MAX7219_CS_LOAD_1  = 1;
  SPI1_write(reg2);
  SPI1_write(data2);
  MAX7219_CS_LOAD_1  = 0;
}
//

void MAX7219_init_1()
{
  SPI1_init();

  MAX7219_write_1(DECODE_MODE_REG,DECODE_MODE_REG,DECODE_ALL,DECODE_ALL);
  MAX7219_write_1(INTESITY_REG,INTESITY_REG,BRIGHTNESS,BRIGHTNESS);
  MAX7219_write_1(SCAN_LIMIT_REG,SCAN_LIMIT_REG,SCAN_ALL_DIGITS,SCAN_ALL_DIGITS);
  MAX7219_write_1(SHUTDOWN_REG,SHUTDOWN_REG,NORMAL_OPERATION,NORMAL_OPERATION);
  MAX7219_write_1(DISPLAY_TEST_REG,DISPLAY_TEST_REG,ENABLE_TEST_MODE,ENABLE_TEST_MODE);
  MAX7219_write_1(DISPLAY_TEST_REG,DISPLAY_TEST_REG,DISABLE_TEST_MODE,DISABLE_TEST_MODE);
}
//

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

//
void Max7219DisplayOff_1()
{
  MAX7219_CS_LOAD_1=0;
  SPI1_write(SHUTDOWN_REG);
  SPI1_write(DISABLE_DECODE);
  MAX7219_CS_LOAD_1=1;
}
//
void Max7219DisplayOn_1()
{
  MAX7219_CS_LOAD_1=0;
  SPI1_write(SHUTDOWN_REG);
  SPI1_write(NORMAL_OPERATION);
  MAX7219_CS_LOAD_1=1;
}
//
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

//
void main()
{
 ANSELB=0;
 MAX7219_CS_LOAD_1 = 0;                // Deselect DAC
 MAX7219_CS_LOAD_DIRECTION_1 = 0;          // Set CS# pin as Output
 SPI1_Init();                           // Initialize SPI module
 MAX7219_init_1();
 Max7219DisplayOn_1();
 
 Max7219Print_1(i,7);
 Max7219Print_2(i,7);

while(1)// loop forever
  {
    for(i=0;i<99999999;i++)//Count From 0 To 99999999 And Display on 8 Seven segemnts
    {
       Max7219Print_1(i,7);

      delay_ms(10);
    }
    if (j<=10){
   while(1)// loop forever
   {
     for(j=0;j<99999999;j++)//Count From 0 To 99999999 And Display on 8 Seven segemnts
     {
        Max7219Print_2(j,7);

        delay_ms(10);
      }
   }
   }
  }

}

//------------------------------------------------------------------------------