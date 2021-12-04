void setup(){
  size(1050,1000);
  fill(255,0,0);
  rectMode(CENTER);
  hexagon(500,500,500, color(255,0,0));
  noFill();
  ellipse(500,500,500*2,500*2);
  point(500,500);
  line(500,500,500,500+500);
  //line(500,500,width,500);
  line(500,500,500+(500/2*sqrt(3)),500);
 
 
}



void hexagon(float sx, float sy, float len, color clr){
  fill(clr);
  float outangle = 60;
  beginShape();
  // was 0 to 360 but the orientation was wrong
  // 90 to 510 0r 450 with close shape
  for (int a =90; a <= 450; a+= outangle){
   float x = len * cos(radians(a))+ sx;
   float y = len * sin(radians(a))+ sy;
   vertex(x,y);
    
  }
  endShape(CLOSE);
 
}
