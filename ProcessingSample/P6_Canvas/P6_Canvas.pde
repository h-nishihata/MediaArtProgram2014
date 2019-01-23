//メディア芸術プログラム
//サンプルプログラム1
//キーボードでアニメーション
//2014.8.2


//画像の枚数を指定する変数
//ここだけ変えれば、以下のプログラムに全て適用されるように
int photoMax = 4;

//画像をいれる変数を”配列”に
PImage[] photo = new PImage[photoMax];

//キーによって切り替わる変数
int status;
//画像の番号
int photoNumber;

//準備する
void setup() {

  //画面のサイズ
  size(800, 600);

  //変数photoに、「photo_x.jpg」を読み込む
  for (int i=0; i<= (photoMax-1); i++) {
    photo[i] = loadImage("photo_"+i+".jpg");
  }  
  //フレームレートの設定
  frameRate(8);
}

//画面を表示する
void draw() {
  if (status==0) {
    photoNumber = photoNumber + 1;
    if (photoNumber > (photoMax-1)) {
      photoNumber = (photoMax-1);
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
