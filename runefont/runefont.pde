import processing.pdf.*;
boolean savePDF = false;
float print_width=8.2;
float print_height=8.28;
float pic_w = 7.23;
float pic_h = 5.86;
float make_bigger=90;

import toxi.math.*;
import toxi.color.*;
import geomerative.*;
int gradientWidth = 820;
int gradientHeight = 680; 

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
  RFont font = new RFont("Roboto-Bold.ttf", 100, RFont.LEFT);

  ColorGradient gradient = new ColorGradient();

  // define the colors and where they are in the gradient
 // gradient.addColorAt(0, TColor.GREEN);
  gradient.addColorAt(gradientHeight/1.12, TColor.BLUE);
  gradient.addColorAt(gradientHeight, TColor.RED);


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
  RShape fontShape = font.toShape(" Polaroid");
  fontShape.translate(20, 680);
  RShape backgroundWithoutFont = fakeBackground.diff(fontShape);
 
  pushMatrix();
  noStroke();
 // fill(0.2, 0.05, 5);
  backgroundWithoutFont.draw();
  popMatrix();
  
  colorMode(HSB, 360, 100, 100);
  fill(0,40,0);
  translate(((print_width * make_bigger)-(pic_w*make_bigger))/2, 30);
  rect(0,0, pic_w*make_bigger, pic_h*make_bigger);

  endRecord();
}

