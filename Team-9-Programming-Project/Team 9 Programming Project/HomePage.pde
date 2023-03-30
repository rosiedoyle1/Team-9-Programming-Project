//PImage logo;
class HomePage
{
  color green = color(0, 300, 0);
  color red =  color(300, 0, 0);
  color blue = color(0, 0, 300);
  color sqrColor = color(0);
  Widget widget1, widget2, widget3, widget4, widget5, widget6, widget7;
  ArrayList widgetList;
  //PImage logo = loadImage("plane.png");
  HomePage()
  {
    background(255);
    PFont  stdFont;
    stdFont = loadFont("ArialMT-20.vlw");
    textFont(stdFont);
    widget1 = new Widget(15, 60, 220, 215, "Group 9", color(#C6C4C4), stdFont, EVENT_BUTTON1);
    widget2 = new Widget(15, 290, 220, 395, "Flights", color(#FB4570), stdFont, EVENT_BUTTON2);
    widget3 = new Widget(250, 15, 220, 330, "Airports", color(#FFA500), stdFont, EVENT_BUTTON3);
    widget4 = new Widget(250, 360, 220, 330, "Dates", color(#F8C8DC), stdFont, EVENT_BUTTON4);
    widget5 = new Widget(485, 15, 220, 330, "Lateness", color(#77DD77), stdFont, EVENT_BUTTON5);
    widget6 = new Widget(485, 360, 455, 330, "Cancelled", color(#FDFD96), stdFont, EVENT_BUTTON6);
    widget7 = new Widget(720, 15, 220, 330, "Diverted", color(#F2A2E8), stdFont, EVENT_BUTTON7);

    size (1000, 700);
    widgetList = new ArrayList();
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
      //image(logo, 70, 70, 70, 70);
      ellipse(125, 60, 70, 70);
      color(255);
    }
  }

  void mousePressed()
  {
    int event;
    for (int i = 0; i<widgetList.size(); i++)
    {
      Widget aWidget = (Widget) widgetList.get(i);
      event = aWidget.getEvent(mouseX, mouseY);
      switch(event)
      {
      case EVENT_BUTTON1:
        println("button 1!");
        screen = 2;
        break;
      case EVENT_BUTTON2:
        println("button 2!");
        screen = 3;
        break;
      case EVENT_BUTTON3:
        println("button 3!");
        screen = 4;
        break;
      case EVENT_BUTTON4:
        println("button 4!");
        screen = 5;
      //  break;
      //case EVENT_BUTTON5:
      //  println("button 5!");
      //  sqrColor = blue;
      //  break;
      //case EVENT_BUTTON6:
      //  println("button 6!");
      //  sqrColor = blue;
      //  break;
      //case EVENT_BUTTON7:
      //  println("button 7!");
      //  sqrColor = blue;
      //  break;
      }
    }
  }
}
