Printing-Code-2014
==================
import processing.pdf.*;
float print_width=8.5;
float print_height=11;
float make_bigger=100;


void setup()
{
  size(round(print_width * make_bigger), round(print_height *make_bigger));
  beginRecord(PDF, "cattube.pdf");
  size(500, 500);
  smooth();
  background(245);
  noStroke();

  translate(width/2, height/3);

  fill(0);
  beginShape();
  vertex(-30, -75); //b
  vertex(-25, -50); //c ear(L)'
  vertex(25, -50);  //a'
  vertex(30, -75);   //b'
  vertex(45, -50);  //c'
  vertex(60, 75);
  vertex(-60, 75);
  vertex(-45, -50); //a ear(L) 
  endShape();

  fill(255, 255, 30);  
  ellipse(-25, -15, 20, 10); //eye
  ellipse(25, -15, 20, 10);
  triangle(-2, -10, 2, -10, 0, -5); //nose


  stroke(255); 
  strokeWeight(2);  
  line(-55, 10, -40, 0);
  line(55, 10, 40, 0);
  line(-55, -15, -40, -10);
  line(55, -15, 40, -10);

  stroke(255); //mouth ...
  strokeWeight(2);  
  beginShape();
  noFill();
  vertex(-15, 5);
  bezierVertex(-10, -5, 35, 0, 25, 0);
  endShape();

  noStroke();
  fill(0);
  ellipse(-30, -20, 5, 15); //eyeball
  ellipse(20, -20, 5, 15);  //eyeball'

  ///bathtub ///

  stroke(0); 
  strokeWeight(10);  
  beginShape();
  noFill();
  vertex(-140, 50);
  bezierVertex(-60, 70, 60, 70, 140, 50);
  endShape();

  fill(255);
  beginShape();
  vertex(-120, 60);
  bezierVertex(-60, 75, 60, 75, 120, 60);
  bezierVertex(115, 85, 105, 95, 100, 140 );
  bezierVertex(100, 160, -100, 160, -100, 140);
  bezierVertex(-115, 85, -105, 95, -120, 60);
  endShape();

  beginShape();
  vertex(-80, 160);
  vertex( -80, 165);
  vertex( -70, 165);
  vertex(-70, 160);
  endShape();

  beginShape();
  vertex(80, 160);
  vertex(80, 165);
  vertex(70, 165);
  vertex(70, 160);
  endShape();

  //water
  noStroke();
  fill(0);
  ellipse(-120, 240, 40, 20);
  ellipse(100, 200, 20, 10);
  ellipse(-40, 200, 240, 60);

  endRecord();
}

