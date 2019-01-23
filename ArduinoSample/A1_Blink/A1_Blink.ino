//メディア芸術プログラム
//A1 : LEDの点滅
//2014.8.2

void setup(){

}

void loop(){
  //LED明るさを最大に
  analogWrite(3,255); 
  //0.1秒まつ
  delay(100);
  //LED明るさを最小に
  analogWrite(3,0);
  //0.1秒まつ
  delay(100);

  //LED明るさを最大に
  analogWrite(13,255); 
  //0.1秒まつ
  delay(100);
  //LED明るさを最小に
  analogWrite(13,0);
  //0.1秒まつ
  delay(100);
}





