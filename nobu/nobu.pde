String[] chat = {"どういうお笑い？", "クセがすごい！！","お笑いの言葉使え","シンプルに口が臭い！","King Gnuの歌い出しくらい繊細！","丸坊主おねえか！","わしゃ妖怪ルッコラ食いか!","人でも殺めてきたんか？","作戦会議の場所シベリアか！？"};
int count = 0;
int y = 0;

void setup() {
  size(500, 500);
  frameRate(60);
  PFont myfont;
  myfont = createFont("Osaka", 30);
}

void draw() {
  if(count >= chat.length) count = 0;
  if (y == 13) background(230);
  if(y == 13) y = 0;
}

void mousePressed() {
  tex_size = (int)random(10,28);
  textSize(tex_size);
  col = (int)random(0,220);
  fill(col);
  text(chat[count], mouseX, mouseY);
  count++;
  y++;
  
  
}
