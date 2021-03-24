Particle[] particles = new Particle[4000];
float noiseScale = 800, noiseStrength = 55;
float pAlpha = 20, strokeWidth = 0.1;

void setup(){
  size(800, 800);
  pixelDensity(2);
  background(255);
  for(int i=0; i<particles.length; i++){
    particles[i] = new Particle();
  }
}

void draw(){
  stroke(0, pAlpha);
  for(int i=0;i<particles.length;i++){
    particles[i].run();
  }
}

void keyPressed(){
  if(key == 's')saveFrame("####.png");
  if(key == BACKSPACE)background(255);
  if(key == ' '){
    int newNoiseSeed = (int)random(10000);
    noiseSeed(newNoiseSeed);
  }
}

//--------------------------------------------------------------

class Particle {
  PVector pos, posOld;
  float stepSize, angle;
  float noiseZ, noiseZVelocity = 0.007;
  boolean isOutside = false;
  
  Particle() {
    pos = new PVector(random(width), random(height));
    posOld = new PVector(pos.x, pos.y);
    stepSize = random(1,6);
  }
  
  void update(){
    angle = noise(pos.x/noiseScale, pos.y/noiseScale, noiseZ) * noiseStrength;
    
    pos.x += cos(angle) * stepSize;
    pos.y += sin(angle) * stepSize;
    
    if(pos.x<-10) isOutside = true;
    else if(pos.x>width+10)isOutside = true;
    else if(pos.y<-10)isOutside = true;
    else if(pos.y>height+10)isOutside = true;
    
    if(isOutside){
      pos.x = random(width);
      pos.y = random(height);
      posOld.set(pos);
    }
    noiseZ += noiseZVelocity;
  }
  
  void draw(){
    strokeWeight(strokeWidth * stepSize);
    line(posOld.x, posOld.y, pos.x, pos.y);
    posOld.set(pos);
    isOutside = false;
  }
  
  void run(){
    update();
    draw();
  }
}
