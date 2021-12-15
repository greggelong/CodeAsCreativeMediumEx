float[] x = new float[1];
float[] y = new float[1];
boolean wiggle = false;
float off = 0;
void setup() {
  size(800,800);
  stroke(255,255,0);
  strokeWeight(2);
  fill(255,255,0);
  //x[0]=width/2;
  //y[0]=height/2;
  //frameRate(30);
}

void draw() {
  background(0);
  
   
  noFill();
  //draw 1
  stroke(255,255,0);
  strokeWeight(10); 
  beginShape();
  for (int i = 1; i < x.length; i++) {// dont use the first index as it is zero and will draw a line to corner
   if (!wiggle){
    off = 0; 
   } else {
     
     off = random(-5,5);
   }
    vertex(x[i]+off,y[i]+off);
  }
  endShape();
  
  //draw 2
  beginShape();
  stroke(186,0,255,190);
  strokeWeight(10);
  for (int i = 1; i < x.length; i++) {// dont use the first index as it is zero and will draw a line to the corner
    
    float bx = map(x[i],0,width, width,0);
    float by = map(y[i],0,height,height,0);
    
    if (!wiggle){
    off = 0; 
   } else {
     
     off = random(-5,5);
   }
    vertex(bx+off,by+off);
    
  }
  endShape();
  
  // draw circles 
  noStroke();
  float ball1x = x[frameCount%x.length];
  float ball1y = y[frameCount%y.length];
  float ball2x = map(ball1x,0,width, width,0);
  float ball2y = map(ball1y,0,height,height,0);
  fill(186,0,255,120);
  ellipse(ball1x,ball1y,random(50,250),random(50,250));
  fill(255,255,0,120);
  ellipse(ball2x,ball2y,random(50,250),random(50,250));
}

void mouseDragged(){
  x=append(x,mouseX);
  y=append(y,mouseY);
}

void keyPressed(){
  if(key == ' '){
    background(0);
    x = new float[1];
    y = new float[1];
  }
  if(key == 's'){
    save("mylines"+frameCount+".jpg");
  }
  
  if(key == 'w' && !wiggle){
    wiggle = true;
    
  }
  else if(key =='w' && wiggle){
    wiggle = false;
  }
  
}
