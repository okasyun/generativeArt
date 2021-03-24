int n = 50;
int [] x = new int[n];
int [] y = new int[n];
int [] d = new int[n];
int [] vx = new int[n];
int [] vy = new int[n];
color [] c = new color[n];

void setup() {
  size(700, 700);
  for (int i = 0; i < n; i++) {
    d[i] = (int)random(2, 20);
    x[i] = (int)random(d[i] / 2, width - d[i] / 2);
    y[i] = (int)random(d[i] / 3, height -d[i] / 2);
    for (; vx[i] == 0;) vx[i] = (int)random(-5, 5);
    for (; vy[i] == 0;) vy[i] = (int)random(-5, 5);
    c[i] = color(random(100, 140), random(150, 220), random(150, 250));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < n; i++) {
    pinpong(i);
    connect(i);
    fill(c[i]);
    ellipse(x[i], y[i], d[i], d[i]);
  }
}

void pinpong(int i) {
  if (x[i] >= width - d[i] / 2 || x[i] <= d[i] / 2)
      vx[i] = -vx[i];
  if (y[i] >= width - d[i] / 2 || y[i] <= d[i] / 2)
      vy[i] = -vy[i]; 
      
  x[i] += vx[i];
  y[i] += vy[i];
}

void connect(int i) {
  stroke(c[i]);
  for (int j = 0; j < n; j++) {
    if (dist(x[i], y[i], x[j], y[j]) <= 100) {
      line(x[i], y[i], x[j], y[j]);
    }
  }
}
