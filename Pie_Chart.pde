int chartNumber = 5;
class ArrayPieChart
{
  Set<String> toGetUnique;
  ArrayList<String> unique = new ArrayList<String>();
  HashMap<String, Integer> variableVsAmount = new HashMap<>();
  HashMap<String, Integer> inPieChart = new HashMap<>();
  ArrayList<String> temp = new ArrayList<String>();

  ArrayPieChart(ArrayList<String> variables)
  {
    toGetUnique = new HashSet<String>();
    toGetUnique.addAll(variables);
    unique.addAll(toGetUnique);
    for (String temp : variables)
    {
      if (variableVsAmount.containsKey(temp))
      {
        int count = variableVsAmount.get(temp);
        variableVsAmount.put(temp, count + 1);
      } else
      {
        variableVsAmount.put(temp, 1);
      }
    }
  }

  void pieChart(int[] data)
  {
    float lastAngle = 0;
    for (int i = 0; i < data.length; i++)
    {
      color fillColor = color((67*i)%255, (50*i)%255, (93*i)%255);
      fill(fillColor);
      rect(SCREENX-400, 100+(i*40), 40, 40);
      textFont(loadFont("ArialMT-20.vlw"));
      text(temp.get(i), SCREENX-345, 125+(i*40));
      text(variableVsAmount.get(temp.get(i)) + " Flights", SCREENX-550, 125+(i*40));
      arc(width/2, height/2, SCREENY*4/5, SCREENY*4/5, lastAngle, lastAngle+radians(data[i]));
      lastAngle += radians(data[i]);
    }
  }
  
  int[] getAngleArray(int amountOfVariables)
  {
    temp.clear();
    int sumOfValues = 0;
    int[] angleArray = new int[amountOfVariables];
    for (int i = 0; i < amountOfVariables && !variableVsAmount.isEmpty(); i++)
    {
      String maxKey = Collections.max(variableVsAmount.entrySet(), Map.Entry.comparingByValue()).getKey();
      int maxValue = variableVsAmount.get(maxKey);
      variableVsAmount.remove(maxKey);
      inPieChart.put(maxKey, maxValue);
    }
    variableVsAmount.putAll(inPieChart);
    for (int i=0; i<unique.size(); i++)
    {
      if (inPieChart.containsKey(unique.get(i)))
      {
        sumOfValues += inPieChart.get(unique.get(i));
        temp.add(unique.get(i));
      }
    }
    for (int i=0; i<temp.size(); i++)
    {
      int angle = ((inPieChart.get(temp.get(i))*360)/sumOfValues)+1;
      angleArray[i] = angle;
    }
    return angleArray;
  }

  void draw()
  {
    textFont(loadFont("ArialMT-40.vlw"));
    text("Number Of Cities:", 350, SCREENY-30);
    Widget fiveVariables = new Widget(SCREENX/2-190, SCREENY-70, 50, 50, "5", color(#FF03E2), loadFont("ArialMT-25.vlw"), 10);
    Widget tenVariables = new Widget(SCREENX/2-90, SCREENY-70, 50, 50, "10", color(#FF03E2), loadFont("ArialMT-25.vlw"), 15);
    Widget fifteenVariables = new Widget(SCREENX/2+10, SCREENY-70, 50, 50, "15", color(#FF03E2), loadFont("ArialMT-25.vlw"), 20);
    Widget twentyVariables = new Widget(SCREENX/2+110, SCREENY-70, 50, 50, "20", color(#FF03E2), loadFont("ArialMT-25.vlw"), 25);
    fiveVariables.draw();
    tenVariables.draw();
    fifteenVariables.draw();
    twentyVariables.draw();
    int a = 0;
    int b = 0;
    int c = 0;
    int d = 0;
    int[] angles;
    switch(chartNumber)
    {
    case 5:
      angles = getAngleArray(5);
      println(angles);
      pieChart(angles);
      if (mousePressed)
      {
        b = tenVariables.getEvent(mouseX, mouseY);
        println(b);
        c = fifteenVariables.getEvent(mouseX, mouseY);
        d = twentyVariables.getEvent(mouseX, mouseY);
        if (b==15)
        {
          chartNumber = 10;
        }
        if (c==20)
        {
          chartNumber = 15;
        }
        if (d==25)
        {
          chartNumber = 20;
        }
      }
      break;
    case 10:
      angles = getAngleArray(10);
      println(angles);
      pieChart(angles);
      if (mousePressed)
      {
        a = fiveVariables.getEvent(mouseX, mouseY);
        c = fifteenVariables.getEvent(mouseX, mouseY);
        d = twentyVariables.getEvent(mouseX, mouseY);
        if (a==10)
        {
          chartNumber = 5;
        }
        if (b==15)
        {
          chartNumber = 10;
        }
        if (c==20)
        {
          chartNumber = 15;
        }
        if (d==25)
        {
          chartNumber = 20;
        }
      }
      break;
    case 15:
      angles = getAngleArray(15);
      println(angles);
      pieChart(angles);
      if (mousePressed)
      {
        a = fiveVariables.getEvent(mouseX, mouseY);
        b = tenVariables.getEvent(mouseX, mouseY);
        d = twentyVariables.getEvent(mouseX, mouseY);
        if (a==10)
        {
          chartNumber = 5;
        }
        if (b==15)
        {
          chartNumber = 10;
        }
        if (d==25)
        {
          chartNumber = 20;
        }
      }
      break;
    case 20:
      angles = getAngleArray(20);
      pieChart(angles);
      if (mousePressed)
      {
        a = fiveVariables.getEvent(mouseX, mouseY);
        b = tenVariables.getEvent(mouseX, mouseY);
        c = fifteenVariables.getEvent(mouseX, mouseY);
        if (a==10)
        {
          chartNumber = 5;
        }
        if (b==15)
        {
          chartNumber = 10;
        }
        if (c==20)
        {
          chartNumber = 15;
        }
      }
      break;
    default:
      angles = getAngleArray(5);
      pieChart(angles);
      if (mousePressed)
      {
        b = tenVariables.getEvent(mouseX, mouseY);
        c = fifteenVariables.getEvent(mouseX, mouseY);
        d = twentyVariables.getEvent(mouseX, mouseY);
        if (b==15)
        {
          chartNumber = 10;
        }
        if (c==20)
        {
          chartNumber = 15;
        }
        if (d==25)
        {
          chartNumber = 20;
        }
      }
    }
  }
}

class PieChartTwo
{
  ArrayList<Float> data = new ArrayList<Float>();
  int[] angles = new int[2];
  int angle;
  String happened;
  String didntHappen;
  float location;
  color bigSegment;
  color smallSegment;

  PieChartTwo(ArrayList<Float> onesAndZeros, int angleInCircle, String was, String wasNot, float place, color colour1, color colour2)
  {
    bigSegment = colour1;
    smallSegment = colour2;
    data = onesAndZeros;
    angle = angleInCircle;
    angles[0] = angle;
    angles[1] = 360-angle;
    happened = was;
    didntHappen = wasNot;
    location = place;
  }

  int[] getArray()
  {
    return angles;
  }

  void pieChart(float diameter, int[] theAngles) {
    float lastAngle = 0;
    for (int i = 0; i < theAngles.length; i++) {
      for (int a = 0; a<2; a++)
      {
        if (a == 0)
        {
          fill(bigSegment);
          arc(SCREENX/location, SCREENY/2, diameter, diameter, lastAngle, lastAngle+radians(theAngles[i]));
          lastAngle += radians(theAngles[i]);
        } else if (a==1)
        {
          fill(smallSegment);
          arc(SCREENX/location, SCREENY/2, diameter, diameter, lastAngle, lastAngle+radians(theAngles[i]));
          lastAngle += radians(theAngles[i]);
        }
      }
    }
  }
}

class MakePieChart
{
  int ones = 0;
  PieChartTwo ThePieChart;
  MakePieChart(ArrayList<Float> theArrayList, String happened, String didntHappen, float place, color colour1, color colour2)
  {
    for (int i = 0; i < theArrayList.size(); i++)
    {
      if (theArrayList.get(i) == 1)
      {
        ones++;
      }
    }
    ones = (ones*360)/theArrayList.size();
    ThePieChart = new PieChartTwo(theArrayList, ones, happened, didntHappen, place, colour1, colour2);
  }

  PieChartTwo getChart()
  {
    return ThePieChart;
  }
}

class PrintPieChart
{
  MakePieChart makeChart;
  PieChartTwo theChart;
  PrintPieChart(ArrayList a, String b, String c, float place, color colour1, color colour2)
  {
    makeChart = new MakePieChart(a, b, c, place, colour1, colour2);
  }
  void draw()
  {
    theChart = makeChart.getChart();
    d = theChart.getArray();
    theChart.pieChart((SCREENY/6)*5, d);
    fill(0);
    textFont(loadFont("ArialMT-50.vlw"));
    textAlign(CENTER);
    switch(get(mouseX, mouseY))
    {
      case(#FF95EC):
      text("Cancelled Flights", SCREENX/2, 50);
      break;
      case(#DE00B5):
      text("Non-Cancelled Flights", SCREENX/2, 50);
      break;
    default:
      break;
    }
    textAlign(LEFT);
  }
}
