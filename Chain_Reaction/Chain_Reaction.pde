Ball[] balls;


boolean reactionStarted;

void setup() {
  size(600, 600);
  reactionStarted = false;
  balls = new Ball[25];
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i = 0; i<balls.length; i++) {
    if (balls[i].state == 0) {
      balls[i].move();
    } else {
      balls[i].reaction();
    }
  }
}
void mouseClicked() {
    Ball react = new Ball(10);
    ellipse(width/2, height/2, 10, 10);
    fill(color(random(256),random(256),random(256)));
    reactionStarted=true;
    for (int i = 0; i<balls.length; i++)
      balls[i].state=1;  
    
}