final int SCREENY = 900; //<>// //<>//
Table table;
ArrayList<DataPoint> dataPoints;
ArrayList<String> originArray = new ArrayList<String>();
ArrayList<Float> cancelledArray = new ArrayList<Float>();
ArrayList<Float> divertedArray = new ArrayList<Float>();

//HomePage mainPage = new HomePage();
DataPrinter printer;
PieChart diversions;
Scroller theScroller = new Scroller(10, SCREENY-50, 40);

int screen = 5;
int a;
int b;

void settings()
{
  size(SCREENX, SCREENY);
}

void setup() {
  table = loadTable("flights2k(1).csv", "header");
  dataPoints = new ArrayList<DataPoint>();

  for (TableRow row : table.rows()) {
    String fl_date = row.getString("FL_DATE");
    String mkt_carrier = row.getString("MKT_CARRIER");
    int mkt_carrier_fl_num = row.getInt("MKT_CARRIER_FL_NUM");
    String origin = row.getString("ORIGIN");
    originArray.add(origin);
    String origin_city_name = row.getString("ORIGIN_CITY_NAME");
    String origin_state_abr = row.getString("ORIGIN_STATE_ABR");
    int origin_wac = row.getInt("ORIGIN_WAC");
    String dest = row.getString("DEST");
    String dest_city_name = row.getString("DEST_CITY_NAME");
    String dest_state_abr = row.getString("DEST_STATE_ABR");
    int dest_wac = row.getInt("DEST_WAC");
    int crs_dep_time = row.getInt("CRS_DEP_TIME");
    int dep_time = row.getInt("DEP_TIME");
    int crs_arr_time = row.getInt("CRS_ARR_TIME");
    int arr_time = row.getInt("ARR_TIME");
    float cancelled = row.getFloat("CANCELLED");
    cancelledArray.add(cancelled);
    float diverted = row.getFloat("DIVERTED");
    divertedArray.add(diverted);
    int distance = row.getInt("DISTANCE");

    DataPoint dp = new DataPoint(fl_date, mkt_carrier, mkt_carrier_fl_num, origin, origin_city_name, origin_state_abr, origin_wac, dest, dest_city_name, dest_state_abr, dest_wac, crs_dep_time, dep_time, crs_arr_time, arr_time, cancelled, diverted, distance);
    dataPoints.add(dp);
  }
}

void draw()
{
  background(0);
  switch(screen)
  {
  case 1:
    //mainPage.draw();
    //mainPage.mousePressed();
    break;
  case 2:
    printer = new DataPrinter(10,20);
    printer.print();
    printer.keyPressed();
    theScroller.drawScroller();
    theScroller.keyPressed();
    theScroller.keyReleased();
    break;
  case 3:
    MakePieChart makeCancellations = new MakePieChart(cancelledArray, "Cancelled Flights", "Non-Cancelled Flights");
    PieChart cancellations = makeCancellations.getChart();
    int[] a = cancellations.getArray();
    cancellations.pieChart((SCREENY/6)*5, a);
    break;
  case 4:
    MakePieChart makeDiversions = new MakePieChart(divertedArray, "Diverted Flights", "Non-Diverted Flights");
    PieChart diversions = makeDiversions.getChart();
    int[] b = diversions.getArray();
    diversions.pieChart((SCREENY/6)*5, b);
    break;
  case 5:
    Histogram airportCounter = new Histogram(originArray, "Airport", "No. Of Flights", "Number of Flights From Each Airport");
    airportCounter.draw();
    break;
  }
}
