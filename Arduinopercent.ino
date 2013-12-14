/*converts to kg measurement then to percent*/

// Define bridge excite digital IO lines
#define D0 3
#define D1 2

// Use ADC port 0
#define AN0 0

// Delain in microseconds to allow signal to settle 
// after excite polarity reversal
#define DELAY 800

float percent;
float kgweight;

void setup()   {

  Serial.begin(9600); 

  pinMode(D0, OUTPUT);
  pinMode(D1, OUTPUT);


}

void loop()
{
  if(Serial.available() && Serial.read() == 'r') {
    if(measure() <=135){
      kgweight=0.03*measure()+3.72;
    }
    else{
      kgweight=0.07*measure()-1.98;
    }

    if(kgweight<4){
      percent=0;
    }
    else if(kgweight>27){
      percent=100;
    }
    else{
      percent=100*(kgweight-4)/27;
    }

    Serial.println(percent);
    //Serial.println ( 1);
    //    delay (10);
  }

}

int measure () {
  int i,a0,a1;
  long s;
  for (i = 0; i < 256; i++) {
    digitalWrite (D0,HIGH);
    digitalWrite (D1,LOW);
    delayMicroseconds(DELAY);
    a0 = analogRead(AN0);

    // reverse polarity
    digitalWrite (D0,LOW);
    digitalWrite (D1,HIGH);
    delayMicroseconds(DELAY);
    a1 = analogRead(AN0);

    s += (long) (a0 - a1);

  } // next i


  // As there is a large number of samples being averaged we
  // can probably extract another bit or two from the ADC.
  // Going to be conservative and going for one extra bit.
  // So instead of dividing by 256, will divide by just 128
  // instead (ie right shift 7 bits).
  return s>>7;
}
