float x = 0;
float arrowX = 600;

void setup() {
  // Create canvas to work on
  size(600, 200);
  fill(255);
  background(255);
}

void draw() {
  x -= 1;
  println("In draw function, x has this value: ");
  println(x);
  if (x == -200) {
    x = 0;
    background(255);
  }
  if (x % 10 == 0) { // draw arrow every time x has decrimented 10 times
    arrow(3 * x + arrowX, height/2, 120, 60);
  }
}

void arrow(float lx, int ly, int distX, int distY) {
  line(lx, ly, lx + distX, ly + distY);
  line(lx, ly, lx + distX, ly - distY);
}
