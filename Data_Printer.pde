int scrollY = 0; // Variable to store scroll position
int scrollY1 = 0;
int scrollY2 = 0; // scrollY2
int scrollY3 = 0; // scrollY3
int scrollY4 = 0; // scrollY4
int scrollY5 = 0; // scrollY5
int scrollY6 = 0; // scrollY6
int scrollY7 = 0; // scrollY7
int scrollY8 = 0; // scrollY8
int scrollY9 = 0; // scrollY9
int scrollY10 = 0; // scrollY10
int scrollY11 = 0; // scrollY11
int scrollY12 = 0; // scrollY12
int scrollY13 = 0; // scrollY13
int scrollY14 = 0; // scrollY14
int scrollY15 = 0; // scrollY15
int scrollY16 = 0; // scrollY16
int scrollY17 = 0; // scrollY17
int scrollY18 = 0; // scrollY18
int scrollY19 = 0; // scrollY19
int scrollY20 = 0; // scrollY20
int scrollY21 = 0; // scrollY21
int scrollY22 = 0; // scrollY22
int scrollY23 = 0; // scrollY23
int scrollY24 = 0; // scrollY24
int scrollY25 = 0; // scrollY25
int scrollY26 = 0; // scrollY26
int scrollY27 = 0; // scrollY27
int scrollY28 = 0; // scrollY28
int scrollY29 = 0; // scrollY29
int scrollY30 = 0; // scrollY30
int scrollY31 = 0; // scrollY31

int scrollSpeed = 20; // Scroll speed factor
boolean showData = true; // Variable to control whether to show data or not


void mouseWheel(MouseEvent event) {
  // Update the scroll position based on mouse wheel movement, multiplied by scroll speed
  scrollY += event.getCount() * scrollSpeed;
  // Constrain the scroll position within the data height
  scrollY1 = constrain(scrollY, 0, printer1.getDataHeight() - height);
  scrollY2 = constrain(scrollY, 0, printer2.getDataHeight() - height);
  scrollY3 = constrain(scrollY, 0, printer3.getDataHeight() - height);
  scrollY4 = constrain(scrollY, 0, printer4.getDataHeight() - height);
  scrollY5 = constrain(scrollY, 0, printer5.getDataHeight() - height);
  scrollY6 = constrain(scrollY, 0, printer6.getDataHeight() - height);
  scrollY7 = constrain(scrollY, 0, printer7.getDataHeight() - height);
  scrollY8 = constrain(scrollY, 0, printer8.getDataHeight() - height);
  scrollY9 = constrain(scrollY, 0, printer9.getDataHeight() - height);
  scrollY10 = constrain(scrollY, 0, printer10.getDataHeight() - height);
  scrollY11 = constrain(scrollY, 0, printer11.getDataHeight() - height);
  scrollY12 = constrain(scrollY, 0, printer12.getDataHeight() - height);
  scrollY13 = constrain(scrollY, 0, printer13.getDataHeight() - height);
  scrollY14 = constrain(scrollY, 0, printer14.getDataHeight() - height);
  scrollY15 = constrain(scrollY, 0, printer15.getDataHeight() - height);
  scrollY16 = constrain(scrollY, 0, printer16.getDataHeight() - height);
  scrollY17 = constrain(scrollY, 0, printer17.getDataHeight() - height);
  scrollY18 = constrain(scrollY, 0, printer18.getDataHeight() - height);
  scrollY19 = constrain(scrollY, 0, printer19.getDataHeight() - height);
  scrollY20 = constrain(scrollY, 0, printer20.getDataHeight() - height);
  scrollY21 = constrain(scrollY, 0, printer21.getDataHeight() - height);
  scrollY22 = constrain(scrollY, 0, printer22.getDataHeight() - height);
  scrollY23 = constrain(scrollY, 0, printer23.getDataHeight() - height);
  scrollY24 = constrain(scrollY, 0, printer24.getDataHeight() - height);
  scrollY25 = constrain(scrollY, 0, printer25.getDataHeight() - height);
  scrollY26 = constrain(scrollY, 0, printer26.getDataHeight() - height);
  scrollY27 = constrain(scrollY, 0, printer27.getDataHeight() - height);
  scrollY28 = constrain(scrollY, 0, printer28.getDataHeight() - height);
  scrollY29 = constrain(scrollY, 0, printer29.getDataHeight() - height);
  scrollY30 = constrain(scrollY, 0, printer30.getDataHeight() - height);
  scrollY31 = constrain(scrollY, 0, printer31.getDataHeight() - height);
}

class DataPrinter1 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter1() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/01/2022 00:00") || data[0].equals("01/01/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter2 {
  ArrayList<String[]> dataPoints; 
  // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter2() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/02/2022 00:00") || data[0].equals("01/02/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter3 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter3() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/03/2022 00:00") || data[0].equals("01/03/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter4 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter4() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/04/2022 00:00") || data[0].equals("01/04/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter5 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter5() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/05/2022 00:00") || data[0].equals("01/05/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter6 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter6() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/06/2022 00:00") || data[0].equals("01/06/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter7 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter7() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/07/2022 00:00") || data[0].equals("01/07/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter8 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter8() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/08/2022 00:00") || data[0].equals("01/08/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter9 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter9() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/09/2022 00:00") || data[0].equals("01/09/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter10 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter10() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/10/2022 00:00") || data[0].equals("01/10/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter11 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter11() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/11/2022 00:00") || data[0].equals("01/11/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter12 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter12() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/12/2022 00:00") || data[0].equals("01/12/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter13 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter13() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/13/2022 00:00") || data[0].equals("01/13/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter14 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter14() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/14/2022 00:00") || data[0].equals("01/14/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter15 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter15() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/15/2022 00:00") || data[0].equals("01/15/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter16 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter16() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/16/2022 00:00") || data[0].equals("01/16/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter17 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter17() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/17/2022 00:00") || data[0].equals("01/17/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter18 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter18() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/18/2022 00:00") || data[0].equals("01/18/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter19 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter19() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/19/2022 00:00") || data[0].equals("01/19/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter20 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter20() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/20/2022 00:00") || data[0].equals("01/20/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter21 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter21() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/21/2022 00:00") || data[0].equals("01/21/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter22 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter22() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/22/2022 00:00") || data[0].equals("01/22/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter23 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter23() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/23/2022 00:00") || data[0].equals("01/23/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter24 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter24() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/24/2022 00:00") || data[0].equals("01/24/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter25 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter25() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/25/2022 00:00") || data[0].equals("01/25/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter26 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter26() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/26/2022 00:00") || data[0].equals("01/26/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter27 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter27() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/27/2022 00:00") || data[0].equals("01/27/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter28 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter28() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/28/2022 00:00") || data[0].equals("01/28/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter29 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter29() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/29/2022 00:00") || data[0].equals("01/29/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter30 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter30() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/30/2022 00:00") || data[0].equals("01/30/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}

class DataPrinter31 {
  ArrayList<String[]> dataPoints; // ArrayList to store data points
  //ArrayList<String> headings; // ArrayList to store column headings
  int cellWidth; // Width of each cell
  int cellHeight; // Height of each cell
  int margin; // Margin around the cells

  DataPrinter31() {
    dataPoints = new ArrayList<String[]>();
    //headings = new ArrayList<String>();
    cellWidth = 100;
    cellHeight = 20;
    margin = 20;
  }

  void addDataPoint(String[] data) {
    dataPoints.add(data);
  }

void print(int scrollY, PApplet applet) {
    applet.textAlign(LEFT, CENTER);
    applet.fill(0);
    applet.textFont(loadFont("ArialMT-12.vlw"));

    text("FL_DATE", 50, 18);
    //text("MKT_CARRIER", 90, 18);
    text("MKT_CARRIER_FL_NUM", 150, 18);
    text("ORIGIN", 310, 18);
    text("ORIGIN_CITY_NAME", 420, 18);
    text("ORIGIN_STATE_ABR", 570, 18);
    text("ORIGIN_WAC", 700, 18);
    text("DEST", 815, 18);
    text("DEST_CITY_NAME", 920, 18);
    text("DEST_STATE_ABR", 1070, 18);
    text("DEST_WAC", 1190, 18);
    text("CRS_DEP_TIME", 1285, 18);
    text("DEP_TIME", 1400, 18);
    text("CRS_ARR_TIME", 1490, 18);
    text("ARR_TIME", 1605, 18);
    text("CANCELLED", 1690, 18);
    text("DIVERTED", 1790, 18);
    text("DISTANCE", 1950, 18);

    int printedData = 0; // Counter to keep track of the printed data
    for (int i = 0; i < dataPoints.size(); i++) {
        String[] data = dataPoints.get(i);
        if (data[0].equals("01/31/2022 00:00") || data[0].equals("01/31/2022 12:00:00")) { // Only print data with FL_DATE as 01/01/2022
            for (int j = 0; j < data.length; j++) {
                String value = data[j];
                applet.text(value, margin + j * cellWidth, margin + (printedData + 1) * cellHeight - scrollY);
            }
            printedData++; // Increment the counter for printed data
        }
    }
}

  int getDataHeight() {
    return dataPoints.size() * cellHeight + margin;
  }
}
