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
      color gray;
      if (i==0)
      {
        gray = (#DE00B5);
      } else
      {
        gray = (#FF95EC);
      }
      fill(gray);
      arc(SCREENX/2, SCREENY/2, diameter, diameter, lastAngle, lastAngle+radians(theAngles[i]));
      lastAngle += radians(theAngles[i]);
      rect(MARGIN, MARGIN+(80*i), 50, 50);
      fill(gray);
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
