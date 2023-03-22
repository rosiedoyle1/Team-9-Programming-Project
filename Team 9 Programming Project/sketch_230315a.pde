Table table; //<>// //<>//
ArrayList<DataPoint> dataPoints;

void settings()
{
  size(1600, 900);
}

void setup() {
  table = loadTable("flights2k(1).csv", "header");
  dataPoints = new ArrayList<DataPoint>();

  for (TableRow row : table.rows()) {
    String fl_date = row.getString("FL_DATE");
    String mkt_carrier = row.getString("MKT_CARRIER");
    int mkt_carrier_fl_num = row.getInt("MKT_CARRIER_FL_NUM");
    String origin = row.getString("ORIGIN");
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
    float diverted = row.getFloat("DIVERTED");
    int distance = row.getInt("DISTANCE");

    DataPoint dp = new DataPoint(fl_date, mkt_carrier, mkt_carrier_fl_num, origin, origin_city_name, origin_state_abr, origin_wac, dest, dest_city_name, dest_state_abr, dest_wac, crs_dep_time, dep_time, crs_arr_time, arr_time, cancelled, diverted, distance);
    dataPoints.add(dp);
    System.out.println(dp.toString());
  }
}

void draw()
{
  int a=10;
  int b=20;
  background(0);
  
  for (int i = 0; i < dataPoints.size(); i++)
  {
    PFont theFont = loadFont("ArialMT-10.vlw");
    textSize(20);
    textFont(theFont);
    textAlign(LEFT);
    DataPoint dp = dataPoints.get(i);
    text(dp.toString(), a, b);
    if (i%4 ==0 && i>=4)
    {
      b = 20;
      a = a+200;
    } else
    {
      b = b + 225;
    }
  }
}
