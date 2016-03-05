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
  cross(width/2, height/2, 1);
}

void cross(float crossX, float crossY, float crossScale) { // function to draw cross and change its scale for the animation
  line(crossX - 1 * crossScale, crossY + 1 * crossScale, crossX + 1 * crossScale, crossY - 1 * crossScale);
  line(crossX - 1 * crossScale, crossY - 1 * crossScale, crossX + 1 * crossScale, crossY + 1 * crossScale);
}
