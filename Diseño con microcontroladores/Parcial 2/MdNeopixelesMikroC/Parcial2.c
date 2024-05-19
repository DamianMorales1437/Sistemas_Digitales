void one(){
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 0;
}

void zero(){
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 1;
     LATA.F5 = 0;
     LATA.F5 = 0;
}

void green(){
     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();
     
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
}
 void greend(){
      zero();
      one();
      one();
      one();
      one();
      one();
      zero();
      one();
      
      zero();
      zero();
      zero();
      zero();
      one();
      one();
      one();
      one();
      
      zero();
      zero();
      zero();
      zero();
      one();
      zero();
      one();
      one();
 }
 
void red(){
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     
     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();
     
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
}



void blue(){
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         
         one();
         one();
         one();
         one();
         one();
         one();
         one();
         one();
}


 
void pink(){
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();

         one();
         one();
         one();
         one();
         one();
         one();
         one();
         one();

         one();
         one();
         one();
         one();
         one();
         one();
         one();
         one();
}


void lightblue(){
         one();
         one();
         one();
         one();
         one();
         one();
         one();
         one();

         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();
         zero();

         one();
         one();
         one();
         one();
         one();
         one();
         one();
         one();
}

void yellow(){
     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();

     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();

     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
}


void white(){
     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();

     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();

     one();
     one();
     one();
     one();
     one();
     one();
     one();
     one();
}

void black(){
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();

     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();

     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
     zero();
}

void paleta(){
     white();
     black();
     red();
     blue();
     yellow();
     green();
     pink();
     lightblue();
}

void Colombia(){
     short m = 0;
     m=0;
     while(m < 32){
       yellow();
       m++;
     }
     m=0;
     while(m < 16){
       blue();
       m++;
     }
     m=0;
     while(m < 16){
       red();
       m++;
     }
     m=0;
}

void flecha(){
     short m = 0;
     while(m < 12){
       white();
       m++;
     }
     m=0;
     black();
     m=0;
     while(m < 7){
       white();
       m++;
     }
     m=0;
     while(m < 2){
       black();
       m++;
     }
     m=0;
     while(m < 3){
       white();
       m++;
     }
     m=0;
     while(m < 6){
       black();
       m++;
     }
     m=0;
     while(m < 2){
       white();
       m++;
     }
     m=0;
     while(m < 6){
       black();
       m++;
     }
     m=0;
     while(m < 5){
       white();
       m++;
     }
     m=0;
     while(m < 2){
       black();
       m++;
     }
     m=0;
     while(m < 6){
       white();
       m++;
     }
     m=0;
     red();//black();
     while(m < 11){
       white();
       m++;
     }
}

void E3Tlogo(){
         short m = 0;
         while(m<8){
                white();
                m++;

         }
         m=0;
         while(m<3){
                white();
                m++;
         }
          m=0;
         while(m<5){
                black();
                m++;
         }
          m=0;
         white();
         while(m<4){
                yellow();
                m++;
         }
          m=0;
          black();
          white();
          white();
         while(m<4){
                black();
                m++;
         }
          m=0;
          yellow();
          black();
          white();
          white();
          black();
         while(m<4){
                yellow();
                m++;
         }
          m=0;
          black();
          white();
          white();
         while(m<4){
                black();
                m++;
         }
          m=0;
          yellow();
          black();
          white();
          white();
          black();
         while(m<4){
                yellow();
                m++;
         }
         white();
         white();
         white();
         m=0;
         while(m<4){
                black();
                m++;
         }
         m=0;
         while(m<4){
                white();
                m++;
         }
}

void U(){
     short n=0;
     short m=0;
     while(n<6){
            m=0;
            green();
            green();
            while(m<4){
               white();
               m++;
            }
            green();
            green();
            n++;
     }
     m=0;
     while(m<8){
            green();
            m++;

     }
     m=0;
     white();
     while(m<6){
            green();
            m++;
     }
     m=0;
     white();

}

void I(){
     short n=0;
     short m=0;
     while(n<8){
            m=0;
            while(m<3){
               white();
               m++;
            }
            green();
            green();
            m=0;
            while(m<3){
               white();
               m++;
            }
            n++;
     
     }
     m=0;
     n=0;


}

void Sletra(){
     short m=0;
     white();
      while(m<6){
            green();
            m++;
      }
      white();
      m=0;
      while(m<8){
            green();
            m++;
      }
      m=0;
      green();
      green();
      while(m<6){
            white();
            m++;
      }
      m=0;
      while(m<7){
            green();
            m++;
      }
      white();
      m=0;
      white();
      white();
      while(m<6){
            green();
            m++;
      }
      m=0;
      green();
      while(m<5){
            white();
            m++;
      }
      green();
      green();
      m=0;
      while(m<8){
            green();
            m++;
      }
      m=0;
      white();
      while(m<6){
            green();
            m++;
      }
      white();
      m=0;
      

}

void minecraft(){
     short n = 0;
     short m = 0;
     while(m<17){
       black();
       m++;
     }
     m = 0;
     while(n<2){
       green();
       black();
       green();
       while(m<2){
         black();
         m++;
       }
       m = 0;
       n++;
     }
     n = 0;
     while(m<2){
       green();
       m++;
     }
     m = 0;
     while(m<2){
       black();
       m++;
     }
     m = 0;
     while(m<2){
       green();
       m++;
     }
     m = 0;
     while(n<2){
       white();
       while(m<4){
         green();
         m++;
       }
       m = 0;
       n++;
     }
     n = 0;
     while(m<2){
       white();
       m++;
     }
     m = 0;
     while(m<6){
       green();
       m++;
     }
     m = 0;
     while(m<2){
       black();
       m++;
     }
     m = 0;
     while(m<11){
       green();
       m++;
     }
     m = 0;
}

void corazon(){
     short m = 0;
     while(m<9){
        black();
        m++;
     }
     m = 0;
     while(m<2){
        red();
        m++;
     }
     m = 0;
     while(m<2){
        black();
        m++;
     }
     m = 0;
     while(m<2){
        red();
        m++;
     }
     m = 0;
     black();
     while(m<24){
        red();
        m++;
     }
     m = 0;
     black();
     while(m<6){
        red();
        m++;
     }
     m = 0;
     while(m<3){
        black();
        m++;
     }
     m = 0;
     while(m<4){
        red();
        m++;
     }
     m = 0;
     while(m<5){
        black();
        m++;
     }
     m = 0;
     while(m<2){
        red();
        m++;
     }
     m = 0;
     while(m<3){
        black();
        m++;
     }
     m = 0;
}

void yoshi(){
    short m=0;
    while(m<5){
    white();
    m++;
    }
    black();
    black();
    white();
    white();
    black();
    black();
    m=0;
    while(m<9){
     white();
     m++;
    }     //linea 1
    black();
    green();
    green();
    black();
    black();
    green();
    green();
    black();
    m=0;
    while(m<7){
     white();
     m++;
    }                   //linea 2
    black();
    green();
    white();
    white();
    green();
    green();
    white();
    white();
    green();
    black();
    m=0;
    while(m<3){
     white();
     m++;
    }               //linea 3
    m=0;
    while(m<3){
     white();
     m++;
    }
    black();
    white();
    white();
    black();
    white();
    white();
    black();
    white();
    white();
    black();
    m=0;
    while(m<3){
     white();
     m++;
    }              //linea 4
    m=0;
    while(m<3){
     white();
     m++;
    }
    black();
    white();
    white();
    black();
    white();
    white();
    black();
    white();
    white();
    black();
    m=0;
    while(m<3){
     white();
     m++;
    }           //linea 5
    white();
    white();
    black();
    black();
    white();
    m=0;
    while(m<6){
    black();
    m++;
    }
    white();
    black();
    black();
    white();
    white(); //linea 6
    
    white();
    black();
    green();
    green();
    black();
    m=0;
    while(m<5) {
          green();
          m++;
     }
    greend();
    black();
    green();
    green();
    black();
    white();
    //linea 8 de yoshi
    black();
    green();
    green();
    black();
    m=0;
    while(m<7) {
          green();
          m++;
     }
    greend();
    black();
    green();
    green();
    black();
    //linea 9 de yoshi
    black();
    white();
    black();
    m=0;
    while(m<3) {
          green();
          m++;
     }
     black();
     green();
     green();
     black();
     green();
     green();
     greend();
     black();
     white();
     black();
     //linea 10 de yoshi
     black();
     white();
     black();
     m=0;
     while(m<9) {
          green();
          m++;
     }
     greend();
     black();
     white();
     black();
     //linea 11 de yoshi
     black();
     white();
     black();
     m=0;
     while(m<9) {
          green();
          m++;
     }
     greend();
     black();
     white();
     black();
   m = 0;
    //linea 12
    black();
    white();
    black();
    greend();
    while(m<7){
    	green();
    	m++    ;
    }
    m=0;
    greend();
    greend();
    black();
    white();
    black();

    //linea 13
    black();
    black();
    black();
    greend();
    greend();

    while(m<5){
    	green();
    	m++;
    }
    m=0;
    while(m<3){
    	greend();
    	m++   ;
    }
    m=0;
    black();
    black();
    black();

    //linea 14
    white();
    black();
    white();
    black();
    while(m<8){
    	greend();
    	m++;
    }
    m=0;
    black();
    white();
    black();
    white();

    //linea 15
    white();
    white();
    black();
    black();
    black();
    while(m<6){
    	greend();
    	m++;
    }
    m=0;
    black();
    black();
    black();
    white();
    white();

    //linea 16
    while(m<4){
    	white();
    	m++;
    }
    m=0;
    while(m<8){
    	black();
    	m++;
    }
    m=0;
    while(m<4){
    	white();
    	m++;
    }
    m=0;

}


void main(){
TRISA = 0;
ANSELA = 0;
LATA = 0;
OSCCON = 0b11110011;

  while(1){
     yoshi();
     //E3Tlogo();
     //U();
     //I();
     //Sletra();

  }
}