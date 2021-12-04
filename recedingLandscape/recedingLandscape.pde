float stop;
float sbtm;
float sp;
int lns =60;
float h;

void setup(){
  size(600,600);
  //fullScreen();
  background(0);
  stroke(0,255,0);
  sp= width/lns;
  
  sbtm = 10;
  h=0;
  
}

void draw(){
  
  background(0);
  h= map(mouseY,0,height,0,height-height/4);
  sbtm = map(mouseX,0,width,10,60);
  noFill();
  ellipse(width-width/4,h-height/4,height/5,height/5);
  rect(frameCount%width,h-height/9,height/5,height/20);
  for(int i=0;i<lns;i++){
    line(i*sp,h,(i-lns/2)*sp*sbtm,height);
  }
}
