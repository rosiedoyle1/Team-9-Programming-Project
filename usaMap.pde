class Widget2
{
  int x;
  int y;
  color fillColor = color(255);
  
  Widget2(int x, int y, color fillColor) 
  {
    this.x = x;
    this.y = y;
    this.fillColor = fillColor;
  }
  
  void draw() 
  {
    fill(fillColor);
    rect(x, y, 30, 30);
  }
}

class WidgetContainer 
{
  Widget2[] widgets = new Widget2[50];
  
  WidgetContainer() 
  {
    for (int i = 0; i < 50; i++) 
    {
      widgets[i] = new Widget2(0, 0, 255);
    }
  }
  
  void draw() 
  {
    theWidgetContainer.setPosition();
    for (int i = 0; i < 50; i++) 
    {
      widgets[i].draw();
    }
  }
  
  void setPosition() 
  {
    widgets[0].x = 180;
    widgets[0].y = 50;
    widgets[1].x = 150;
    widgets[1].y = 150; 
    widgets[2].x = 90;
    widgets[2].y = 350;
    widgets[3].x = 200;
    widgets[3].y = 260;
    widgets[4].x = 330;
    widgets[4].y = 430;
    widgets[5].x = 500;
    widgets[5].y = 460;
    widgets[6].x = 700;
    widgets[6].y = 550; 
    widgets[7].x = 920;
    widgets[7].y = 550; 
    widgets[8].x = 1010;
    widgets[8].y = 500;
    widgets[9].x = 1110;
    widgets[9].y = 500;
    widgets[10].x = 1210;
    widgets[10].y = 500;
    widgets[11].x = 1300;
    widgets[11].y = 630;
    widgets[12].x = 1280;
    widgets[12].y = 460;
    widgets[13].x = 1340;
    widgets[13].y = 400;
    widgets[14].x = 1330;
    widgets[14].y = 340;
    widgets[15].x = 1330;
    widgets[15].y = 250;
    widgets[16].x = 1380;
    widgets[16].y = 180;
    widgets[17].x = 1510;
    widgets[17].y = 80;
    widgets[18].x = 300;
    widgets[18].y = 160;
    widgets[19].x = 350;
    widgets[19].y = 310;
    widgets[20].x = 520;
    widgets[20].y = 330;
    widgets[21].x = 730;
    widgets[21].y = 360;
    widgets[22].x = 770;
    widgets[22].y = 440;
    widgets[23].x = 900;
    widgets[23].y = 360;
    widgets[24].x = 920;
    widgets[24].y = 460;
    widgets[25].x = 1100;
    widgets[25].y = 420;
    widgets[26].x = 1150;
    widgets[26].y = 370;
    widgets[27].x = 1250;
    widgets[27].y = 330;
    widgets[28].x = 470;
    widgets[28].y = 100;
    widgets[29].x = 490;
    widgets[29].y = 220;
    widgets[30].x = 690;
    widgets[30].y = 270;
    widgets[31].x = 870;
    widgets[31].y = 260;
    widgets[32].x = 1000;
    widgets[32].y = 310;
    widgets[33].x = 1090;
    widgets[33].y = 310;
    widgets[34].x = 1180;
    widgets[34].y = 290;
    widgets[35].x = 700;
    widgets[35].y = 110;
    widgets[36].x = 700;
    widgets[36].y = 190;
    widgets[37].x = 840;
    widgets[37].y = 140;
    widgets[38].x = 970;
    widgets[38].y = 190;
    widgets[39].x = 1110;
    widgets[39].y = 210;
    widgets[40].x = 200;
    widgets[40].y = 610;
    widgets[41].x = 1700;
    widgets[41].y = 50;
    widgets[42].x = 1700;
    widgets[42].y = 90;
    widgets[43].x = 1700;
    widgets[43].y = 130;
    widgets[44].x = 1700;
    widgets[44].y = 170;
    widgets[45].x = 1700;
    widgets[45].y = 210;
    widgets[46].x = 1700;
    widgets[46].y = 250;
    widgets[47].x = 1700;
    widgets[47].y = 290;
    widgets[48].x = 1700;
    widgets[48].y = 330;
    widgets[49].x = 1700;
    widgets[49].y = 370;
  }
}

class usaMap
{
  PImage Map;
  usaMap() 
  {
 
  }

  void setup()
  {
     Map = loadImage("colourMap.png");
     Map.resize((SCREENX/6)*5, (SCREENY/6)*5);
  }
  void draw() 
  {
    theMap.setup();
    image(Map, 0, 0);
  }
}
