float x = 0;
float[] lineCordinates = {30, 175, 200, 25}; // array storing the x1 y1 x2 y2 of the line

void setup() {
  // Create canvas to work on
  size(600, 200);
  fill(255);
  background(255);
}

void draw() {
  x += 1;

  if (3 * x + lineCordinates[0] >= 600) { // check if the lines have exceeded the width of the screen and redraw the animation
    background(255);
    x = 0;
  }
  println("In draw function, x has this value: ");
  println(x);
  strokeWeight(0.5);
  arrow(575, height/2, 40, 20);
  strokeWeight(1);
}

void arrow(int lx, int ly, int distX, int distY) {
  line(lx, ly, lx + distX, ly + distY);
  line(lx, ly, lx + distX, ly - distY);
}
