float y = 0;

void setup() {
  // Create canvas to work on
  size(200, 600);
  fill(255);
  background(255);
}

void draw() {
  y += 1;
  println("In draw function, y has this value: ");
  println(y);
  fill(0);
  textSize(25);
  text("X", width/2 - textWidth("X")/2, 25);
}
