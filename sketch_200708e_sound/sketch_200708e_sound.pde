import processing.sound.*;

SoundFile sf;

void setup() {
  sf = new SoundFile(this, "sample.aiff");
}

void draw() {
  background(0);
  float rate = (float)mouseX / 10;
  sf.rate(rate);
  text(rate, 20, 20);
}
  
  void keyReleased() {
  if (key == ENTER)
  sf.play();
}
