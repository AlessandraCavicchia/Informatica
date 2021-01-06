PFont f; 

void setup() {
  size(1000,500);
  f = createFont("Arial",16,true);
 noStroke();
colorMode(RGB, 0,255,0);
for (int i = 0; i < 1000; i++) {
  for (int j = 0; j < 1000; j++) {
    stroke(i, j, 0);
    point(i, j);
  }
}
}

void draw() {
  PImage img = loadImage("natale-222.jpg");
image(img, 55, 20,900,450);
   textFont(f,100);                  
  fill(0,0,0);    
  text("Happy holidays!",195,245);
    textFont(f,100);                  
  fill(#C30A0A);
  text("Happy holidays!",205,255);
 textFont(f,100);
   fill(0,50,0);    
  text("Happy holidays!",200,250);
    square(147, 173, 20);
  triangle(130, 175, 158, 120, 186, 175);
  ellipse(157, 120, 15, 15);
  }
