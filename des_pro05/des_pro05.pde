PImage img;

void setup() {
  size(500, 500);
  img = loadImage("processing.png");
}

void draw() {
  tint(mouseX, mouseY,255);
  image(img,0, 0, width, height);
  noTint();
  image(img, 0, 0, width / 2, height / 2);
}
