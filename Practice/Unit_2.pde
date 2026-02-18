// Grace Jheeta
// Block 2-4
// Unit 2, Tue Feb 17, 2026

int x;
int y = 600;
int width;

void setup() {
  size(600, 600);
  width = 500;
}

void draw() {
  background(255);
  ellipse(x, y, width, 200);
  x = x + 5;
  y = y - 5;
  
}
