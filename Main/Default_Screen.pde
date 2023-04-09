import gifAnimation.*;

class defaultBackEnd 
{
  PFont defaultFontLarge = loadFont("Consolas-BoldItalic-90.vlw");
  PFont defaultFontSmall = loadFont("Consolas-BoldItalic-45.vlw");

  void draw()
  {
    background(#fde100);
    textFont(defaultFontLarge);
    text("Team 9", 830, 100);
    textFont(defaultFontSmall);
    text("Press the space bar to continue", 615, 850);
  }
  
  void keyPressed() 
  {
    if (key == ' ') 
    {
      screen = 1;
    } 
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      screen = 1;
    }
  }
  
}
