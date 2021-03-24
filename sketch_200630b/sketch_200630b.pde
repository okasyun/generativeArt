int n = 10;
int [] x = new int[n];
int [] y = new int[n];
int [] d = new int[n];
void setup() {
  size(500, 500);
  background(0);
  smooth();
  strokeWeight(0.2);
  frameRate(15);
  for (int i = 0; i < x.length; i++) {
    d[i] = (int)random(200,400);
    y[i] = (int)random(100, 350);
    
  }
}


  
void lines(int i) {
  for (int x = 0; x <= 10; x+=2)  {
    stroke(255,0,0, 200);
    line(d[i], y[i], width/2, height/2);
  }
  
   for (int j = 0; j <= 10; j+=2)  {
    stroke(0,0, 255);
    line(random(500), d[i], width/2, height/2);
    
    for (int k = 0; k <= 10; k+=2)  {
    stroke(0,255,0, 200);
    line(d[i], y[i], width/2, height/2);
  }
  }
}   
  
 void draw() {
  background(0);
  lines(7);
}
  
  
    
    
