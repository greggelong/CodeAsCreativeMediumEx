void setup(){
 size(600,600);
 background(0);
 strokeWeight(1);
 
  
}


void draw(){
 background(0); 
 stroke(0,255,0);
 //float r = width/26;
 int row = 0;
 float r = width/15;
 //for (int i =0; i<= width; i+=r*2){
 //  for(int j =0; j<=height; j+=r*2){
   for (int i = 0; i<10;i+=1){
     for (int j = 0; j<10; j+=1){
     println(i);
     if (row%2 == 0){
       //hexagon(i-r,j,r,color(255,255,0));
       hexagon(i*r*1.758-r,j*r*1.5,r,color(255,255,0));
     }else{
       
     //hexagon(i,j,r,color(random(255),random(255),random(255)));
     hexagon(i*r*1.758,j*r*1.5,r,color(random(255),random(255),random(255)));
   }
    row++;
   }
  
 }
 
 noLoop();
}


void hexagon(float sx, float sy, float len, color clr){
  fill(clr);
  int outangle = 60;
  beginShape();
  // was 0 to 360 but the orientation was wrong
  // 90 to 510 0r 450 with close shape
  for (int a =90; a < 450; a+= outangle){
   float x = len * cos(radians(a))+ sx;
   float y = len * sin(radians(a))+ sy;
   vertex(x,y);
    
  }
  endShape(CLOSE);
  
}
