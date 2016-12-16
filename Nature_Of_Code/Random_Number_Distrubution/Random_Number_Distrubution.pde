int[] randomCounts; 

void setup(){
  size(640,240); 
  randomCounts = new int[10]; 
  
  stroke(0); 
  fill(random(255), random(255), random(255)); 
  background(random(255), random(255), random(255));

}

void draw(){
  
  int index = int(random(randomCounts.length)); 
  randomCounts[index]++; 
  
  int w = width / randomCounts.length; 
  
  for (int x = 0; x < randomCounts.length; x++){
    rect(x*w, height-randomCounts[x], w-1, randomCounts[x]); 
  }
}