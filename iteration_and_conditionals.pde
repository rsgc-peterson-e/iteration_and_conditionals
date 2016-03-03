float x = 0;

void setup() {
  // Create canvas to work on
  size(200, 200);
}

void draw() {
  x += 1;
  println("In draw function, x has this value: ");
  println(x);
}
