// scaled the image down to 4 times smaller than the canvas
// sampling fewer pixels
// displaying to the canvas by scaling up by 4
PImage img;

int x,y;
int sz = 50;
int scaleup =4;

void setup(){
  size(400,400);
  background(127);
  img = loadImage("gregNB.png");
  img.resize(100,100);
  
  //frameRate(3);
  img.loadPixels();
}

void draw(){
 
 //background(255);
 //image(img,0,0, 401,400);
 color c = img.get(x,y); // must get the pixel x+1 y+1 or it will read teh stroke coler from the square
 //color c = img.pixels[y*width+x];
 // I could also make the read square smaller by one pixel then just read x and y and not reade the stroke
 //noFill();
 //stroke(255,0,0);
 //noStroke();
 //fill(255,0,0,20);
 //rect(x,y,sz,sz);  // red square
 fill(c);
 //println(c);
 noStroke();
  
 rect(x*scaleup,y*scaleup,sz*scaleup,sz*scaleup);
 
 // increment and check
 if (x < width/scaleup-sz){
 x = x+sz;
 }else{
 x = 0;
 if (y < height/scaleup-sz){
 y = y+sz;
 } else{
   y = 0;
   //background(127);
   //image(img,0,0, 401,400);
   if (sz > 5){
   sz = sz -2; // make the size smaller
   }else{
     sz = 50;
   }
 }
 
}
}
