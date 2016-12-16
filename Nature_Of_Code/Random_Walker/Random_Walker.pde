Walker w;
Walker ww;
Walker www;

class Walker {
  // Declare Vars
  int x;
  int y;
  //Constructor Func
  Walker(){
    x = width / 2;
    y = height / 2;
  }
  // Display Function
  void display(){
    stroke(random(255), random(255), random(255));
    point(x, y);
  }
  // Step Function
  void step(){
    int stepX = int(random(3))  -1;
    int stepY = int(random(3)) -1;

    x += stepX;
    y += stepY;

  }
}

// Processing Setup Function
void setup() {
  size(640,360);
  background(255);

  w = new Walker();
  ww = new Walker();
  www = new Walker();
}

// Processing Draw Function
void draw() {
  w.step();
  w.display();
}
