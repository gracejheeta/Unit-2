// Grace
// 2-4
// Unit 2 Checkpoint 2

int randallX = 150;
int randallY = 195;
int randallAngle;
int randallScale = 1;

int vx = 3;
int vy = 3;

void setup() {
  size(800, 800, P2D);
}
// end setup

void draw() {
  background(#00488E);
  Randall(randallX, randallY, randallAngle, randallScale);

  randallX += vx;
  randallY += vy;
  randallAngle ++;


  if (randallX >= 660 || randallX <= 150) {
    randallScale = 0;

    if (randallX <= 150) {
      vx = 3;
    }
    if (randallX >= 660) {
      vx = -3;
    }
  }

  if (randallX <= 600 && vx < 0) {
    randallScale = 1;
  }

  if (randallX >= 210 && vx > 0) {
    randallScale = 1; 
  }



  if (randallY >= 665) {
    vy = -3;
  }

  if (randallY <= 150) {
    vy = 3;
  }
}
// end draw

void eye(int x, int y) {
  strokeWeight(5);
  fill(#BFAADE);
  ellipse(x, y, 70, 70);
  fill(255);
  ellipse(x, y, 70, 40);
  fill(#4C671D);
  ellipse(x, y, 40, 40);
  fill(0);
  ellipse(x, y, 20, 20);
}

void teeth(int x, int y) {
  fill(#E8D381);
  stroke(#2A0C55);
  rect(x, y, 30, 30);
}

void frond(int x, int y) {
  fill(#BFAADE);
  ellipse(x, y, 20, 100);
}

void Randall(int x, int y, int angle, int scale) {

  pushMatrix();
  translate(x, y);
  rotate(radians(angle));
  scale(scale);

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
  teeth(-135, 40);
  teeth(105, 40);
  teeth(0, 80);
  teeth(30, 75);
  teeth(60, 65);
  teeth(90, 55);
  teeth(-30, 80);
  teeth(-60, 75);
  teeth(-90, 65);
  teeth(-120, 55);

  //eyes
  eye(-60, -20);
  eye(60, -20);

  //fronds
  frond(-10, -100);
  frond(20, -120);
  frond(50, -140);

  popMatrix();
}

// end Randall
