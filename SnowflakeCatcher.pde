Snowflake [] white; 

void setup()
{
  size(500, 500);
  white = new Snowflake [30];
  for(int i = 0; i < white.length; i++) { 
    white[i] = new Snowflake(); 
  }

 

}
void draw()
{ 
  background(128, 128, 128); 
  for(int i = 0; i < white.length; i++) {
    white[i].show();
    white[i].move(); 
    white[i].revive();
    white[i].wrap();
   
  }
}


class Snowflake
{
  int x, y, length; 
  boolean isMoving;
  float l, circleW, w; 

  Snowflake()
  {
    x = (int)(Math.random() * 500); 
    y = (int)(Math.random() * 500);
    isMoving = true; 
    length = 10; 
    l = length*(sqrt(3)/2);
    w = length/2;
    circleW = length/8;
  }
  void show()
  { 
    stroke(143, 253, 255);
    fill(143, 253, 255);
    strokeWeight(5);
    line(x + w, y + l, x - w, y - l); 
    line(x - w, y + l, x + w, y - l); 
    line(x + length, y, x - length, y);
    ellipse(x + w + circleW, y + l + circleW, circleW, circleW); 
    ellipse(x - w - circleW, y - l - circleW, circleW, circleW);
    ellipse(x - w - circleW, y + l + circleW, circleW, circleW); 
    ellipse(x + w + circleW, y - l - circleW, circleW, circleW); 
    ellipse(x + length + circleW, y, circleW, circleW); 
    ellipse(x - length - circleW, y, circleW, circleW);
   
    //basket
    noStroke(); 
    fill(102, 51, 0);
    rect(mouseX, 470, 30, 30); 
  }

  void revive()
  {
   if(y < 500 && y > 0 && get(x,y) == color(102, 51, 0)) {
      y = 0; 
      x = (int)(Math.random() * 500); 

   }
  }
  void move()
  {

    if(isMoving == true) { 
      y++;
    } 
  }
  void wrap()
  {
    if(y >= 500) {
      y = 0; 
      x = (int)(Math.random() * 500); 

    }
  }
}


