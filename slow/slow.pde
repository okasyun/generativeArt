void setup() {
  size(600, 400);
  noStroke();
}

void draw() {
  background(0);
  nyoro(10, width /3, height / 3, color(220, 100, 26), 4.0,true);
  nyoro(30, width, 0, color(100, 155,200),0.4,false);
  nyoro(20, width * 3 / 4, height * 2 /3,color(10,50,20), 10.0,true);
}

void nyoro(int n, int x, int y,color c, float slow, Boolean fill ) {
  for (int i = 0; i < 15; i++) {
    if (fill = true) {
      noStroke();
      fill(c,(n - i) * 255 / n);
      }
    else {
      noFill();
      stroke(c,(n - i) * 255 / n);
    }
      
    fill(c,(n - i) * 255 / n);
    ellipse(
      x - n * i * width / 500,
      y + 50 * cos(radians(i * 20 + frameCount * slow
      )),
      (n- i) * 2,
      (n - i) * 2
      );
  }
}
