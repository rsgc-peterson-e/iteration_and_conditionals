float x = 0;
float y = 0;
float[] lineCordinates = {100, 175, 175, 25};

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
  line(lineCordinates[0], lineCordinates[1], lineCordinates[2], lineCordinates[3]);
  println("In draw function, x has this value: ");
  println(x);
}
