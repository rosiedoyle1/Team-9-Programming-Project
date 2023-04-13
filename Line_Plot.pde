class LinePlot
{
  ArrayList<Integer> expected;
  ArrayList<Integer> actual;
  int amount;
  PFont font = loadFont("ArialMT-50.vlw");
  int hour;
  int minute;
  String title;
  String xAxis;
  String yAxis;
  PFont titleFont = loadFont("ArialMT-50.vlw");
  PFont theFont = loadFont("ArialMT-25.vlw");
  int dotGap = (SCREENX-(2*MARGIN))/80;
  HashMap<Integer, Integer> timeVsAmount = new HashMap<Integer, Integer>();

  LinePlot(ArrayList<Integer> expectedArrival, ArrayList<Integer> actualArrival, String theTitle, String xLabel, String yLabel)
  {
    title = theTitle;
    xAxis = xLabel;
    yAxis = yLabel;
    expected = expectedArrival;
    actual = actualArrival;
  }

  void findDifference()
  {
    for (int time=5; time<400; time=time+5)
    {
      amount = 0;
      for (int i=0; i<expected.size(); i++)
      {
        int difference = actual.get(i)-expected.get(i);
        if (difference>time-5 && difference<=time)
        {
          amount++;
        }
      }
      seperateByTime.add(amount);
    }
    while (seperateByTime.size()>400/5-1)
    {
      seperateByTime.remove(seperateByTime.size()-1);
    }
  }
  
  void draw() {
    stroke(0);
    line(MARGIN, SCREENY - MARGIN + 10, MARGIN, MARGIN);
    stroke(0);
    line(MARGIN - 10, SCREENY - MARGIN, SCREENX - MARGIN, SCREENY - MARGIN);
    stroke(0);
    textFont(titleFont);
    fill(0);
    text(title, SCREENX / 3, MARGIN - 70);
    textFont(theFont);
    text(yAxis, 0, SCREENY / 2);
    fill(0);
    text(xAxis, SCREENX / 2 - 100, SCREENY - MARGIN + 40);
    fill(0);

    // Calculate the maximum number of flights that were late
    int maxAmount = 0;
    for (int i = 0; i < seperateByTime.size(); i++) {
      int thisDot = seperateByTime.get(i);
      if (thisDot > maxAmount) {
        maxAmount = thisDot;
      }
    }

    // Calculate the scaling factor for the height
    float scalingFactor = (SCREENY - 2 * MARGIN) / (float) maxAmount;

    for (int i = 0; i < seperateByTime.size(); i++) {
      int thisDot = seperateByTime.get(i);
      int dotHeight = (int) (thisDot * scalingFactor);
      Widget linePlotWidget = new Widget(MARGIN + (dotGap * (i + 1)) - 4, SCREENY - MARGIN - dotHeight - 4, 8, 8, "", 0, theFont, -(i + 1));
      linePlotWidget.draw();
      int a = linePlotWidget.getEvent(mouseX, mouseY);
      if (a == -(i + 1)) {
        fill(255);
        rect(SCREENX-420, SCREENY/6-60, 400, 140, 25);
        textFont(titleFont);
        fill(0);
        text(Integer.toString((i*5)) + " to " + Integer.toString((i+1)*5) + " mins:", SCREENX-400, SCREENY/6);
        text(Integer.toString(thisDot) + " Flights", SCREENX-400, SCREENY/6+50);
      }
      if (i > 0) {
        int lastDot = seperateByTime.get(i - 1);
        int lastDotHeight = (int) (lastDot * scalingFactor);
        stroke(0);
        line(MARGIN + (dotGap * i), SCREENY - MARGIN - lastDotHeight, MARGIN + (dotGap * (i + 1)), SCREENY - MARGIN - dotHeight);
      }
    }
  }

  //void draw()
  //{
  //  stroke(0);
  //  line(MARGIN, SCREENY-MARGIN+10, MARGIN, MARGIN);
  //  stroke(0);
  //  line(MARGIN-10, SCREENY-MARGIN, SCREENX-MARGIN, SCREENY-MARGIN);
  //  stroke(0);
  //  textFont(titleFont);
  //  fill(0);
  //  text(title, SCREENX/3, MARGIN-70);
  //  textFont(theFont);
  //  text(yAxis, 0, SCREENY/2);
  //  fill(0);
  //  text(xAxis, SCREENX/2-100, SCREENY-MARGIN+40);
  //  fill(0);
  //  for (int i=0; i<seperateByTime.size(); i++)
  //  {
  //    int thisDot = seperateByTime.get(i);
  //    Widget linePlotWidget = new Widget(MARGIN+(dotGap*(i+1))-4, SCREENY-MARGIN-(5*thisDot)-4, 8, 8, "", 0, theFont, -(i+1));
  //    linePlotWidget.draw();
  //    int a = linePlotWidget.getEvent(mouseX, mouseY);
  //    if(a == -(i+1))
  //    {
  //      textFont(titleFont);
  //      fill(0);
  //      text(Integer.toString(i*30) + " to " + Integer.toString((i-1)*30) + " mins:", SCREENX-400, SCREENY/2);
  //      text(Integer.toString(seperateByTime.get(i)), SCREENX-400, (SCREENY/2)+50);
  //    }
  //    if (i>0)
  //    {
  //      int lastDot = seperateByTime.get(i-1);
  //      stroke(0);
  //      line(MARGIN+(dotGap*(i)), SCREENY-MARGIN-(5*lastDot), MARGIN+(dotGap*(i+1)), SCREENY-MARGIN-(5*thisDot));
  //    }
  //  }
  //}
}
