Printing-Code-2014
==================
import processing.pdf.*;
boolean savePDF = false;
 float y;
 int x;
 int r;
 int a;
 
void setup() {
  size(550, 550 );
}

void draw(){
  
 if ( savePDF ) {
    beginRecord( PDF, "icecream.pdf" );

  
 background(255); 
 noStroke();
 translate(width*0.5, height*0.3);
  
  fill(0);    

  triangle(-65,110,0,300,65,110);
 
   fill(255); 
  for(r=-95; r<95; r=r+15){
    for(a=130; a<310; a=a+12)
  rect(r,a,10,10);
  }
  
  for(int y=-40;y<120;y=y+20){
      fill(0);
      ellipse(x, y, 60+0.8*y, 60); 
     }
  
 if ( savePDF ) {
  endRecord();
  savePDF = false;
 }
 }
}

void keyPressed()
{
  if ( key == 's' ) {
  savePDF = true;
 } 
}
