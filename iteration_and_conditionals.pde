float y = 0;
float arrowX = 600;

void setup() {
  // Create canvas to work on
  size(600, 200);
  fill(255);
  background(255);
}

void draw() {
  y += 1;
  println("In draw function, y has this value: ");
  println(y);
  fill(0);
  text("X", width/2 - textWidth("X"), height/2);
}
