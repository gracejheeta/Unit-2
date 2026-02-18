// Grace
// 2-4
// Checkpoint 1 Sketch 5

int x = 0;
int width = 0;
int height = 0;

void setup () {
 size(300, 300);
 strokeWeight(2);

}

void draw () {
  background(255);
  ellipse(x, 150, width, height);
  
  x = x + 5;
  width = width + 1;
  height = height + 1;
  
  if (x > 350) {
    x = 0;
    width = 0;
    height = 0;
  }
}
