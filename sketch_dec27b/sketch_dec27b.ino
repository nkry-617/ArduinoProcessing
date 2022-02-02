

int val = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  // センサーの値を取得
  val = analogRead(0);

  // 一度に送れるデータ(1byte)に変換
  map(val, 0, 1023, 0, 255);

  // シリアルデータ送信
  Serial.write(val);

  delay(50);
}
