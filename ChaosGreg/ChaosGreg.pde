float ax, ay;
float bx, by;
float cx, cy;
float tx, ty;



PImage img;

int x,y;
int sz = 200;

void setup(){
  size(400,400);
  ax = width/2;
  ay = 0;
  bx = 0;
  by = height;
  cx = width;
  cy = height;
  tx = random(width);
  ty = random(height);
  stroke(0, 255, 0);
  background(0);
  img = loadImage("gregNB.png");
  img.resize(400,400);
  strokeWeight(2);
  //frameRate(3);
  //img.loadPixels();
  println(brightness(img.get(200,200)));
  println(red(img.get(200,200)),green(img.get(200,200)),blue(img.get(200,200)));
  point(ax, ay); 
  point(bx, by);
  point(cx, cy);
  point(tx, ty);
  noCursor();
}


void draw(){
  //background(0);
  for(int i =0;i<350;i++){
  //chaos points
  point(tx, ty);
    int r = floor(random(3));
    if (r==0) {
      stroke(255, 0, 0);
      tx= lerp(tx, ax, 0.5);
      ty= lerp(ty, ay, 0.5);
    } else if (r==1) {
      stroke(0, 255, 0);
      tx= lerp(tx, bx, 0.5);
      ty= lerp(ty, by, 0.5);
    } else if (r==2) {
      stroke(0, 0, 255);
      tx= lerp(tx, cx, 0.5);
      ty= lerp(ty, cy, 0.5);
    }
  
    
    
    //greg
  x= floor(random(width));
  y= floor(random(height));
  float b = brightness(img.get(x,y));
  if(b >100){
    //stroke(b,random(b),random(b));
    stroke(255,255,0);
    point(x,y);
  }
  }
}

void mousePressed(){
  //save("chaosGreg"+frameCount+".jpg");
  background(0);
  ax = random(width);
  ay = random(height);
  bx = random(width);
  by = random(height);
  cx = random(width);
  cy = random(height);
  tx = random(width);
  ty = random(height);
  stroke(0, 255, 0);
  strokeWeight(2);
  point(ax, ay); 
  point(bx, by);
  point(cx, cy);
  point(tx, ty);
}

void keyPressed(){
  
  //save("chaosGreg"+frameCount+".jpg");
  
  
}
