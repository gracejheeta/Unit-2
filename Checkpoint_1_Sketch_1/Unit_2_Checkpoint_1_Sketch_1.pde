// Grace
// 2-4
// Unit 2 Checkpoint 1 Sketch 1

int y;

void setup () {
 size(300, 300); 
 y = 0;
 strokeWeight(2);
}

void draw() {
  background(255);
  ellipse(150, y, 100, 100);
  y = y + 1;
  
  if (y > 400) {
   y = 0; 
  }
}
