// Grace
// 2-4
// Unit 2 Checkpoint 1 Sketch 2

int x = 350;

void setup () {
 size (300, 300);
 strokeWeight(2);
}

void draw () {
  background(255);
  ellipse(x, 150, 100, 100);
  x = x - 1;
  
  if (x < -50) {
   x = 350; 
  }
}
