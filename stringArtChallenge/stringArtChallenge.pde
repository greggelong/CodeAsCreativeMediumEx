float offset;
int step = 20;
int i =0;

void setup(){
  size(700,700);
  background(0);
  stroke(0,255,0);
  strokeWeight(3);
  offset = height/step;
  frameRate(5);
  
}

void draw(){
  fill(0,20);
  rect(0,0,width,height);
   //bottom left
   stroke(0,255,0);
   line(10,i*offset-10,(i*offset)+10,height-10);
   //bottom right
   stroke(255,255,0);
   line(width-10,i*offset-10,width-(i*offset+10),height-10);
   //top right
   stroke(255,0,0);
   line(width-10,height-(i*offset-10),width-(i*offset+10),10);
   //top left
   stroke(0,0,255);
   line(10,height-(i*offset-10),(i*offset+10),10);
   // iterate
   if(i<step){
     i++;
   }else{
     i=0;
   }
}
