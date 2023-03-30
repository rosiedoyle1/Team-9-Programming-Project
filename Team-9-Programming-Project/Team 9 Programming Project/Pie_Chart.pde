class PieChart
{
  ArrayList<Float> data = new ArrayList<Float>();
  int[] angles = new int[2];
  int angle;
  String happened;
  String didntHappen;

  PieChart(ArrayList<Float> onesAndZeros, int angleInCircle, String was, String wasNot)
  {
    data = onesAndZeros;
    angle = angleInCircle;
    angles[0] = angle;
    angles[1] = 360-angle;
    happened = was;
    didntHappen = wasNot;
  }

  int[] getArray()
  {
    return angles;
  }

  void pieChart(float diameter, int[] theAngles) {
    float lastAngle = 0;
    for (int i = 0; i < theAngles.length; i++) {
      color pink;
      if (i==0)
      {
        pink = (#DE00B5);
      } else
      {
        pink = (#FF95EC);
      }
      fill(pink);
      arc(SCREENX/2, SCREENY/2, diameter, diameter, lastAngle, lastAngle+radians(theAngles[i]));
      lastAngle += radians(theAngles[i]);
      rect(MARGIN, MARGIN+(80*i), 50, 50);
      fill(pink);
      PFont theFont = loadFont("ArialMT-25.vlw");
      if (i==0)
      
      {
        textFont(theFont);
        text(happened, MARGIN, MARGIN-10);
        fill(0);
      } 
      else
      {
        textFont(theFont);
        text(didntHappen, MARGIN, MARGIN+75);
        fill(0);
      }
    }
  }
}

class MakePieChart
{
  int ones = 0;
  PieChart thePieChart;
  MakePieChart(ArrayList<Float> theArrayList, String happened, String didntHappen)
  {
    for (int i = 0; i < theArrayList.size(); i++)
    {
      if (theArrayList.get(i) == 1)
      {
        ones++;
      }
    }
    ones = (ones*360)/theArrayList.size();
    thePieChart = new PieChart(theArrayList, ones, happened, didntHappen);
  }
  
  PieChart getChart()
  {
    return thePieChart;
  }
}

class PrintPieChart
{
  MakePieChart makeChart;
  PieChart theChart;
  PrintPieChart(ArrayList a, String b, String c)
  {
    makeChart = new MakePieChart(a, b, c);
  }
  void draw()
  {
    theChart = makeChart.getChart();
    d = theChart.getArray();
    theChart.pieChart((SCREENY/6)*5, d);
  }
}
