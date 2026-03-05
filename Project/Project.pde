// Grace Jheeta
// Unit 2 Project
// 2-4

int testScore = int(random(100));


int testX = 200;
int testY = 200;

float vSize = 0.5;
float wordSize = 0;


void setup() {
  size(600, 600);
}

void draw() {
  background(100, 100, 255);
  test(testX, testY, testScore);
wordSize = wordSize + vSize;

  if (testScore < 50) {
    textSize(wordSize);
    text("FAIL", testX + 40, testY + 100);

    if (wordSize == 20) {
      vSize = 0;
    }
  }
}

void test(int x, int y, int score) {
  fill(255);
  rect(x, y, 120, 150);
  fill(0);
  textSize(20);

  text("Test", x + 40, y + 35);

  text(score + "%", x + 40, y + 60);
}
