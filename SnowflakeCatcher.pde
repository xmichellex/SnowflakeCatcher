Snowflake [] white; 
PImage photo; 
void setup()
{
  size(800, 600);
  white = new Snowflake [100];
  for(int i = 0; i < white.length; i++) { 
    white[i] = new Snowflake(); 
  }

  photo = loadImage("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Spring_tree_Victoria_cloudy_day.jpg/800px-Spring_tree_Victoria_cloudy_day.jpg");

}
void draw()
{ 
  background(0); 
  image(photo, 0, 0);
  for(int i = 0; i < white.length; i++) {
    white[i].erase();
    white[i].lookDown();
    white[i].move(); 
    white[i].wrap();
    white[i].show();
  }
}
void mouseDragged()
{


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
    ellipse(x, y, 5, 5); 
  }
  void lookDown()
  {
    if(y < 600 && y > 0 && get(x, y) != color(0)) { 
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


