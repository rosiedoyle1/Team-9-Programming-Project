class HomePage {
  Widget widget1, widget2, widget3, widget4, widget5, widget6, widget7;
  ArrayList<Widget> widgetList = new ArrayList<Widget>();
  PFont stdFont = loadFont("Calibri-Bold-34.vlw");
  PImage thelogo = loadImage("planeLogo.png");
  HomePage() 
  {
    textFont(stdFont);
    //widget1 = new Widget(15, 15, 400, 300, "Group 9", color(204, 242, 255, 175), stdFont, EVENT_BUTTON1);
    widget2 = new Widget(15, 370, 400, 560, "Carriers", color(230, 240, 255, 175), stdFont, EVENT_BUTTON2);
    widget3 = new Widget(15, 25, 860, 335, "Airports", color(153, 194, 255, 175), stdFont, EVENT_BUTTON3);
    widget4 = new Widget(430, 370, 450, 560, "Dates", color(153, 221, 255, 175), stdFont, EVENT_BUTTON4);
    widget5 = new Widget(890, 15, 500, 400, "Lateness", color(179, 204, 255, 175), stdFont, EVENT_BUTTON5);
    widget6 = new Widget(890, 425, 500, 500, "Destination Popularity", color(179, 240, 255, 175), stdFont, EVENT_BUTTON6);
    widget7 = new Widget(1400, 15, 500, 450, "Cancelled Flights", color(153, 204, 255, 175), stdFont, EVENT_BUTTON7);

    //widgetList.add(widget1);
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
