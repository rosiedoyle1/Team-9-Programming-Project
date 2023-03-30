class HomePage {
  Widget widget1, widget2, widget3, widget4, widget5, widget6, widget7;
  ArrayList<Widget> widgetList = new ArrayList<Widget>();
  PFont stdFont = loadFont("ArialMT-50.vlw");
  PImage thelogo = loadImage("plane.jpg");
  HomePage() 
  {
    textFont(stdFont);
    widget1 = new Widget(15, 15, 400, 300, "Group 9", color(#C6C4C4), stdFont, EVENT_BUTTON1);
    widget2 = new Widget(15, 330, 400, 590, "Flights", color(#FB4570), stdFont, EVENT_BUTTON2);
    widget3 = new Widget(430, 15, 450, 475, "Airports", color(#FFA500), stdFont, EVENT_BUTTON3);
    widget4 = new Widget(430, 500, 450, 420, "Dates", color(#F8C8DC), stdFont, EVENT_BUTTON4);
    widget5 = new Widget(890, 15, 500, 400, "Lateness", color(#77DD77), stdFont, EVENT_BUTTON5);
    widget6 = new Widget(890, 425, 500, 490, "Cancelled", color(#FDFD96), stdFont, EVENT_BUTTON6);
    widget7 = new Widget(1400, 15, 500, 450, "Diverted", color(#F2A2E8), stdFont, EVENT_BUTTON7);

    widgetList.add(widget1);
    widgetList.add(widget2);
    widgetList.add(widget3);
    widgetList.add(widget4);
    widgetList.add(widget5);
    widgetList.add(widget6);
    widgetList.add(widget7);
  }

  void draw()
  {
    for (int i = 0; i<widgetList.size(); i++)
    {
      Widget aWidget = (Widget) widgetList.get(i);
      aWidget.draw();
    }
    image(thelogo, 1400, 500);
    if (mousePressed)
    {
      for (int i = 0; i<widgetList.size(); i++)
      {
        Widget aWidget = (Widget) widgetList.get(i);
        int event = aWidget.getEvent(mouseX, mouseY);

        if (event == EVENT_BUTTON1)
        {
          screen = 1;
        } else if (event == EVENT_BUTTON2)
        {
          screen = 2;
        } else if (event == EVENT_BUTTON3)
        {
          screen = 3;
        } else if (event == EVENT_BUTTON4)
        {
          screen = 4;
        } else if (event == EVENT_BUTTON5)
        {
          screen = 5;
        } else if (event == EVENT_BUTTON6)
        {
          screen = 6;
        } else if (event ==EVENT_BUTTON7)
        {
          screen = 7;
        }
      }
    }
  }
}
