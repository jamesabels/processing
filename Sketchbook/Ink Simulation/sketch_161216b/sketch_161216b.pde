Pen P;
Pen P2;
Pen P3;
Pen P4;
Pen P5;
Pen P6;

class Pen {
  float x;
  float y;
  float value;
  float speed;
  float offset;
  
  Pen (float xOffset) {
    x = width / 2 + xOffset;
    y = 0;
    value = 0;
    speed = 0;
    offset = 0;
    
  }
  
  void display () {
    stroke(random(0, 30));
    strokeWeight(random(1, 15));
    tint(50, 60, 0, 0.5);
    filter(BLUR, random(0.01, 0.6));
    point(x, y);
  }
  
  void move () {
    value = value + random(0.001);
    
    speed = value - (value / random(1, 200));
    offset = random(-2, 2);
    
    x = x + value * speed + offset;
    y = y + value / speed + offset;
    
  }
  
}

void setup () {
  size(500, 500);
  background(255);
  
  P = new Pen(random(0, width / 2));
  P2 = new Pen(random(-width / 2, 0));
  
  P3 = new Pen(random(40, width / 2));
  P4 = new Pen(random(-width / 2, 40));
  
  P5 = new Pen(random(60, width / 2));
  P6 = new Pen(random(-width / 2,  60));
  
}

void draw () {
  P.move();
  P.display();
  
  P2.move();
  P2.display();
  
  P3.move();
  P3.display();
    
  P4.move();
  P4.display();
    
  P5.move();
  P5.display();
    
  P6.move();
  P6.display();
  
  filter(BLUR);
  
}