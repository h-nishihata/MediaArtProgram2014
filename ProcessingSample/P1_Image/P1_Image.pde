//メディア芸術プログラム
//P-1 : 画像を表示する
//2014.8.2

//画像をいれる変数
PImage photo;

//準備する
void setup() {

  //画面のサイズ
  size(800, 600);

  //変数photoに、「photo_0.jpg」を読み込む
  photo = loadImage("photo_0.jpg");
}

//画面を表示する（およそ毎秒60回）
void draw() {

  //画像を画面に表示する
  image(photo, 0, 0);
}

