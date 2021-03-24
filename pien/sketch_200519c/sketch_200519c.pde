PImage img;
PImage imgz;
float para;
float okamo;
float sh;
float large;
float colorful;
void setup() {
  size(1000, 1000);
  background(0);
  img = loadImage("EQa3IZxU0AAuGYw.png");
  imgz = loadImage("019-emoji-free.jpg");
}
 
void draw() {
  noTint();
  colorful = random(1, 255);
  background(colorful);
  if (mousePressed) {
    noTint();
    para = random(1,255);
    okamo = random(1, 255);
    sh = random(1, 255);
    large = random(20, 200);
    tint(para, okamo, sh);
    image(img, mouseX, mouseY, large, large);
  }
  else {
    noTint();
    image(imgz,mouseX, mouseY, large, large);
}
  
}
