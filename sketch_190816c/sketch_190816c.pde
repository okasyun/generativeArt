Circle circle ;

boolean freeze = false;
int alph = 100;
void setup() {
  size(displayWidth, displayHeight);
  pixelDensity(2);
  smooth();
  noFill();
  stroke(255, alph);
  strokeWeight(0.5);
  blendMode(ADD);
  background(0);

  circle = new Circle();
}

void draw() {
  circle.run();
}

void mousePressed() {
  circle.event();
}

void keyPressed() {
  if (key == 's')saveFrame("#####.png");
  if (key == 'r')background(0);

  if (key == 'f' || key == 'F') freeze = !freeze;
  if (freeze == true) noLoop();
  else loop();

  if (key == '1')stroke(255, alph);
  if (key == '2')stroke(#1D48F0, alph);
  if (key == '3')stroke(#06C904, alph);
  if (key == '4')stroke(#DB4104, alph);
}

//-------------------------------------------------------------------

class Circle {

  int formResolution = 20;
  int stepSize = 2;
  float initRadius = 250;
  float centerX, centerY;
  float[] x = new float[formResolution];
  float[] y = new float [formResolution];

  Circle() {
    centerX = width/2;
    centerY = height/2;
    float angle = radians(360/float(formResolution));
    for (int i = 0; i < formResolution; i ++) {
      x[i] = cos(angle * i) * initRadius;
      y[i] = sin(angle * i) * initRadius;
    }
  }

  void draw() {
    beginShape();
    curveVertex(x[formResolution-1]+centerX, y[formResolution-1]+centerY);
    for (int i=0; i<formResolution; i++) {
      curveVertex(x[i]+centerX, y[i]+centerY);
    }
    curveVertex(x[0]+centerX, y[0]+centerY);
    curveVertex(x[1]+centerX, y[1]+centerY);
    endShape();
  }

  void move() {
    if (mouseX != 0 || mouseY != 0) {
      centerX += (mouseX-centerX) * 0.01;
      centerY += (mouseY-centerY) * 0.01;
    }

    for (int i=0; i<formResolution; i++) {
      x[i] += random(-stepSize, stepSize);
      y[i] += random(-stepSize, stepSize);
    }
  }

  void run() {
    draw();
    move();
  }

  void event() {
    centerX = mouseX; 
    centerY = mouseY;
    float angle = radians(360/float(formResolution));
    float radius = initRadius * random(0.5, 1.0);
    for (int i=0; i<formResolution; i++) {
      x[i] = cos(angle*i) * radius;
      y[i] = sin(angle*i) * radius;
    }
  }
}
