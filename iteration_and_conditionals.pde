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
  if (y % 10 == 0) { // run every time y/10 returns remainder of 0
    x += 25; // incriment x by 25 each time the if is true
    textSize(x); // use x variable for the increasing X size as the animation runs
    text("X", width/2 - textWidth("X")/2, y * textWidth("X")/7); // multiply by text width and divide it to control the X's drawn
  }
  if (y * textWidth("X")/7 > height) {
    y = 0;
    x = 0;
    background(255);
  }
}
