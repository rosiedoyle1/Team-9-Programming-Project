class Exit
{
  Widget exit;

  Exit()
  {
    exit = new Widget(10, 10, 55, 40, "exit", color(#C99BFF), loadFont("Arial-BoldMT-20.vlw"), EVENT_EXIT);
  }
  
  void draw()
  {
    exit.draw();
    int theEvent = exit.getEvent(mouseX, mouseY);
    if (theEvent == EVENT_EXIT && mousePressed) {
      screen = 1;
      showData = false;
    }
  }
}
