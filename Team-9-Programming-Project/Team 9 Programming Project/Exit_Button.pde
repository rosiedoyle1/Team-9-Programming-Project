class Exit
{
  Widget exit;
  Exit()
  {
    exit = new Widget(10, 10, 50, 30, "exit", color(#FF3939), loadFont("ArialMT-20.vlw"), EVENT_EXIT);
  }
  
  void draw()
  {
    exit.draw();
    int theEvent = exit.getEvent(mouseX, mouseY);
    if (theEvent == EVENT_EXIT && mousePressed)
    {
      screen = 1;
    }
  }
}
