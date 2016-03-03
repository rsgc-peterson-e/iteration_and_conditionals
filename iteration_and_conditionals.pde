float x = 0;
float y = 0;

void setup() {
  // Create canvas to work on
  size(600, 200);
  //create an ellipse to start offscreen
  fill(255);
}

void draw() {
  x += 1;
  y += 1;
  background(255);
  fill(0);
  line(100, 175, 150, 25);
  println("In draw function, x has this value: ");
  println(x);
}
