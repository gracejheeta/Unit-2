// Grace
// 2-4
// Advanced animation practice

//variables
int shapeX = 95;
int shapeAngle = 1;
int vx = 3;

void setup() {
  size (600, 600, P2D);
}

void draw() {
  background(0, 100, 200);
  shape(shapeX, 200, shapeAngle);
  shapeX = shapeX + vx;
  
  //bouncing off left and right walls
  if (shapeX > 505) {
    vx = -3;
  }
  
  if (shapeX < 95) {
   vx = 3; 
  }
  
  //rotating
  shapeAngle = shapeAngle + 5;
  
  // random rectangle
  rect(500, 500, 100, 100);
}
// end draw

void shape(int x, int y, int angle) {
  pushMatrix(); // begin transformations
  translate(x, y); 
  rotate(radians(angle));
  
  ellipse(0, 0, 200, 200);
  ellipse(0, 0, 150, 150);
  ellipse(0, 0, 100, 100);
  ellipse(0, 0, 75, 75);
  ellipse(0, 0, 50, 50);
  ellipse(0, 0, 25, 25);
  ellipse(0, 0, 10, 10);
  rect(0, 0, x, y);
  
  popMatrix(); // end transformations
}
// end shape
