//メディア芸術プログラム
//P-2 : 画像を複数表示する1
//2014.8.2

PImage photo0;
PImage photo1;
PImage photo2;
PImage photo3;

//準備する
void setup() {

  //画面のサイズ
  size(800, 600);

  //変数photoに、「photo_x.jpg」を読み込む
  photo0 = loadImage("photo_0.jpg");
  photo1 = loadImage("photo_1.jpg");
  photo2 = loadImage("photo_2.jpg");
  photo3 = loadImage("photo_3.jpg");

  //フレームレートの設定
  frameRate(8);
}

//画面を表示する
void draw() {

  //画像を画面に表示する
  image(photo0, 0, 0, 400, 300);
  image(photo1, 400, 0, 400, 300);
  image(photo2, 0, 300, 400, 300);
  image(photo3, 400, 300, 400, 300);
}

