// Grace Jheeta
// Unit 2 Project
// 2-4

int rotateEarth;
float scaleEarth = 1;
float vEarth = -0.03;


int asteroidX = 475;
int asteroidY = 0;

int explosionX;
int explosionY;

void setup() {
  size(600, 600, P2D);
}

void draw() {
  background(#17236C);

  //stars
  star(int(random(600)), int(random(600)));
  star(int(random(600)), int(random(600)));
  star(int(random(600)), int(random(600)));
  star(int(random(600)), int(random(600)));

  //earth
  earth(0, 0, rotateEarth, scaleEarth);
  rotateEarth++;

  //explosion
  explosion(explosionX, explosionY);

  // asteroid
  asteroid(asteroidX, asteroidY);

  asteroidX -= 2;
  asteroidY += 2;

  if (asteroidX <= 250) {
    scaleEarth = scaleEarth + vEarth;
  }
  
  if (scaleEarth <= 0) {
      vEarth = 0;
      explosionX +=2;
      explosionY +=2;
   }
  
}

void earth(int x, int y, int degree, float size) {
  pushMatrix();
  translate(150, 300);
  rotate(radians(degree));
  scale(size);

  //planet
  strokeWeight(5);
  fill(#1B67CE);
  ellipse(x, y, 200, 200);

  //continents
  fill(#408343);
  noStroke();
  ellipse(x + 30, y + 30, 50, 50);
  ellipse(x + 35, y + 50, 20, 40);

  ellipse(x - 20, y - 20, 70, 50);
  ellipse(x - 30, y + 5, 40, 20);
  ellipse(x - 50, y - 5, 30, 30);

  ellipse(x + 60, y - 30, 40, 40);
  ellipse(x + 70, y - 20, 30, 30);

  ellipse(x - 50, y + 50, 50, 20);
  ellipse(x - 60, y + 60, 30, 20);
  popMatrix();
}

void star(int x, int y) {
  fill(255);
  ellipse(x, y, 3, 3);
}

void asteroid(int x, int y) {
  fill(#CE4E13);
  ellipse(x, y, 50, 50);
  triangle(x + 25, y + 5, x - 5, y - 25, x + 50, y - 50);

  fill(#F2BF51);
  ellipse(x, y, 30, 30);
  triangle(x + 15, y + 5, x - 5, y - 15, x + 30, y - 30);
}

void explosion(int w, int h) {
  fill(#CE4E13);
  ellipse(150, 300, w, h);
}
