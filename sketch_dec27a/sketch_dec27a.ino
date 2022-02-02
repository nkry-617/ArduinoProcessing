
#define led LED_BUILTIN    // 内蔵LED

void setup() {
  Serial.begin(9600);
  pinMode(led, OUTPUT);   // LEDを出力用に
}

void loop() {
  // シリアルポートからデータを受け取ったら
  if (Serial.available() > 0) {

    // 受信したデータを読み込む
    char data = Serial.read();

    // データが'1'ならLED点灯
    if (data == '1') {
      digitalWrite(led, HIGH);
    }

    // データが'0'ならLED消灯
    if (data == '0') {
      digitalWrite(led, LOW);
    }
  }
}
