float x = 0;
float[] lineCordinates = {100, 175, 200, 25}; // array storing the x1 y1 x2 y2 of the line

void setup() {
  // Create canvas to work on
  size(600, 200);
  //create an ellipse to start offscreen
  fill(255);
  background(255);
  frameRate(60);
}

void draw() {
  x += 1;
  if (x % 40 == 0) {
    line(lineCordinates[0] + x, lineCordinates[1], lineCordinates[2] + x, lineCordinates[3]);
  }
  if (lineCordinates[1] + x >= 600) { // check if the lines have exceeded the width of the screen and redraw the animation
    x = 0;
    background(255);
    line(lineCordinates[0], lineCordinates[1], lineCordinates[2], lineCordinates[3]);
  }
  println("In draw function, x has this value: ");
  println(x);
}
