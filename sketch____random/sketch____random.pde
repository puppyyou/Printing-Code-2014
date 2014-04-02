int width =600;
int height=800;
int bo= width/12;  //border
int a, b, c, A, B;
float a_x;

void setup()
{

  size(width, height);
  background(22, 117, 200);
  noStroke();

  fill(239, 62, 55);


  for (a=3; a<=5; a=a+1) {
    for (b=0; b<= 5; b=b+1) {
      for (A=1;A<=10;A++) {
        
        A= 2*(width-bo*2)/(a);
        a_x= A*0.5;
        B= b*a + ((width-bo*2)/(a));
 
      }
    }
  }
        arc(a_x, B, A, A, 0, PI);
        arc(a_x+A, B, A, A, 0, PI);
        arc(a_x+2*A, B, A, A, 0, PI);

  //   arc(84+bo, 150, 84*2, 84*2, 0, PI);
  //   test test 123
}

