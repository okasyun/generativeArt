int n =  400;
Line[] l = new Line[n];
float rn = 500;
float step = 0.02;
float noise_line = rn * noise(step);



void setup() {
  size(500, 500);
  background(0);
  noStroke();
  smooth();
  strokeWeight(0.1);
  frameRate(25);
  
  for (int i = 0; i < l.length; i++) {
    l[i] = new Line(noise_line, noise_line, noise_line, noise_line, random(20.0));
    step +=10;
  }
  if (frameCount <= 500) {
 saveFrame("frames/####.png");
  }
}
  

void draw() {
  background(0);
  for (int i = 0; i < l.length; i++) {
    l[i].update();
    l[i].display();
  }
}

class Line {
  float x1,x2;
  float y1,y2;
  float cc;
  float noiseArgR;
  float noiseArgX;
  float noiseArgY;
  float radians;
  float radius;
  float mynoise;
  
  Line(float _x1, float _y1, float _x2, float _y2, float _mynoise) {
    x1 = _x1;
    x2 = _x2;
    y1 = _y1;
    y2 = _y2;
    mynoise = _mynoise;
  }
    



void display() {
  line(x1, y1, x2, y2);

  
}


void update() {
  radians = noise(mynoise) * 360 * 1.5;
  radius += noise(mynoise) * 0.4;
  x1 = noise(noiseArgX) * width;
  y1 = noise(noiseArgY) * height;
  x2 = cos(radians) * radius + width / 2;
  y2 = sin(radians) * radius + height / 2;
  cc = noise(noiseArgR) * 255;
  stroke(random(255), 0, random(255), cc);
  noiseArgR += 0.05;
  noiseArgX += 0.01;
  noiseArgY += 0.01;
}


}  
  
  
  
  
  
