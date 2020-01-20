void setup() {
  size (500, 500);
  background(125);
}
float boxX = 1;
float boxY = 1;
int posx = 170;
int posy = 250;
int SpeedX = 10;
int SpeedY = 10;

void draw() {
  clear();

  fill(125);
  rect (50+boxX, 50+boxY, 400-boxX*2, 400-boxY*2);
  boxX += 0.1;
  boxY += 0.1;
  stroke(3, 39, 100);
  fill(2, 46, 175);
  posx  = posx+SpeedX;
  posy  = posy + SpeedY;
  circle(posx, posy, 20);
 
  if(posx == width){
  SpeedX = -SpeedX;
  }
  if(posy == height){
  SpeedY = -SpeedY;
  }
  if(posx == width-width){
  SpeedX = -SpeedX;
  }
  if(posy == height-height){
  SpeedY = -SpeedY;
  }
  
}
