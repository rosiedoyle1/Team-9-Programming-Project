import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class FlightData {

  try {
   FileReader file = new FileReader(new File("flights100k(1).xlsx"));
   BufferedReader buffer = new BufferedReader(file);
   int i;
   while ((i= buffer.read()!=-1)
    {
      System.out.print((char)i);
    }
    
    for (Row row : sheet) {
      ArrayList<String> flightDate;
      ArrayList<String> carrier;
      ArrayList<int> flightNumber;
      ArrayList<String> originCity;
      ArrayList<String> originState;
      ArrayList<String> originWAC;
      ArrayList<String> destinationAirport;
      ArrayList<String destinationCity;
      ArrayList<int> schedDeptTime;
      ArrayList<int> deptTime;
      ArrayList<int> schedArrivTime;
      ArrayList<int> arrivTime;
      ArrayList<boolean> cancelled;
      ArrayList<boolean> diverted;
      ArrayList<int> distance;
      for (Cell cell : row) 
      {
        switch (cell.getColumnIndex()) 
        {
        case 0:
          flightDate = cell.getStringCellValue();
          break;
        case 1:
          carrier = cell.getStringCellValue();
          break;
        case 2:
          flightNumber = (int) cell.getNumericCellValue();
          break;
        case 3:
          originCity = cell.getStringCellValue();
          break;
        case 4:
          originState = cell.getStringCellValue();
          break;
        case 5:
          originWAC = (int) cell.getStringCellValue();
          break;
        case 6:
          destinationAirport = cell.getStringCellValue();
          break;
        case 7:
          destinationCity = cell.getStringCellValue();
          break;
        case 8:
          schedDeptTime = cell.getStringCellValue();
          break;
        case 9:
          deptTime = cell.getStringCellValue();
          break;
        case 10:
          schedArriv = cell.getStringCellValue();
          break;
        case 11:
          arrivTime = cell.getStringCellValue();
          break;
        case 12:
          cancelled = (boolean) cell.getStringCellValue();
          break;
        case 13:
          diverted = (boolean) cell.getStringCellValue();
          break;
        case 14: 
          distance = (int) cell.getStringCellValue();
        }
      }
    }
    file.close();
  }
  catch (IOException e) 
  {
    e.printStackTrace();
  }
}
