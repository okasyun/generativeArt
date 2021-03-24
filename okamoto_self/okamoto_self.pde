PImage img;
int a =1;



void setup() {
  img = loadImage("okamoto.png");
  PFont myfont;
  myfont = createFont("Serif", 30);
  size(200,270);
  noStroke();
  smooth();
  frameRate(30);
   
}
  
  
  void draw() {
  int z = (int)random(2,10
  );
  int w = (int)random(2,10);
  fill(255);
  textSize(30);
  
  for (int y = 0; y < img.height; y+=z) {
    for (int x = 0; x < img.height; x+=z) {
      color c = img.get(x,y);
      fill (c);
      rect(x + z / 2, y + z / 2, w, w);
      }
     
    }
  }
  
  
  void keyPressed(){
  //エンターキーが押されたら
  if(keyCode == ENTER){
    //「sample 番号 .png」の名前で画像を保存
    save("sample" + a + ".png");
    //この処理を行うごとにaを1増やす
    a++;
  }
}
