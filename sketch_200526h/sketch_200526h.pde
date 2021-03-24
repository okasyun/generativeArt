float[] red;
float ran;
float ran2;
void setup() {
  size(500,500);
  smooth();
  frameRate(30);
  background(255);
  noFill();
  red = new float[width];
  for (int j = 0; j < red.length; j++) {
  red[j] = random(0,255);  

}
}

void draw() {
  for (int i =0; i<= 20; i++) {
  ran = (width /2 + 100 * cos(radians(i)));
  ran2 =(height /2 + 100 * sin(radians(i)));
  stroke(red[i]);
  
  line(width /2 , height /2 , ran, ran2);
  }
}
