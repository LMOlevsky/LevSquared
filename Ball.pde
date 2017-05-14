class Ball { 
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r, g, b);
    rad=10;
    x=random((width-rad)+rad/2);
    y=random((height-rad)+rad/2);
    dx=random(10)-5;
    dy=random(10)-5;
  }

  void bounce() {
    if (x <= 0 || x >= width) {
      dx = -1 * dx;
    }
    if (y <= 0 || y >= height) {
      dy = -1 * dy;
    }
  }

  void move() {
    ellipse(x,y,rad,rad);
    bounce(); 
    x=x+dx;
    y=y+dy;
   
  }
}