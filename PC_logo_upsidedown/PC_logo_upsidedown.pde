import processing.pdf.*;
boolean savePDF = false;

//magic number
float pic_w = 420;
float pic_h = 375;
float width=560;
float height=585;

import toxi.math.*;
import toxi.color.*;
import geomerative.*;

int gradientWidth = 820;
float gradientHeight =height; 

void setup() 
{
  size(round(width), round(height));
  beginRecord(PDF, "LOGO_Y_N.pdf"); 
  //  size(1021, 378);
  background(25);
  smooth();
  noStroke();


  colorMode(HSB, 1, 1, 1);

  RG.init(this);
  RFont font = new RFont("Roboto-Bold.ttf", 100, RFont.LEFT);

  ColorGradient gradient = new ColorGradient();

  // define the colors and where they are in the gradient
  gradient.addColorAt(0, TColor.YELLOW);
  gradient.addColorAt(gradientHeight/3.5, TColor.WHITE);
  //gradient.addColorAt(gradientHeight, TColor.RED);
  ColorList colors = gradient.calcGradient(0, gradientWidth);
  int yPos = 0;

  for (int i = 0; i < gradientWidth; i++)
  {
    TColor c = colors.get(i);
    stroke(c.hue(), c.saturation(), c.brightness());
    line(0, yPos, gradientWidth, yPos );
    yPos+=1;
  }



  RShape fakeBackground = RShape.createRectangle(0, 0, width, height/2);
  RShape fontShape = font.toShape(" KICKING");
  fontShape.translate((width-pic_w)*0.5, (width-pic_w));
  RShape backgroundWithoutFont = fakeBackground.diff(fontShape);
  noStroke();
  //fill(0, 1, 1);

  RShape fakeBackground1 = RShape.createRectangle(0, 0,width/2, -height/2);
  RShape fontShape1 = font.toShape("AND");
  fontShape1.translate(0, (width-pic_w)*2);
  RShape backgroundWithoutFont1 = fakeBackground1.diff(fontShape1);
  noStroke();
  fill(0, 1, 1);
  
  backgroundWithoutFont.draw();
  backgroundWithoutFont1.draw();


  //  pushMatrix();
  //  colorMode(HSB, 360, 100, 100);
  //  fill(10, 70, 80);
  //  translate((width-pic_w)/2, (width-pic_w));
  //  rect(0, 0, pic_w, pic_h);
  //  popMatrix();



  endRecord();
}

