//メディア芸術プログラム
//P-8 : 見えない画面でアニメーション 2
//2014.8.2

//画像をいれる変数
PImage[] photo = new PImage[4];

//みえない画面をいれる変数
PGraphics[] canvas = new PGraphics[2];

//キーによって切り替わる変数
int[] status = new int[2];

//画像の番号
int[] photoNumber = new int[2];



//準備する
void setup() {
  //画面のサイズ
  size(800, 600);

  //変数canvasに、400*600pixelのグラフィックをつくる
  canvas[0] = createGraphics(400, 600);
  canvas[1] = createGraphics(400, 600);

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

  //アニメーション再生／逆再生
  if (status[0]==0) {
    photoNumber[0] = photoNumber[0] + 1;
    if (photoNumber[0] > 3 ) {
      photoNumber[0] = 3;
    }
  } else if (status[0]==1) {
    photoNumber[0] = photoNumber[0] - 1;
    if (photoNumber[0] < 0 ) {
      photoNumber[0] = 0;
    }
  }

  if (status[1]==0) {
    photoNumber[1] = photoNumber[1] + 1;
    if (photoNumber[1] > 3 ) {
      photoNumber[1] = 3;
    }
  } else if (status[1]==1) {
    photoNumber[1] = photoNumber[1] - 1;
    if (photoNumber[1] < 0 ) {
      photoNumber[1] = 0;
    }
  }


  //みえない画面canvas[0]、描画はじめ
  canvas[0].beginDraw();
  //みえない画面canvas[0]に、photoを描く
  canvas[0].image(photo[photoNumber[0]], 0, 0);
  //みえない画面canvas[0]、描画おわり
  canvas[0].endDraw();

  //みえない画面canvas[1]、描画はじめ
  canvas[1].beginDraw();
  //みえない画面canvas[1]に、photoを描く
  canvas[1].image(photo[photoNumber[1]], 0, 0);
  //みえない画面canvas[1]、描画おわり
  canvas[1].endDraw();

  //メイン画面に、canvas[0]を表示
  image(canvas[0], 0, 0);
  //canvas[1]は、横に400ずらして表示
  image(canvas[1], 400, 0);
}

//キーボードを押したとき
void keyPressed() {
  //もしもキーが'a'だったら
  if (key=='a') {
    status[0]=0;
    status[1]=1;
  }
  //もしもキーが's'だったら
  if (key=='s') {
    status[0]=1;
    status[1]=0;
  }
}

