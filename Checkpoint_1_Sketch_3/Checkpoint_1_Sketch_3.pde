// Grace
// 2-4
// Checkpoint 1 Sketch 3

int width = 0;
int height = 0;

void setup () {
  size(300, 300);
  strokeWeight(2);
}

void draw () {
  background(255);
  ellipse(150, 150, width, height);
  
  width = width + 1;
  height = height + 1;
  
  if (width > 400) {
    width = 0;
    height = 0;
  } 
}
