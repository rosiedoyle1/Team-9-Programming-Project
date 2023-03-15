class Ball
{
  float x; float y;
  float dx; float dy;
  color ballColour = color(0);
  
  Ball()
  {
    x = random(SCREENX/4, SCREENX/2);
    y = random(SCREENY/4, SCREENY/2);
    dx = random(2, 4); dy = random(2, 4);
  }
 
  void move()
  {
    x = x+dx; y = y+dy;
  }
  void draw()
  {
    fill(ballColour);
    ellipse(int(x), int(y), BALLRADIUS, BALLRADIUS);
    if (y+BALLRADIUS<0 || y-BALLRADIUS>SCREENY)
    {
      PFont restartFont = loadFont("Algerian-55.vlw");
      textFont(restartFont);
      text("click to restart", 60, 270);
      aiTracker = 275;
        
      if (mousePressed)
      {
        setup();
      }
    }
  }
  void collide (Player tp)
  {
    if(y+BALLRADIUS>=tp.yPosition && y-BALLRADIUS<tp.yPosition+PADDLEHEIGHT && x>=tp.xPosition+PADDLEHEIGHT && x<=tp.xPosition+PADDLEWIDTH)
    {
      println("Collided!!! <3");
      dy=-dy;
    }
    if(x-BALLRADIUS<=0) dx=-dx;
    else if (x+BALLRADIUS>=SCREENX) dx=-dx;
  }
  void collideComp (Player AI)
  {
    if(y+BALLRADIUS>=AI.yPosition && y-BALLRADIUS<AI.yPosition+PADDLEHEIGHT && x>=AI.xPosition+PADDLEHEIGHT && x<=AI.xPosition+PADDLEWIDTH)
    {
      dy=-dy;
      println("The robots are taking over :(");
    } 
  }
}
