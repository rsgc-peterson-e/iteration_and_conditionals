float x = 0;

void setup() {
  // Create canvas to work on
  size(200, 200);
  //create an ellipse to start offscreen
  fill(255);
}

void draw() {
  x += 1;
  background(255);
  ellipseMode(CENTER);
  ellipse(- 50 + x, width/2, 50, 50);
  if (x > width + 75) { // reset the x val once the circle has left the screen so it enters on the left again
    x = 0;
  }
  println("In draw function, x has this value: ");
  println(x);
}
