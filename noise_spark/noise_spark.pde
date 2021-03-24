float rn = 500;
float step = 0.02;
float noise_line = rn * noise(step);
ArrayList <Line> x;

void setup() {
size(1000, 1000);
noStroke();
strokeWeight(0.1);
smooth();
background(255);
x = new ArrayList<Line>();
}

void draw() {
for (int i = 0; i < x.size(); i++) {
  x.get(i).update();
  x.get(i).display();
}
}
void mouseReleased() {
x.add(new Line(mouseX, mouseY, noise_line, noise_line, random(40.0)));
step += 10;

}

void keyReleased() {
  if (key == ENTER) {
    x.clear();
  }
}

void keyPressed(){
  //エンターキーが押されたら
  if(keyCode == ENTER){
    //「sample 番号 .png」の名前で画像を保存
    save("sample_spark.png");
  }
}
    
