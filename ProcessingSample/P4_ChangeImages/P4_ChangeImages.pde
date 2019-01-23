//メディア芸術プログラム
//P-4 : キーボードで画像を表示
//2014.8.2

PImage[] photo = new PImage[4];

//準備する
void setup() {

  //画面のサイズ
  size(800, 600);

  //変数photoに、「photo_x.jpg」を読み込む
  photo[0] = loadImage("photo_0.jpg");
  photo[1] = loadImage("photo_1.jpg");
  photo[2] = loadImage("photo_2.jpg");
  photo[3] = loadImage("photo_3.jpg");

  //フレームレートの設定
  frameRate(8);
}

//画面を表示する
void draw() {

  //画像を画面に表示する
  image(photo[0], 0, 0, 400, 300);
  image(photo[1], 400, 0, 400, 300);
  image(photo[2], 0, 300, 400, 300);
  image(photo[3], 400, 300, 400, 300);
}

