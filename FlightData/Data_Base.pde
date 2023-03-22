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
