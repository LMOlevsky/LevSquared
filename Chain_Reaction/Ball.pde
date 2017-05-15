class Ball { 
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;  //State 0 = normal ball
  //State 1 = Expanding
  //State 2 = Shrinking
  //State 3 = Dead

  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r, b, g);
    rad=10;
    x=random((width-rad)+rad/2);
    y=random((height-rad)+rad/2);
    dx=random(10)-5;
    dy=random(10)-5;
    state = 0;
  }

  Ball(int radius) {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r, b, g);
    rad=radius;
    x=random((width-rad)+rad/2);
    y=random((height-rad)+rad/2);
    dx=random(10)-5;
    dy=random(10)-5;
    state = 0;
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
    ellipse(x, y, rad, rad);
    fill(c);
    bounce(); 
    x=x+dx;
    y=y+dy;
  }

  void reaction() {

    ellipse(x, y, rad, rad);
    fill(c);

    //Ball is in the expanding state
    if (state == 1) {
      rad += 0.5;
    };

    //If the ball is fully expanded, change it to the shrinking state
    if (state == 1 && rad == 100) {
      state = 2;
    }

    //Ball is in the shrinking state
    if (state == 2) {
      rad -= 0.5;
    }

    //If ball is fully shrunk, change it to the dead state
    if (state == 2 && rad == 0) {
      state = 3;
      rad = 0;
    }
  }
}