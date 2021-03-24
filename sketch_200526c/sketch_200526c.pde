
void setup() {
  size(400, 400);
  background(255);
  smooth();
  strokeWeight(0.2);
  frameRate(10);
}

  
  
  
void draw() {
  switch (key) { 
  case '1':
  for (float i = 0; i <= 100;i++)  {
    stroke(255,0,0, 180);
    line(random(400), random(400), width/2, height/2);
    break;
  }
    
  case '2':
  for (float i = 0; i <= 100;i++)  {
    stroke(0,255,0, 180);
    line(random(400), random(400), width/2, height/2);}
    break;
  }
  
  } 
  
  
    
    
    
    
    
    
