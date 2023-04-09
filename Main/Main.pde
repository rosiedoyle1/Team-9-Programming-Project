ArrayList<Integer> estArrivalTimeArray = new ArrayList<Integer>(); //<>// //<>// //<>//
ArrayList<Integer> arrivalTimeArray = new ArrayList<Integer>();
ArrayList<Integer> seperateByTime = new ArrayList<Integer>();
ArrayList<Float> cancelledArray = new ArrayList<Float>();
ArrayList<Float> divertedArray = new ArrayList<Float>();
ArrayList<String> airports = new ArrayList<String>();
ArrayList<DataPoint> dataPoints;
PrintPieChart cancellations;
PrintPieChart diversions;
PieChart thePieChart;
Histogram airportCounter;
DataPrinter1 printer1;
DataPrinter2 printer2;
DataPrinter3 printer3;
DataPrinter4 printer4;
DataPrinter5 printer5;
DataPrinter6 printer6;
DataPrinter7 printer7;
DataPrinter8 printer8;
DataPrinter9 printer9;
DataPrinter10 printer10;
DataPrinter11 printer11;
DataPrinter12 printer12;
DataPrinter13 printer13;
DataPrinter14 printer14;
DataPrinter15 printer15;
DataPrinter16 printer16;
DataPrinter17 printer17;
DataPrinter18 printer18;
DataPrinter19 printer19;
DataPrinter20 printer20;
DataPrinter21 printer21;
DataPrinter22 printer22;
DataPrinter23 printer23;
DataPrinter24 printer24;
DataPrinter25 printer25;
DataPrinter26 printer26;
DataPrinter27 printer27;
DataPrinter28 printer28;
DataPrinter29 printer29;
DataPrinter30 printer30;
DataPrinter31 printer31;
HomePage thePage;
defaultBackEnd foundation;
Gif loopingGif;
int screen = 0;
int entry = 0;
Table table;
Exit exit1, exit2, exit3, exit4, exit6, exit7;
int[] c;
int[] d;
int a;
int b;
PImage clouds;
Dates dates;

void settings()
{
  size(SCREENX, SCREENY);
}

void setup()
{
  MakeDataArray array = new MakeDataArray();
  array.points();
  dataPoints = array.returnData();
  cp5 = new ControlP5(this);
  dates = new Dates();
  clouds = loadImage("cloud.jpg");
  loopingGif = new Gif(this, "Find7.gif");
  loopingGif.play();
  // Read the CSV file
  String[] lines = loadStrings("flights2k(1).csv");
  
  // Create DataPrinter
  printer1 = new DataPrinter1();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer1.addDataPoint(data);
  }
  printer2 = new DataPrinter2();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer2.addDataPoint(data);
  }
  printer3 = new DataPrinter3();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer3.addDataPoint(data);
  }
  printer4 = new DataPrinter4();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer4.addDataPoint(data);
  }
  printer5 = new DataPrinter5();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer5.addDataPoint(data);
  }
  printer6 = new DataPrinter6();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer6.addDataPoint(data);
  }
  printer7 = new DataPrinter7();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer7.addDataPoint(data);
  }
  printer8 = new DataPrinter8();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer8.addDataPoint(data);
  }
  printer9 = new DataPrinter9();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer9.addDataPoint(data);
  }
  printer10 = new DataPrinter10();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer10.addDataPoint(data);
  }
  printer11 = new DataPrinter11();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer11.addDataPoint(data);
  }
  printer12 = new DataPrinter12();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer12.addDataPoint(data);
  }
  printer13 = new DataPrinter13();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer13.addDataPoint(data);
  }
  printer14 = new DataPrinter14();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer14.addDataPoint(data);
  }
  printer15 = new DataPrinter15();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer15.addDataPoint(data);
  }
  printer16 = new DataPrinter16();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer16.addDataPoint(data);
  }
  printer17 = new DataPrinter17();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer17.addDataPoint(data);
  }
  printer18 = new DataPrinter18();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer18.addDataPoint(data);
  }
  printer19 = new DataPrinter19();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer19.addDataPoint(data);
  }
  printer20 = new DataPrinter20(); // Initialize DataPrinter20
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer20.addDataPoint(data);
  }
  printer21 = new DataPrinter21();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer21.addDataPoint(data);
  }
  printer22 = new DataPrinter22();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer22.addDataPoint(data);
  }
  printer23 = new DataPrinter23();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer23.addDataPoint(data);
  }
  printer24 = new DataPrinter24(); // Initialize DataPrinter24
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer24.addDataPoint(data);
  }
  printer25 = new DataPrinter25();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer25.addDataPoint(data);
  }
  printer26 = new DataPrinter26();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer26.addDataPoint(data);
  }
  printer27 = new DataPrinter27();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer27.addDataPoint(data);
  }
  printer28 = new DataPrinter28();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer28.addDataPoint(data);
  }
  printer29 = new DataPrinter29();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer29.addDataPoint(data);
  }
  printer30 = new DataPrinter30();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer30.addDataPoint(data);
  }
  printer31 = new DataPrinter31();
  for (int i = 1; i < lines.length; i++) {
    String[] data = split(lines[i], ",");
    printer31.addDataPoint(data);
  }
}

void draw()
{
  background(clouds);
  switch(screen)
  {
   case 0:
     cp5.hide();
     foundation = new defaultBackEnd();
     foundation.draw();
     image(loopingGif, 575, 175);
     foundation.keyPressed();
     foundation.mousePressed();
     break;
  case 1:
    cp5.hide();
    thePage = new HomePage();
    thePage.draw();
    break;
  case 2:
    cp5.hide();
    //printer = new DataPrinter(10, 20);
    //printer.print();
    exit2 = new Exit();
    exit2.draw();
    break;
  case 3:
    cp5.hide();
    airportCounter = new Histogram(airports, "Airport", "No. Of Flights", "Number of Flights From Each Airport");
    airportCounter.draw();
    exit3 = new Exit();
    exit3.draw();
    break;
  case 4:
    cp5.show();
    exit4 = new Exit();
    exit4.draw();
    break;
  case 5:
    cp5.hide();
    //LinePlot line = new LinePlot(estArrivalTimeArray, arrivalTimeArray);
    //line.findDifference();
    //line.draw();
    //break;
  case 6:
    cp5.hide();
    //cancellations = new PrintPieChart(cancelledArray, "Cancelled Flights", "Non-Cancelled Flights");
    //cancellations.draw();
    thePieChart = new PieChart();
    thePieChart.draw();
    exit6 = new Exit();
    exit6.draw();
    break;
  case 7:
    cp5.hide();
    exit7 = new Exit();
    exit7.draw();
    diversions = new PrintPieChart(divertedArray, "Diverted Flights", "Non-Diverted Flights");
    diversions.draw();
    break;
  }
  
  switch(entry)
  {
  case 1:
    cp5.hide();
    if (showData) {
      printer1.print(scrollY1, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 2:
    cp5.hide();
    if (showData) {
      printer2.print(scrollY2, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 3:
    cp5.hide();
    if (showData) {
      printer3.print(scrollY3, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 4:
    cp5.hide();
    if (showData) {
      printer4.print(scrollY4, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 5:
    cp5.hide();
    if (showData) {
      printer5.print(scrollY5, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 6:
    cp5.hide();
    if (showData) {
      printer6.print(scrollY6, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 7:
    cp5.hide();
    if (showData) {
      printer7.print(scrollY7, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 8:
    cp5.hide();
    if (showData) {
      printer8.print(scrollY8, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 9:
    cp5.hide();
    if (showData) {
      printer9.print(scrollY9, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 10:
    cp5.hide();
    if (showData) {
      printer10.print(scrollY10, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 11:
    cp5.hide();
    if (showData) {
      printer11.print(scrollY11, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 12:
    cp5.hide();
    if (showData) {
      printer12.print(scrollY12, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 13:
    cp5.hide();
    if (showData) {
      printer13.print(scrollY13, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 14:
    cp5.hide();
    if (showData) {
      printer14.print(scrollY14, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 15:
    cp5.hide();
    if (showData) {
      printer15.print(scrollY15, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 16:
    cp5.hide();
    if (showData) {
      printer16.print(scrollY16, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 17:
    cp5.hide();
    if (showData) {
      printer17.print(scrollY17, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 18:
    cp5.hide();
    if (showData) {
      printer18.print(scrollY18, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 19:
    cp5.hide();
    if (showData) {
      printer19.print(scrollY19, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 20:
    cp5.hide();
    if (showData) {
      printer20.print(scrollY20, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 21:
    cp5.hide();
    if (showData) {
      printer21.print(scrollY21, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 22:
    cp5.hide();
    if (showData) {
      printer22.print(scrollY22, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 23:
    cp5.hide();
    if (showData) {
      printer23.print(scrollY23, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 24:
    cp5.hide();
    if (showData) {
      printer24.print(scrollY24, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 25:
    cp5.hide();
    if (showData) {
      printer25.print(scrollY25, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 26:
    cp5.hide();
    if (showData) {
      printer26.print(scrollY26, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 27:
    cp5.hide();
    if (showData) {
      printer27.print(scrollY27, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 28:
    cp5.hide();
    if (showData) {
      printer28.print(scrollY28, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 29:
    cp5.hide();
    if (showData) {
      printer29.print(scrollY29, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 30:
    cp5.hide();
    if (showData) {
      printer30.print(scrollY30, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  case 31:
    cp5.hide();
    if (showData) {
      printer31.print(scrollY31, this);
    } else {
      clear();
    }
    exit1 = new Exit();
    exit1.draw();
    break;
  }
}
