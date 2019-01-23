//メディア芸術プログラム
//P-9 : プログラムを整理する
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
  for (int i=0; i<= 3; i++) {
    photo[i] = loadImage("photo_"+i+".jpg");
  }

  //フレームレートの設定
  frameRate(15);
}

//画面を表示する
void draw() {

  for (int i=0; i<=1; i++) {
    if (status[i]==0) {
      photoNumber[i] = photoNumber[i] + 1;
      if (photoNumber[i] > 3 ) {
        photoNumber[i] = 3;
      }
    } else if (status[i]==1) {
      photoNumber[i] = photoNumber[i] - 1;
      if (photoNumber[i] < 0 ) {
        photoNumber[i] = 0;
      }
    }

    //みえない画面canvas
    canvas[i].beginDraw();
    canvas[i].image(photo[photoNumber[i]], 0, 0);
    canvas[i].endDraw();

    //メイン画面に、canvasを表示
    image(canvas[i], i*400, 0);
  }
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

