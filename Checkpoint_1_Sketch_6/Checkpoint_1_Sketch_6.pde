// Grace
// 2-4
// Checkpoint 1 Sketch 6

int y1 = -50;
int y2 = 350;

void setup () {
  size(300, 300);
  strokeWeight(2);
}

void draw () {
  background(255);
  ellipse(75, y1, 100, 100);
  y1 = y1 + 1;
  
  if (y1 > 350) {
   y1 = -50; 
  }
  
  ellipse(225, y2, 100, 100);
  y2 = y2 - 1;
  
  if (y2 < -50) {
    y2 = 350;
  }
}
