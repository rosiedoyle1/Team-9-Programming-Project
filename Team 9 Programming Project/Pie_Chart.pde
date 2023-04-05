///**
// * Pie Chart  
// * 
// * Uses the arc() function to generate a pie chart from the data
// * stored in an array. 
// */
import processing.pdf.*;

public static int truePieAngleNY;
public static int truePieAngleWA;
public static int truePieAngleIL;
public static int truePieAngleTX;
public static int total1;
public static int truePieAngleCA;

class PieChart {
fileReader aFileReader = new fileReader();

//int[] angles = { CA, NY, WA, IL, TX }; //truePieAngleCA, truePieAngleNY, truePieAngleWA, truePieAngleIL, truePieAngleTX

void setup() {
 // size(1000, 700);
  noStroke();
  noLoop();  // Run once and stop
}
int CA;
int NY;
int WA;
int IL;
int TX;
PFont theFont = loadFont("ArialMT-25.vlw");

void draw() {
  //background(255, 0, 0);

 aFileReader.draw();
 String names[] = {"CA", "NY", "WA", "IL", "TX"};
 CA = truePieAngleCA;
 NY = truePieAngleNY;
 WA = truePieAngleWA;
 IL = truePieAngleIL;
 TX = truePieAngleTX;
 int[] angles = { CA, NY, WA, IL, TX };
  println(CA +" is the CA");
  println(total1);
  pieChart(700, angles, names);
  
}

void pieChart(float diameter, int[] data, String names[]) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(255, gray, 0);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
    lastAngle += radians(data[i]);
    rect(400, 300+(i*50), 100, 100, 25, 25, 25, 25);
    textFont(theFont);
    text(names[i], 510, 350+(i*50));
  }
}
}


class fileReader{
Table table;

void draw()
{
  //size(1960, 900);
  noStroke();
  noLoop();

  
  beginRecord(PDF, "WearablePortraitData.pdf");
  
  background(20);
  
  table = loadTable("flights2k(1).csv", "header");
  
  int rowCount=table.getRowCount();
  
  println(rowCount + " total rows in table");
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // BAR Chart code
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //for(int i = 0; i<rowCount; i++)
  //{
  //  TableRow row = table.getRow(i);
    
  //  int distance = row.getInt("DISTANCE");
    
  //  print("Row Number:");
  //  println(i+1);
    
  //  print("Distance travelled: ");
  //  println(distance);
    
  //  println();
    
  //  fill(255, 0, 0);
    
  //  float mover = 5 + (10*i);
    
  //  rect(mover, 10, 5, distance/2);
  //}
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // BAR Chart code
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // PIE Chart code
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  int countCA = 0;
  int countNY = 0;
  int countWA = 0;
  int countIL = 0;
  int countTX = 0;
  
  for(int i = 0; i<1000; i++)
  {
     TableRow row = table.getRow(i);
    
     String distance = row.getString("DEST_STATE_ABR");
     
     if(distance.equals("CA"))
     {
       countCA = countCA + 1;
     }
     else if(distance.equals("NY"))
     {
       countNY = countNY + 1;
     }
     else if(distance.equals("WA"))
     {
       countWA = countWA + 1;
     }
     else if(distance.equals("IL"))
     {
       countIL = countIL + 1;
     }
     else if(distance.equals("TX"))
     {
       countTX = countTX + 1;
     }
     
  
  }
  int totalAngle = 360;
  int total = countCA + countNY + countWA + countIL + countTX;
  float pieAngleCA = (total/countCA);
  truePieAngleCA = (int)(totalAngle/pieAngleCA);
  

  
  println(pieAngleCA+" angle only");
  println(truePieAngleCA+" True angle");
  float pieAngleNY = (total/countNY);
  truePieAngleNY = (int)(totalAngle/pieAngleNY);
  
  float pieAngleWA = (total/countWA);
  truePieAngleWA = (int)(totalAngle/pieAngleWA);
  
  float pieAngleIL = (total/countIL);
  truePieAngleIL = (int)(totalAngle/pieAngleIL);
  
  float pieAngleTX = (total/countTX);
  truePieAngleTX = (int)(totalAngle/pieAngleTX);
  total1 = truePieAngleCA+truePieAngleNY+truePieAngleWA+truePieAngleIL+truePieAngleTX;
  
  endRecord();
  
  }
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // PIE Chart code
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  

}

class PieChartTwo
{
  ArrayList<Float> data = new ArrayList<Float>();
  int[] angles = new int[2];
  int angle;
  String happened;
  String didntHappen;

  PieChartTwo(ArrayList<Float> onesAndZeros, int angleInCircle, String was, String wasNot)
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
      color pink;
      if (i==0)
      {
        pink = (#DE00B5);
      } else
      {
        pink = (#FF95EC);
      }
      fill(pink);
      arc(SCREENX/2, SCREENY/2, diameter, diameter, lastAngle, lastAngle+radians(theAngles[i]));
      lastAngle += radians(theAngles[i]);
      rect(MARGIN, MARGIN+(80*i), 50, 50);
      fill(pink);
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

class MakePieChart
{
  int ones = 0;
  PieChartTwo ThePieChart;
  MakePieChart(ArrayList<Float> theArrayList, String happened, String didntHappen)
  {
    for (int i = 0; i < theArrayList.size(); i++)
    {
      if (theArrayList.get(i) == 1)
      {
        ones++;
      }
    }
    ones = (ones*360)/theArrayList.size();
    ThePieChart = new PieChartTwo(theArrayList, ones, happened, didntHappen);
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
  PrintPieChart(ArrayList a, String b, String c)
  {
    makeChart = new MakePieChart(a, b, c);
  }
  void draw()
  {
    theChart = makeChart.getChart();
    d = theChart.getArray();
    theChart.pieChart((SCREENY/6)*5, d);
  }
}
