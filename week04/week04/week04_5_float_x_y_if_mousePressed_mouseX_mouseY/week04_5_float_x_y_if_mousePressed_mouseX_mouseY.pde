// WEEK04_5_float_x_y_if_mousePressed_mouseX_mouseY
void setup(){
  size(600,400);
}
float x,y;//沒有給值
float fishX = 300, fishY = 200;//魚的座標
void draw(){
  background( #C0FFEE );
  if(x>0){
    ellipse(x,y,8,8);
    y += 2;
    float dx = x - fishX, dy = y - fishY;
    float d = dist(x,y,fishX,fishY);
    fishX += dx / d*4;
    fishY += dy / d*4;
    if(y>400) x=0;//如果飼料變到外面,把X變0
  }
  ellipse(fishX,fishY,28,18);
}
void mousePressed(){
  x = mouseX;
  y = mouseY;
}
