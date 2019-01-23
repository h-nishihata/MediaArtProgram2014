//メディア芸術プログラム
//P-5 : キーボードでアニメーション
//2014.8.2

//画像をいれる変数を”配列”に
PImage[] photo = new PImage[4];

//キーによって切り替わる変数
int status;
//画像の番号
int photoNumber;

//準備する
void setup() {

  //画面のサイズ
  size(800, 600);

  //変数photoに、「photo_0.jpg」を読み込む
  photo[0] = loadImage("photo_0.jpg");
  photo[1] = loadImage("photo_1.jpg");
  photo[2] = loadImage("photo_2.jpg");
  photo[3] = loadImage("photo_3.jpg");
  
  //フレームレートの設定
  frameRate(8);
}

//画面を表示する
void draw() {
  if (status==0) {
    photoNumber = photoNumber + 1;
    if (photoNumber > 3 ) {
      photoNumber = 3;
    }
  } else if (status==1) {
    photoNumber = photoNumber - 1;
    if (photoNumber < 0 ) {
      photoNumber = 0;
    }
  }
  //画像を画面に表示する
  image(photo[photoNumber], 0, 0);
}

//キーボードを押したとき
void keyPressed() {
  //もしもキーが'a'だったら
  if (key=='a')
    status=0;
  //もしもキーが's'だったら
  if (key=='s')
    status=1;
}
