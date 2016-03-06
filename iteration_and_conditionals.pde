float y = 0;
float x = 0;

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
  if (y % 10 == 0) {
    x += 25;
    textSize(x);
    text("X", width/2 - textWidth("X")/2, y * textWidth("X")/3);
  }
  if (y * textWidth("X")/3 > height) {
    y = 0;
    x = 0;
    background(255);
  }
}
