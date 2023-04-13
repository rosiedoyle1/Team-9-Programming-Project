class Widget
{
  int x, y, width, height;
  String label;
  int event;
  color widgetColor, labelColor;
  PFont widgetFont;
  color strokeColor;

  Widget(int x, int y, int width, int height, String label, color widgetColor, PFont widgetFont, int event)
  {
    this.x=x;
    this.y=y;
    this.width = width;
    this.height= height;
    this.label=label;
    this.event=event;
    this.widgetColor=widgetColor;
    this.widgetFont=widgetFont;
    labelColor= color(0);
  }

  void draw()
  {
    fill(widgetColor);
    if (event<9)
    {
      rect(x, y, width, height, radius);
      stroke(strokeColor);
    } else
    {
      rect(x, y, width, height);
      stroke(0);
    }
    fill(labelColor);
    textFont(widgetFont);
    text(label, x+GAP, y+height-GAP);
  }

  int getEvent(int mX, int mY)
  {
    if (mX>x && mX < x+width && mY >y && mY <y+height) {
      return event;
    }
    return EVENT_NULL;
  }
  boolean isMouseOver() {
    return mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height;
  }
}
