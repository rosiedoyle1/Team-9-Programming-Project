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
DataPrinter printer;
HomePage thePage;
int screen = 1;
Table table;
Exit exit2;
Exit exit3;
Exit exit4;
Exit exit6;
Exit exit7;
int[] c;
int[] d;
int a;
int b;
PImage clouds;

void settings()
{
  size(SCREENX, SCREENY);
}

void setup()
{
  MakeDataArray array = new MakeDataArray();
  array.points();
  dataPoints = array.returnData();
  clouds = loadImage("cloud.jpg");
}

void draw()
{
  background(clouds);
  switch(screen)
  {
  case 1:
    thePage = new HomePage();
    thePage.draw();
    break;
  case 2:
    printer = new DataPrinter(10, 20);
    printer.print();
    exit2 = new Exit();
    exit2.draw();
    break;
  case 3:
    airportCounter = new Histogram(airports, "Airport", "No. Of Flights", "Number of Flights From Each Airport");
    airportCounter.draw();
    exit3 = new Exit();
    exit3.draw();
    break;
  case 4:
  case 5:
    //LinePlot line = new LinePlot(estArrivalTimeArray, arrivalTimeArray);
    //line.findDifference();
    //line.draw();
    break;
  case 6:
    
    //cancellations = new PrintPieChart(cancelledArray, "Cancelled Flights", "Non-Cancelled Flights");
    //cancellations.draw();
    thePieChart = new PieChart();
    thePieChart.draw();
    exit6 = new Exit();
    exit6.draw();
    break;
  case 7:
    exit7 = new Exit();
    exit7.draw();
    diversions = new PrintPieChart(divertedArray, "Diverted Flights", "Non-Diverted Flights");
    diversions.draw();
    break;
  }
}
