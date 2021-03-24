ArrayList<Particle> p;

void setup() {
  size(700, 600);
  pixelDensity(2);
  colorMode(HSB, 360, 100, 100, 100);
  blendMode(ADD);
  strokeWeight(0.5);
  background(0);

  p = new ArrayList<Particle>();
  for (int i = 0; i < 400; i++) {
    p.add(new Particle());
  }
}

void draw() {
  translate(width/2, height/2);
  for (Particle particle : p) {
    particle.update();
    particle.display();
  }
}

void keyPressed() {
  if (key ==' ')saveFrame("####.png");
}

class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float r = 200;
  float topspeed = 3;
  float theta;
  float col = random(1);

  Particle() {
    theta = random(PI*2);
    pos = new PVector(random(r) * cos(theta), random(r) * sin(theta));
    vel = new PVector(0, 0);
  }

  void update() {
    acc = PVector.random2D();
    acc.mult(random(1)); 
    vel.add(acc);
    vel.limit(topspeed);
    pos.add(vel);
    pos.limit(dist(0, 0, r, r));
  }

  void display() {
    if (col > 0.66) {
      stroke(0, 80, 85);
    } else if (col > 0.33) {
      stroke(139, 80, 85);
    } else {
      stroke(212, 80, 85);
    }
    line(pos.x, pos.y, pos.x, pos.y);
  }
}
