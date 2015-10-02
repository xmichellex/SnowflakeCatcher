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
  background(0); 
  for(int i = 0; i < white.length; i++) {
    white[i].erase();
    white[i].show();
    white[i].move(); 
    white[i].lookDown();
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
    ellipse(x, y, 15, 15); 
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
  void erase()
  {
    fill(0); 
    ellipse(x, y, 7, 7); 
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


