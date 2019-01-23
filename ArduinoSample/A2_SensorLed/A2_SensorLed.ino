//メディア芸術プログラム
//A2 : 光センサでLED
//2014.8.2

void setup(){
  //左のセンサ用 A0
  pinMode(A0,INPUT_PULLUP);
  //右のセンサ用 A3
  pinMode(A3,INPUT_PULLUP);
}

void loop(){
  //左のセンサとLED
  //A0 -- 光センサ、A5 -- ツマミ
  if(analogRead(A0) > analogRead(A5)){
    //LED明るさを最大に
    analogWrite(3,255); 
  }
  else{
    //LED明るさを最小に
    analogWrite(3,0);
  }

  //右のセンサとLED
  //A3 -- 光センサ、A4 -- ツマミ
  if(analogRead(A3) > analogRead(A4)){
    //LED明るさを最大に
    analogWrite(13,255); 
  }
  else{
    //LED明るさを最小に
    analogWrite(13,0);
  }
}



