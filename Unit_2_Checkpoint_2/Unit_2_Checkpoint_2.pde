// Grace
// 2-4
// Unit 2 Checkpoint 2

void setup() {
  size(800, 800);
}
// end setup

void draw() {
  Randall();
}
// end draw

int teethHeight;

void teeth(int x, int y) {
  fill(255);
  stroke(#2A0C55);
  rect(x, y, 30, teethHeight);

  if (x > 60 || x < -60) {
    teethHeight = 60;
  } else if (x > 30 || x < -30) {
    teethHeight = 80;
  } else {
    teethHeight = 30;
  }
}

void Randall() {
  pushMatrix();
  translate(400, 400);

  //face
  fill(#BFAADE);
  strokeWeight(5);
  stroke(#2A0C55);
  ellipse(0, 0, 300, 250);

  //mouth
  fill(0);
  ellipse(0, 10, 270, 200);

  noStroke();
  fill(#BFAADE);
  ellipse(0, -10, 290, 175);

  //teeth
  teeth(0, 80);


  popMatrix();
}
// end Randall
