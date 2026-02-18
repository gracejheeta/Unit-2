// Grace
// 2-4
// Checkpoint 1 Sketch 4

int x = -50;
int y = -50;

void setup () {
  size(300, 300);
  strokeWeight(2);
}

void draw () {
  background(255);
  ellipse(x, y, 100, 100);
  
  x ++;
  y ++;
  
  if (x > 400) {
    x = -50;
    y = -50;
  }
}
