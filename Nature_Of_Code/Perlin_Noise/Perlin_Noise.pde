float t;

void setup () {
  size(500, 500);
  background(20);
  
}

//float x (float t) {
//  return noise(t);
//}

float y (float t) {
  return height/2;
}

void draw () {
  background(20);
  //filter(BLUR, 0.9);
  t = t + 0.01;
  
  float x = noise(t); 
  x = map(x, 0, 1, 0, width);
  
  float y = noise(t);
  y = map(y, 0, 1, 0, height);
  
  stroke(255);
  strokeWeight(5);
  ellipse(x, height/2, 40, 40);
 
}