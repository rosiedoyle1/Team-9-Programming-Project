class MakeDataArray
{
  DataPoint dp;
  ArrayList<DataPoint> dataPoints = new ArrayList<DataPoint>();
  MakeDataArray()
  {
  }
  void points()
  {
    table = loadTable("flights100k(1).csv", "header");
    for (TableRow row : table.rows()) {
      String fl_date = row.getString("FL_DATE");
      String mkt_carrier = row.getString("MKT_CARRIER");
      carrierArray.add(mkt_carrier);
      int mkt_carrier_fl_num = row.getInt("MKT_CARRIER_FL_NUM");
      String origin = row.getString("ORIGIN");
      airports.add(origin);
      String origin_city_name = row.getString("ORIGIN_CITY_NAME");
      city.add(origin_city_name);
      String origin_state_abr = row.getString("ORIGIN_STATE_ABR");
      int origin_wac = row.getInt("ORIGIN_WAC");
      String dest = row.getString("DEST");
      airports.add(dest);
      String dest_city_name = row.getString("DEST_CITY_NAME");
      city.add(dest_city_name);
      String dest_state_abr = row.getString("DEST_STATE_ABR");
      int dest_wac = row.getInt("DEST_WAC");
      int crs_dep_time = row.getInt("CRS_DEP_TIME");
      int dep_time = row.getInt("DEP_TIME");
      int crs_arr_time = row.getInt("CRS_ARR_TIME");
      estArrivalTimeArray.add(crs_arr_time);
      int arr_time = row.getInt("ARR_TIME");
      arrivalTimeArray.add(arr_time);
      float cancelled = row.getFloat("CANCELLED");
      cancelledArray.add(cancelled);
      float diverted = row.getFloat("DIVERTED");
      divertedArray.add(diverted);
      int distance = row.getInt("DISTANCE");

      dp = new DataPoint(fl_date, mkt_carrier, mkt_carrier_fl_num, origin, origin_city_name, origin_state_abr, origin_wac, dest, dest_city_name, dest_state_abr, dest_wac, crs_dep_time, dep_time, crs_arr_time, arr_time, cancelled, diverted, distance);
      dataPoints.add(dp);
    }
  }
  ArrayList<DataPoint> returnData()
    {
      return dataPoints;
    }
}

  class DataPoint {
    String fl_date;
    String mkt_carrier;
    int mkt_carrier_fl_num;
    String origin;
    String origin_city_name;
    String origin_state_abr;
    int origin_wac;
    String dest;
    String dest_city_name;
    String dest_state_abr;
    int dest_wac;
    int crs_dep_time;
    int dep_time;
    int crs_arr_time;
    int arr_time;
    float cancelled;
    float diverted;
    int distance;

    DataPoint(String fl_date, String mkt_carrier, int mkt_carrier_fl_num, String origin, String origin_city_name, String origin_state_abr, int origin_wac, String dest, String dest_city_name, String dest_state_abr, int dest_wac, int crs_dep_time, int dep_time, int crs_arr_time, int arr_time, float cancelled, float diverted, int distance) {
      this.fl_date = fl_date;
      this.mkt_carrier = mkt_carrier;
      this.mkt_carrier_fl_num = mkt_carrier_fl_num;
      this.origin = origin;
      this.origin_city_name = origin_city_name;
      this.origin_state_abr = origin_state_abr;
      this.origin_wac = origin_wac;
      this.dest = dest;
      this.dest_city_name = dest_city_name;
      this.dest_state_abr = dest_state_abr;
      this.dest_wac = dest_wac;
      this.crs_dep_time = crs_dep_time;
      this.dep_time = dep_time;
      this.crs_arr_time = crs_arr_time;
      this.arr_time = arr_time;
      this.cancelled = cancelled;
      this.diverted = diverted;
      this.distance = distance;
    }

    public String toString() {
      return "FL_DATE: " + fl_date + "\n" +
        "MKT_CARRIER: " + mkt_carrier + "\n" +
        "MKT_CARRIER_FL_NUM: " + mkt_carrier_fl_num + "\n" +
        "ORIGIN: " + origin + "\n" +
        "ORIGIN_CITY_NAME: " + origin_city_name + "\n" +
        "ORIGIN_STATE_ABR: " + origin_state_abr + "\n" +
        "ORIGIN_WAC: " + origin_wac + "\n" +
        "DEST: " + dest + "\n" +
        "DEST_CITY_NAME: " + dest_city_name + "\n" +
        "DEST_STATE_ABR: " + dest_state_abr + "\n" +
        "DEST_WAC: " + dest_wac + "\n" +
        "CRS_DEP_TIME: " + crs_dep_time + "\n" +
        "DEP_TIME: " + dep_time + "\n" +
        "CRS_ARR_TIME: " + crs_arr_time + "\n" +
        "ARR_TIME: " + arr_time + "\n" +
        "CANCELLED: " + cancelled + "\n" +
        "DIVERTED: " + diverted + "\n" +
        "DISTANCE: " + distance + "\n";
    }
  }
