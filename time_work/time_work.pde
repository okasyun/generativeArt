PImage pien;
PImage smile;
float elapsedTime = 0, time = 0, timeStamp = 0;
int f = 40;
int g = 40;
int count = 0;
int state = 0;
int timeleft = 5;
String start = "ぴえんをクリックして笑顔にしてあげよう！！";
String clear = "ゲームクリア！！笑顔になったよ！！";


void setup() {
  size(700,700);
  background(255);
  smooth();
  pien = loadImage("pien.png");
  smile = loadImage("smile.png");
  PFont myfont;
  myfont = createFont("Osaka", 50);
  
}
  
  
void draw() {
  background(255);
  elapsedTime = float(millis()) / 1000;
  time = elapsedTime - timeStamp;
  switch (state) {
    case 0:
    frameRate(1);
    fill(0);
    textSize(30);
    text(start, 100, height/2);
    text("開始まで:" + timeleft, 40, 40);
    timeleft --;
    if (time >=5.0) {
      state = 1;
      timeStamp = elapsedTime;
    }
    break;
    case 1:
    image(pien,width/2,height/2,f,g);
    textSize(30);
    text("残り時間:10秒",100, 100);
    if (mousePressed) {
      frameRate(10);
      f += 5;
      g += 5;
      image(pien,200,height/2,f,g);
      count++;
    }
    if (time >= 10) {
      state = 3;
    }
    
    if (count == 30) {
      state = 2;
    }
    break;
    
    case 2:
     textSize(40);
     image(smile,width/2,height/2,200,200);
     fill(0);
     text(clear,width/2,height);
     
  break; 
    case 3:
    textSize(50);
    text("ゲームオーバー！！", width/2, height/2);
    break;
}
}



      
      
