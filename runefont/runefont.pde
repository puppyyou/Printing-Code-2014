import processing.pdf.*;
boolean savePDF = false;
float print_width=8;
float print_height=3.2;
float make_bigger=100;

import toxi.math.*;
import toxi.color.*;
import geomerative.*;
int gradientWidth = 1200;
int gradientHeight = 400; 

void setup() 
{
  size(round(print_width * make_bigger), round(print_height *make_bigger));
  beginRecord(PDF, "SORRY_GB1.pdf"); 
  //  size(1021, 378);
  background(255);
  smooth();
  noStroke();

  colorMode(HSB, 1, 2, 1);
  
  RG.init(this);
  RFont font = new RFont("Outwrite.ttf", 100, RFont.LEFT);

  ColorGradient gradient = new ColorGradient();

  // define the colors and where they are in the gradient
  gradient.addColorAt(0, TColor.WHITE);
  gradient.addColorAt(gradientHeight/1.5, TColor.BLUE);
  gradient.addColorAt(gradientHeight, TColor.BLUE);


  ColorList colors = gradient.calcGradient(0, gradientWidth);
  int yPos = 0;

  for (int i = 0; i < gradientWidth; i++)
  {
    TColor c = colors.get(i);
    stroke(c.hue(), c.saturation(), c.brightness());
    line(0, yPos, gradientWidth, yPos );
    yPos+=1;
  }
  
  RShape fakeBackground = RShape.createRectangle(0, 0, width, height);
  RShape fontShape = font.toShape(" S O R R Y");
  fontShape.translate(200, 200);
  RShape backgroundWithoutFont = fakeBackground.diff(fontShape);
 
  noStroke();
  fill(0, 1, 1);
  backgroundWithoutFont.draw();

  endRecord();
}

