int n = 25;
Line[] l = new Line[n];

void setup() {
  size(500, 500);
  background(0);
  noStroke();
  smooth();
  for(int i = 0; i < l.length; i ++) {
    float mynoise = random(10.0);
    l[i] = new Line(random(230, 250), random(500), random(230, 250), random(500),random(255 * noise(10)), mynoise);
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
  float x1, y1, x2, y2;
  float centerX1;
  float centerY1;
  float centerX2;
  float centerY2;
  float step;
  float mynoise;
  float color_change;
  float radians;
  float radius;
  
  
  Line(float _x1, float _y1, float _x2, float _y2, float _color_change, float _mynoise) {
    x1 = _x1;
    y1 = _y1;
    x2 = _x2;
    y2 = _y2;
    centerX1 =  width / 2;
    centerY1 = height /2;
    centerX2 = width / 2;
    centerY2 = height / 2;
    step = 0.05;
    color_change = _color_change;
    mynoise = _mynoise;
    radians = 0;
    radius = 0;
  }
    
    
      
    
    
    void display() {
      line(x1, y1, x2,y2);
    }
    
    
    void update() {
      strokeWeight(10);
      radians = noise(mynoise) * TWO_PI * 1.5;
      radius += noise(mynoise) * 0.4;
      x1 = cos(radians) * radius + centerX1;
      y1 = cos(radians) * radius + centerY1;
      
      stroke(255, 0, 0, radians * 255);
      x2 = x1;
      y2 = y1;
      
      mynoise += step;
    }
  
}

    
  
