void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  for(int i = 0; i < 60; i++) {
    int s = int(50 * sin(radians(i * 6 - 90)));
    int c = int(50  * cos(radians(i * 6 - 90)));
    int x1 = width / 2 + c, x2 = x1 + c;
    int y1 = height / 2 + c,y2 = y1 + s;
    if (i <= second()) {
      stroke(255, 239, 120);
      line(x1, y1, x2, y2);
    }
  }
}
