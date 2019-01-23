//メディア芸術プログラム
//A3 : 光センサでキーボード
//2014.8.2

//ピン対応
int sensor1 = A0;
int sensor2 = A3;

int led1 = 3;
int led2 = 13;

int pot1 = A5;
int pot2 = A4;


void setup(){
  //左のセンサ用
  pinMode(sensor1,INPUT_PULLUP);
  //右のセンサ用
  pinMode(sensor2,INPUT_PULLUP);

  Keyboard.begin();
}

void loop(){

  //左のセンサとLED
  if(analogRead(sensor1) > analogRead(pot1)){
    //LED明るさを最大に
    analogWrite(led1,255);

    //キーボード 'a'
    Keyboard.write('a');
    //連続して送信されるので0.1秒まつことに
    delay(100);
  }
  else{
    //LED明るさを最小に
    analogWrite(led1,0);
  }

  //右のセンサとLED
  if(analogRead(sensor2) > analogRead(pot2)){
    //LED明るさを最大に
    analogWrite(led2,255); 

    Keyboard.write('s');
    //連続して送信されるので0.1秒まつことに
    delay(100);
  }
  else{
    //LED明るさを最小に
    analogWrite(led2,0);
  }
}



