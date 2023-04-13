class Histogram {
  String xAxisLabel;
  String yAxisLabel;
  String title;
  ArrayList<Widget> barArray = new ArrayList<Widget>();
  PFont theFont = loadFont("ArialMT-25.vlw");
  PFont titleFont = loadFont("ArialMT-50.vlw");
  color theColour = color(#FA90E1);
  ArrayList<String> uniqueValues = new ArrayList<String>();
  ArrayList<String> objectNames;
  HashMap<String, Integer> objectCount = new HashMap<>();
  Set<String> set;
  int xAxisWidth = (SCREENX*3)/4;
  int yAxisWidth = (SCREENX*2)/3;

  Histogram(ArrayList<String> objectNames, String xAxis, String yAxis, String header) {
    set = new HashSet<>(objectNames);
    xAxisLabel = xAxis;
    yAxisLabel = yAxis;
    title = header;

    for (String object : objectNames)
    {
      if (objectCount.containsKey(object))
      {
        int count = objectCount.get(object);
        objectCount.put(object, count + 1);
      } else
      {
        objectCount.put(object, 1);
      }
    }
  }

  void draw()
  {
    uniqueValues.addAll(set);
    int barWidth;
    barWidth = xAxisWidth/uniqueValues.size();
    barWidth +=1;
    textFont(titleFont);
    fill(0);
    text(title, SCREENX/5, MARGIN-70);
    fill(0);
    line(MARGIN-10, SCREENY-100, xAxisWidth+50, SCREENY-100);   // horizontal
    stroke(0);
    line(MARGIN, SCREENY-90, MARGIN, 100);                     // vertical
    stroke(0);
    textFont(theFont);
    text(yAxisLabel, 0, SCREENY/2);
    fill(0);
    text(xAxisLabel, SCREENX/3, SCREENY-50);
    fill(0);
    for (int i=0; i<objectCount.size(); i++)
    {
      int maxCount = Collections.max(objectCount.values());
      int barHeight = ((int)map(objectCount.get(uniqueValues.get(i)), 0, maxCount, 0, yAxisWidth-190))/2;
      Widget newWidget = new Widget(MARGIN+(i*barWidth), SCREENY-(MARGIN-60+barHeight), barWidth, barHeight, "", theColour, theFont, i+9);
      barArray.add(newWidget);
    }
    for (int i=0; i<barArray.size(); i++)
    {
      barArray.get(i).draw();
      int event = barArray.get(i).getEvent(mouseX, mouseY);
      if (event == i+9)
      {
        fill(255);
        rect(SCREENX-420, SCREENY/6-60, 300, 140, 20);
        textFont(loadFont("ArialMT-40.vlw"));
        fill(0);
        text(uniqueValues.get(i) +":", SCREENX-400, SCREENY/6);
        fill(0);
        text(objectCount.get(uniqueValues.get(i)) +" Flights", SCREENX-400, (SCREENY/6)+50);
      }
    }
  }
}
