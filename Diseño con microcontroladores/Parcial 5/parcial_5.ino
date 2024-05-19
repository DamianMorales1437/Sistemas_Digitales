TaskHandle_t Task1, Task2;                                                                                                  // A
SemaphoreHandle_t baton;                                                                                                    // B

float w;
long int ti;
float data[64];
float t[20];
float f = 1;
float Fs = 0.1;
int lon = 20;
float pi = 3.14159;

int counter = 0, counter1 = 0, counter2 = 0;
//------------------------------------------señal cuadrada--------------------------------------------//
float data2[64] = {1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000,
                   1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, -1000,
                   -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000,
                   -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000
                  };
//----------------------------------------------------------------------------------------------------//

//-------------------------------------señal seno-----------------------------------//
byte sine_data [91] =
{
  0,
  4,    9,    13,   18,   22,   27,   31,   35,   40,   44,
  49,   53,   57,   62,   66,   70,   75,   79,   83,   87,
  91,   96,   100,  104,  108,  112,  116,  120,  124,  127,
  131,  135,  139,  143,  146,  150,  153,  157,  160,  164,
  167,  171,  174,  177,  180,  183,  186,  189,  192,  195,       //Paste this at top of program
  198,  201,  204,  206,  209,  211,  214,  216,  219,  221,
  223,  225,  227,  229,  231,  233,  235,  236,  238,  240,
  241,  243,  244,  245,  246,  247,  248,  249,  250,  251,
  252,  253,  253,  254,  254,  254,  255,  255,  255,  255
};

float f_peaks[5]; // top 5 frequencies peaks in descending order
//---------------------------------------------------------------------------//

  //-----------------------------FFT Function----------------------------------------------//

  float FFT(float in[], int N, float Frequency)
  {

    unsigned int data[13] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048};
    int a, c1, f, o, x;
    a = N;

    for (int i = 0; i < 12; i++)          //calculating the levels
    {
      if (data[i] <= a) {
        o = i;
      }
    }

    int in_ps[data[o]] = {};   //input for sequencing
    float out_r[data[o]] = {}; //real part of transform
    float out_im[data[o]] = {}; //imaginory part of transform
    float out_f[data[o]] = {}; //imaginory part of transform

    x = 0;
    for (int b = 0; b < o; b++)              // bit reversal
    {
      c1 = data[b];
      f = data[o] / (c1 + c1);
      for (int j = 0; j < c1; j++)
      {
        x = x + 1;
        in_ps[x] = in_ps[j] + f;
      }
    }


    for (int i = 0; i < data[o]; i++)     // update input array as per bit reverse order
    {
      if (in_ps[i] < a)
      {
        out_r[i] = in[in_ps[i]];
      }
      if (in_ps[i] > a)
      {
        out_r[i] = in[in_ps[i] - a];
      }
    }


    int i10, i11, n1;
    float e, c, s, tr, ti;

    for (int i = 0; i < o; i++)                             //fft
    {
      i10 = data[i];            // overall values of sine/cosine  :
      i11 = data[o] / data[i + 1]; // loop with similar sine cosine:
      e = 360 / data[i + 1];
      e = 0 - e;
      n1 = 0;

      for (int j = 0; j < i10; j++)
      {
        c = cosine(e * j);
        s = sine(e * j);
        n1 = j;

        for (int k = 0; k < i11; k++)
        {
          tr = c * out_r[i10 + n1] - s * out_im[i10 + n1];
          ti = s * out_r[i10 + n1] + c * out_im[i10 + n1];

          out_r[n1 + i10] = out_r[n1] - tr;
          out_r[n1] = out_r[n1] + tr;

          out_im[n1 + i10] = out_im[n1] - ti;
          out_im[n1] = out_im[n1] + ti;

          n1 = n1 + i10 + i10;
        }
      }
    }

    Serial.print("Freq \t      FFT \n");
    Serial.print("\tReal\tImaginaria\n");

    for (int i = 0; i < data[o]; i++)
    {
      out_f[i] = i * Frequency / N;
      Serial.print(out_f[i]); Serial.print("Hz");
      Serial.print("\t");
      Serial.print(out_r[i]);
      Serial.print("\t");                                     // un comment to print RAW o/p
      Serial.print(out_im[i]); Serial.println("i");
    }
    /*

      Serial.print("\nFreq\tMAGNITUD \n");
      //---> here onward out_r contains amplitude and our_in conntains frequency (Hz)
        for(int i=0;i<data[o-1];i++)               // getting amplitude from compex number
            {
             out_r[i]=sqrt(out_r[i]*out_r[i]+out_im[i]*out_im[i]); // to  increase the speed delete sqrt
             out_im[i]=i*Frequency/N;

             Serial.print(out_im[i]); Serial.print("Hz");
             Serial.print("\t");                            // un comment to print freuency bin
             Serial.println(out_r[i]);

            }

    */


    x = 0;     // peak detection
    for (int i = 1; i < data[o - 1] - 1; i++)
    {
      if (out_r[i] > out_r[i - 1] && out_r[i] > out_r[i + 1])
      { in_ps[x] = i;  //in_ps array used for storage of peak number
        x = x + 1;
      }
    }


    s = 0;
    c = 0;
    for (int i = 0; i < x; i++)      // re arraange as per magnitude
    {
      for (int j = c; j < x; j++)
      {
        if (out_r[in_ps[i]] < out_r[in_ps[j]])
        { s = in_ps[i];
          in_ps[i] = in_ps[j];
          in_ps[j] = s;
        }
      }
      c = c + 1;
    }



    for (int i = 0; i < 5; i++) // updating f_peak array (global variable)with descending order
    {
      f_peaks[i] = out_im[in_ps[i]];
    }



  }


  float sine(int i)
  {
    int j = i;
    float out;
    while (j < 0) {
      j = j + 360;
    }
    while (j > 360) {
      j = j - 360;
    }
    if (j > -1   && j < 91) {
      out = sine_data[j];
    }
    else if (j > 90  && j < 181) {
      out = sine_data[180 - j];
    }
    else if (j > 180 && j < 271) {
      out = -sine_data[j - 180];
    }
    else if (j > 270 && j < 361) {
      out = -sine_data[360 - j];
    }
    return (out / 255);
  }

  float cosine(int i)
  {
    int j = i;
    float out;
    while (j < 0) {
      j = j + 360;
    }
    while (j > 360) {
      j = j - 360;
    }
    if (j > -1   && j < 91) {
      out = sine_data[90 - j];
    }
    else if (j > 90  && j < 181) {
      out = -sine_data[j - 90];
    }
    else if (j > 180 && j < 271) {
      out = -sine_data[270 - j];
    }
    else if (j > 270 && j < 361) {
      out = sine_data[j - 270];
    }
    return (out / 255);
  }

  //----------------------------tareas--------------------------------------//

  void codeForTask1( void * parameter )                                 //tarea #1                                                      // C
  {
    Serial.print("FFT seno");
    Serial.print("\n");
    ti = micros();
    FFT(data, 64, 100);
    Serial.print("\n");
    Serial.print("tiempo de proceso: ");Serial.print((micros() - ti)/1000); Serial.print("ms");
    delay(99999);
  }

  void codeForTask2( void * parameter )                                   //tarea #2                                           // C
  {
    Serial.print("\n");
    Serial.print("\n");
    Serial.print("FFT cuadrada");
    Serial.print("\n");
    ti = micros();
    FFT(data2,64,100);//100Hz
    Serial.print("\n");
    Serial.print("tiempo de proceso: ");Serial.print((micros() - ti)/1000); Serial.print("ms");
    delay(99999);
  }

//--------------------------------------------------------------------------//
void setup() 
  {
    Serial.begin(115200);
    while (! Serial);
    Serial.print("\n");
    Serial.print("Presiona la amplitud...");
    Serial.flush();
  /*
    baton = xSemaphoreCreateMutex();                                                                            // E
    // A viewer suggested to use :     &codeForTask1, because his ESP crashed
    xTaskCreatePinnedToCore(&codeForTask1, "led1Task", 1000, NULL, 1, &Task1, 0);                               // F
    delay(500);  // needed to start-up task1
    xTaskCreatePinnedToCore(&codeForTask2, "led2Task", 1000, NULL, 1, &Task2, 1);                               // F
    */
  }


  void loop() {
    //delay(10);
    //vTaskDelete(NULL);   // G

     if (Serial.available() > 0)
  {
    String str = Serial.readStringUntil('\n');
    float A = str.toFloat();
    Serial.print("\n");
    Serial.print("A="); Serial.println(A);
    Serial.println();
    w = 2 * pi * f;
    //long comenzar = micros(); //empieza a contar
    for ( int i = 0; i < lon ; i++)
    {
      t[i] = t[i] + i;
      data[i] = (A * 0.5) + A * 12 * sin ( w * t[i] / 10) + A * 6 * sin (3 * w * t[i] / 10) + A * 3 * sin (5 * w * t[i] / 10) + A * 1.5 * sin (12 * w * t[i] / 10);
      //Serial.println(data[i]);

      }
    xTaskCreatePinnedToCore(&codeForTask1, "FFTSeno", 6000, NULL, 0, &Task1, 0);                               // F
    delay(500);  // needed to start-up task1
    Serial.println();
    xTaskCreatePinnedToCore(&codeForTask2, "FFTcuadr", 6000, NULL, 1, &Task2, 1);
    
    }

      /*
    baton = xSemaphoreCreateMutex();                                                                            // E
    // A viewer suggested to use :     &codeForTask1, because his ESP crashed

    xTaskCreatePinnedToCore(&codeForTask2, "FFTcuadr", 6000, NULL, 1, &Task2, 1);                               // F
    */
  }
