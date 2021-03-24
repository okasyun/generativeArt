void setup() {
  size(400, 400);
  background(255);
  smooth();
  strokeWeight(0.2);
  frameRate(5);
}

  
  
  
void draw() {
  for (int i = 0; i <= 100; i++)  {
    stroke(255,0,0, 200);
    line(random(400), random(400), width/2, height/2);
    break;
  }
}   
  
  
    
    
    
    
    
    
