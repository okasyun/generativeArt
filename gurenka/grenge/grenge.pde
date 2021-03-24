/* 要件1
プログラミングを使用することで秩序と乱雑さを兼ね備えた作品ができた
特にノイズ関数やランダム関数を使うことで毎回微妙に異なる動きを表現しているのを特にアピールしたいポイントです。
プログラミングではなく絵筆を使って全部自分で作ろうとしても本作品のような滑らかに動く作品は作れないと思う。

if文を使って色が254まで増え続けると変更するようなプログラムを書いたことで赤と黄色を同時に楽しめるようにしたのも
工夫した

また  if (mousePressed == false) {}でボタンを離している間だけプログラムが実行されるようし好きな場面で停止できるようインタラクティブに工夫した。

要件2
ジェネラティブ・アート
Processing による実践ガイド
マット・ピアソン 著の
ケーススタディ Wave Clockを参考にした
*/

int n = 25;
Line[] l = new Line[n];

void setup() {
size(800, 800);
smooth();
background(255);
noFill();
strokeWeight(0.01);
frameRate(30);


for (int i = 0; i < l.length; i++) {
float noise_number;
noise_number = random(50);
l[i] = new Line(noise_number, noise_number, noise_number, noise_number, noise_number);
}
}

void draw() {
  if (mousePressed == false) {
  

  for (int i = 0; i < l.length; i++) {
    l[i].update();
  }
    
  }
  saveFrame("frames/####.png");
if (frameCount >= 600) {
  exit();
}
}

class Line {
float angnoise, radiusnoise;
float x1noise, y1noise;
float _angle = -PI/2;
float _radius;;
float noise_color;
float x1, y1, x2, y2;
float _strokeCol = 254;
int _strokeChange = -1;

Line(float _angnoise, float _radiusnoise, float _x1noise, float _y1noise, float _noise_color) {
  angnoise = _angnoise;
  radiusnoise = _radiusnoise;
  x1noise = _x1noise;
  y1noise = _y1noise;
  noise_color = _noise_color;
}



void update() {
  radiusnoise += 0.005;
  _radius = (noise(radiusnoise) * 800) + 1;
  
  angnoise += 0.001;
  _angle += (noise(angnoise) * 8) -3;

x1noise += 0.001;
y1noise += 0.001;
float centerX = width / 2 + (noise(x1noise) * 100) - 50;
float centerY = height / 2 + (noise(y1noise) * 100) - 50;

float rad = radians(_angle);
float x1 = centerX + (_radius * cos(rad));
float y1 = centerY + (_radius * sin(rad));
float opprad = rad + 250;
float x2 = centerX + (_radius * cos(opprad));
float y2 = centerY + (_radius * sin(opprad));
_strokeCol += _strokeChange;
if (_strokeCol > 254) { _strokeChange = -1; }
if (_strokeCol < 0) { _strokeChange = 1; }
stroke(_strokeCol, 60);
strokeWeight(0.01);
stroke(255,_strokeCol, 50);
line(x1, y1, x2, y2);

}
    
  }

  
