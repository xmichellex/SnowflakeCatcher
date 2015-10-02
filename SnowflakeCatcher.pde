Snowflake [] white; 

void setup()
{
  size(800, 600);
  white = new Snowflake [100];
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
    white[i].lookDown();
    white[i].revive();
    white[i].wrap();
   
  }
}


class Snowflake
{
  int x, y; 
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random() * 800); 
    y = (int)(Math.random() * 600);
    isMoving = true; 
  }
  void show()
  { 
    fill(256, 256, 256);
    ellipse(x, y, 30, 30); 
   
    //basket
    noStroke(); 
    fill(102, 51, 0);
    arc(mouseX, 550, 150, 100, 0, PI); 
  }
  void lookDown()
  {
    if(y < 600 && y > 0 && get(x, y) == color(102, 51, 0)) { 
      isMoving = false;  
    }
    else {
      isMoving = true; 
    }
  }
  void revive()
  {
   if(y < 600 && y > 0 && get(x,y) == color(102, 51, 0)) {
      y = 0; 
      x = (int)(Math.random() * 800); 

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
    if(y >= 600) {
      y = 0; 
      x = (int)(Math.random() * 800); 

    }
  }
}


