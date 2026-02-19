// Grace
// 2-4
// Advanced animation practice

int shapeX = 0;

void setup() {
  size (600, 600, P2D);
}


void draw() {
  background(0, 100, 200);
  shape(shapeX, 200);
  shapeX = shapeX + 5;
  
  if (shapeX > 600) {
    shapeX = 0;
  }
  
  rect(500, 500, 100, 100);
}


// end draw

void shape(int x, int y) {
  pushMatrix(); // begin transformations
  translate(x, y); // this is cool
  rotate(PI + QUARTER_PI);
  
  ellipse(0, 0, 200, 200);
  ellipse(0, 0, 150, 150);
  ellipse(0, 0, 100, 100);
  ellipse(0, 0, 75, 75);
  ellipse(0, 0, 50, 50);
  ellipse(0, 0, 25, 25);
  ellipse(0, 0, 10, 10);
  rect(0, 0, 200, 200);
  
  popMatrix(); // end transformations
}

// end shape
