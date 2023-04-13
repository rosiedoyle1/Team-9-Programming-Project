// Main 

final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_BUTTON3=3;
final int EVENT_BUTTON4=4;
final int EVENT_BUTTON5=5;
final int EVENT_BUTTON6=6;
final int EVENT_BUTTON7=7;
final int EVENT_NULL=0;
final int GAP=10;
final int radius = 15;
PImage logo;
color green = color(0, 300, 0);
color red =  color(300, 0, 0);
color blue = color(0, 0, 300);
color sqrColor = color(0);
Widget widget1, widget2, widget3, widget4, widget5, widget6, widget7;
ArrayList widgetList;

void setup()
{
  background(255);
  logo = loadImage("plane.png");
  PFont  stdFont;
  stdFont = loadFont("BaiJamjuree-SemiBold-20.vlw");
  textFont(stdFont);
  widget1 = new Widget(15, 60,  220, 215, "Group 9", color(#C6C4C4), stdFont, EVENT_BUTTON1);
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
    image(logo,70,70,70,70);
    ellipse(125,60,70,70);
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
      sqrColor = red;
      break;
    case EVENT_BUTTON2:
      println("button 2!");
      sqrColor = green;
      break;
    case EVENT_BUTTON3:
      println("button 3!");
      sqrColor = blue;
      break;
    case EVENT_BUTTON4:
      println("button 4!");
      sqrColor = blue;
      break;
       case EVENT_BUTTON5:
      println("button 5!");
      sqrColor = blue;
      break;
      case EVENT_BUTTON6:
      println("button 6!");
      sqrColor = blue;
      break;
       case EVENT_BUTTON7:
      println("button 7!");
      sqrColor = blue;
      break;
     
    }
  }
}


// Widget 

class Widget 
{
int x, y, width, height;
String label; int event;
color widgetColor, labelColor;
PFont widgetFont;
color strokeColor;

Widget(int x,int y, int width, int height, String label, color widgetColor, PFont widgetFont, int event)
{
this.x=x; this.y=y; this.width = width; this.height= height;
this.label=label; this.event=event;
this.widgetColor=widgetColor; this.widgetFont=widgetFont;
labelColor= color(0);

}

void draw()
{
stroke(strokeColor);
fill(widgetColor);
rect(x, y, width, height, radius);
fill(labelColor);
textFont(widgetFont);
text(label, x+GAP, y+height-GAP);

}

int getEvent(int mX, int mY)
{
if(mX>x && mX < x+width && mY >y && mY <y+height){
return event;
}
return EVENT_NULL;
}
}

void change()
{
  color strokeColor = color(255);
}
