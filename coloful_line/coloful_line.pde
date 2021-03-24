void setup() {
  size(500, 500);
  background(255);
  smooth();
  strokeWeight(0.2);
  frameRate(3);
}

  
  
  
void draw() {
  for (int i = 0; i <= 10; i+=2)  {
    stroke(255,0,0, 200);
    line(random(500), random(500), width/2, height/2);
  }
  
   for (int j = 0; j <= 10; j+=2)  {
    stroke(0,0, 255);
    line(random(500), random(500), width/2, height/2);
    
    for (int k = 0; k <= 10; k+=2)  {
    stroke(0,255,0, 200);
    line(random(500), random(500), width/2, height/2);
  }
  }
}   
  
  
    
    
    
    
    
    
