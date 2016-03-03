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
  ellipse(- diameter/2 + x, width/2, diameter, diameter);
  // add another ellipse in fom the middle of the screen
  ellipse(width/2, - diameter/2 + y, diameter, diameter);
  if (x > width + diameter) { // reset the x val once the circle has left the screen so it enters on the left again
    x = 0;
  }
  if (y > height + diameter) {
    y = 0;
  }
  println("In draw function, x has this value: ");
  println(x);
}
