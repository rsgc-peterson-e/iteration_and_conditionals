float x = 0; // x to canvas width because the arrows will be drawn in the oppisite direction meaning that the x val will be decreased everytime draw loops
float arrowX = 600;
void setup() {
  // Create canvas to work on
  size(600, 200);
  fill(255);
  background(255);
}

void draw() {
  x -= 1;
  // println("In draw function, x has this value: ");
  // println(x);
  if (x % 10 == 0) {
    arrow(3 * x + 600, height/2, 120, 60);
    println(x);
  }
}
void arrow(float lx, int ly, int distX, int distY) {
  line(lx, ly, lx + distX, ly + distY);
  line(lx, ly, lx + distX, ly - distY);
}
