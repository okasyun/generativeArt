void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  circles(width /2 , height / 2, width / 2, 10);
}

void circles(float x, float y,float r, int n) {
  ellipse(x, y, r * 2, r * 2);
  if (n > 0) {
    float nextR = r / 2;
    circles(x + nextR, y, nextR, n - 1);
    circles(x - nextR, y, nextR, n -1);
  }
}
