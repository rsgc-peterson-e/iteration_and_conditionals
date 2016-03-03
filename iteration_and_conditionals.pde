float x = 0;
float y = 0;
float diameter = 50;

void setup() {
  // Create canvas to work on
  size(200, 200);
  //create an ellipse to start offscreen
  fill(255);
}

void draw() {
  x += 1;
  y += 1;
  background(255);
  ellipseMode(CENTER);
  ellipse(- diameter/2 + x, - diameter/2 + y, diameter, diameter);
  if (x > width + diameter && y > height + diameter) { // reset the x and y val once the circle has left the screen so it enters on the left again
    x = 0;
    y = 0;
  }
  println("In draw function, x has this value: ");
  println(x);
}
