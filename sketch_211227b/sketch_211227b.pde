import processing.serial.*;

Serial port;

float x;
float y;

int in_data;

void setup() {
  size(700, 700);
  port = new Serial(this, "COM6", 9600);
  background(0, 0, 0);
}

void draw() {
  // 描画エリア設定
 // background(255);
 //半透明の四角形
  fill(255,10);
  noStroke();
  rect(0, 0, width, height);

  // シリアルポートからデータを受け取ったら
  if (port.available() > 0 ) {
    // シリアルデータ受信
    in_data = port.read();

    // 描画
    x = width  / 2 + random(-3, 3);
    y = height / 2 + random(-3, 3);

    noFill();

    stroke(random(255), random(255), 255);

    ellipse(x, y, in_data, in_data);
  }
}
