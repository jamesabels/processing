float t;
Point p1;
Point p2;

void setup () {
  background(20);
  size(500, 500);
  strokeWeight(5);
  stroke(255);
  
  p1 = new Point();
  p2 = new Point();
}

class Point {
  Point () {
  
  }
  void move (int w, int h, float t) {
    translate(w, h);
    point(x(t), y(t));
  }
}

void draw() {
  
  p1.move(width/8, 0, sin(t / 10) * -500);
  p2.move(width/10, 0, t);
  filter(BLUR, 0.7);
  t++;
}

float x(float t) {
  return sin(t / random(-1, 1)) * 1;
}

float y(float t) {
  return t;
}