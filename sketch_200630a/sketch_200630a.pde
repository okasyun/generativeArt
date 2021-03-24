float n = 5.5;
float [] x = new float[n];
float [] x_noise = new float[n];
float [] y_noise = new float[n];
float angle = 180 / 2;
float radius_noise;
float angle_noise;
int color_blue = 0;

void setup() {
  background(255);
  frameRate(20);
  size(500, 500);
  noFill();
  smooth();
  for (int i = 0; i < x.length; i++) {
    x_noise[i] = (float)random(10);
    y_noise[i] = (float)(random(10);
    radius_noise(random(10);
    angle_noise(random(10);
    x_step[i] = (float)random(0.01, 0.05);
    y_step[i] = (float)random(0.01, 0.05);
    angle_noise_step[i] = (int)random(0.002, 0.007);
  }
    
}
  
void draw() {
}

void beautiful_line() {
  radius_noise += 0.05;
  radius = (noise(radius_noise) * x[i]) + 1;
  x_noise[i] += x_step[i];
  y_noise[i] += y_step[i];
  float mediam_x = width / 2 + (noise(x_noise[i]) * 100) - 50;
  float mediam_y = height /2 + (noise(y_noise[i]) * 100) - 50;
  float x1 = mediam_x + (_radius
  stroke(0, 0, 255, color_blue[i]);
  line(x1[i], y1[i], x2[i], y2[i]);
  
}
  
  
