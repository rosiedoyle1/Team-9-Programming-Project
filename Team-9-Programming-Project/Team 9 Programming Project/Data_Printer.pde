class DataPrinter {
  DataPrinter(int x, int y)
  {
    a = x;
    b = y;
  }
  
  void print()
  {
    for (int i = 0; i < dataPoints.size(); i++)
    {
      PFont theFont = loadFont("ArialMT-10.vlw");
      textSize(20);
      textFont(theFont);
      textAlign(LEFT);
      DataPoint dp = dataPoints.get(i);
      fill(255);
      text(dp.toString(), a, b);
      fill(255);
      if ((i+1)%3 ==0 && i>=2)
      {
        b = 20;
        a = a+200;
      } else
      {
        b = b + 225;
      }
    }
  }
  void keyPressed()
  {
    if (keyCode == RIGHT)
    {
      a -= 10;
    }
  }
}
