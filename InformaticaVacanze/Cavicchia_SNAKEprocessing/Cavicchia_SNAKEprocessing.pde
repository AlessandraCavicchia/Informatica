ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();

int width = 30, height = 30, bs = 20, d = 1, fx = 4, fy = 15, sc = 0, h_sc = 0, conf = 0;
boolean lose = false;
int []x_d = {0, 0, 1, -1}, y_d = {1, -1, 0, 0};

void setup(){
  size(850, 850);
  x.add(15);
  y.add(15);
  
  background(0);

}

void draw(){
  
  background(0);
  noStroke();
  fill(0, 150, 0);
  for (int i = 0; i < x.size(); i++){
    rect(x.get(i) * bs, y.get(i) * bs, bs, bs);
  }
  if (!lose){
    fill(255, 0,0);
    rect(fx*bs, fy*bs, bs, bs);
    sc = x.size();
    if (sc > h_sc){
      h_sc = sc;
    }
    textAlign(CENTER);
    textSize(20);
    fill(0);
    text("Score: "+ sc + "  High Score: "+ h_sc, 10, 10, width - 20, 50);
    if (frameCount%8 == 0){
       x.add(0, x.get(0) + x_d[d]); 
       y.add(0, y.get(0) + y_d[d]);
       if (x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= width || y.get(0) >= height){
         lose = true;
       }
       for (int i = 1; i < x.size(); i++){
         if (x.get(0) == x.get(i) && y.get(0) == y.get(i)){
           lose = true;
         }
       }
       if (x.get(0) == fx && y.get(0) == fy){
         fx = (int)random(0, width);
         fy = (int)random(0, height);
       }
       else {
         x.remove(x.size()-1);
         y.remove(y.size()-1);
       }
    }
  }
  else{
    background(0);
    if (frameCount % (int)random(1, 1000) != 0 ){
      fill(0, 255, 0);
      textSize(15);
      textAlign(CENTER);
      text("              Premere invio", width/2, height/3);
    }
    if (keyCode == ENTER){
      x.clear();
      y.clear();
      x.add(15);
      y.add(15);
      sc = 0;
      lose = false;
    }
    
  }
}

void keyPressed(){
  int dnuova = keyCode == DOWN? 0:(keyCode == UP? 1:(keyCode == RIGHT? 2:(keyCode == LEFT? 3: -1 )));
  if (dnuova != -1 && (d - dnuova != 1 || d - dnuova != -1 )){
    d = dnuova;
  }
}
