
import processing.serial.*;

Serial port;

void setup() {
  size(700, 700);
  background(0,0,0);
  port = new Serial(this, "COM6", 9600);
}

void draw() {
  // マウスの左クリックボタンが押されたらシリアルポートに'1'を送信
  if (mousePressed && (mouseButton == LEFT)) {
    port.write('1');
    println("left");
    background(255,255,255);
  }

  // マウスの右クリックボタンが押されたらシリアルポートに'0'を送信
  if (mousePressed && (mouseButton == RIGHT)) {
    port.write('0');
    println("right");
    background(0,0,0);
  }
}
