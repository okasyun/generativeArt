int r;

void setup() {
  size(500, 500);
  r = 0;
}

void draw() {
  r = r + 1;
  background(255);
  
  if(mousePressed) {
    fill(255,0,0);
    ellipse(mouseX, mouseY, r, r);
  }
  else {
    fill(255);
    ellipse(mouseX, mouseY, r, r);
  }
}
