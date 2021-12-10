float sz;  // size of the rect
int randc =20;
int rows = randc;
int cols = randc;

int[] rowStich = new int[randc];   // declare, create the arrays
int[] colStich = new int[randc];

void setup() {
  size(800, 800);
  background(255,180,4);
  strokeWeight(10);
  sz = width/randc;
  stiches();
  showStiches();
  frameRate(0.5);
}

void draw(){
  background(255,180,4);
  stiches();
  showStiches();
 
 
}

void stiches() {
  for (int i=0; i<rowStich.length; i++) {
    
    rowStich[i]= floor(random(2));
    colStich[i]= floor(random(2));
  }
}

void showStiches() {
  for (int r = 0; r < randc; r++) { // for every row
    //stroke(238,8,255);
    stroke(0);
    if (rowStich[r] == 0) {
      for (int i =0; i< randc; i+=2) {  // if row stich is 0
        line(i*sz, r*sz, i*sz+sz, r*sz);
      }
    } else {
      for (int i =1; i< randc; i+=2) { // if row stich is 1
        line(i*sz, r*sz, i*sz+sz, r*sz);
      }
    }
  }


  for (int c = 0; c < randc; c++) { // for every column
   //stroke(8,249,255);
   stroke(0);
    if (colStich[c] == 0) {
      for (int i =0; i< randc; i+=2) {  // if row stich is 0
        line(c*sz, i*sz, c*sz, i*sz+sz);
      }
    } else {
      for (int i =1; i< randc; i+=2) { // if row stich is 1
        line(c*sz, i*sz, c*sz, i*sz+sz);
      }
    }
  }
}
