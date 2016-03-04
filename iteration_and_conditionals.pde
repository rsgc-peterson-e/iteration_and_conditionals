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
  if (x % 10 == 0) {
    line(3 * x + lineCordinates[0], lineCordinates[1], 3 * x + lineCordinates[2], lineCordinates[3]); // multiply x by three to increase distance between lines and add the existing line coordinates
  }
  if (3 * x + lineCordinates[0] >= 600) { // check if the lines have exceeded the width of the screen and redraw the animation
    background(255);
    x = 0;
  }
  println("In draw function, x has this value: ");
  println(x);
}
