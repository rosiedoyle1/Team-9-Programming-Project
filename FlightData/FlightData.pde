import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class FlightData {

  try {
   FileInputStream file = new FileInputStream(new File("flights100k(1).xlsx"));
   BufferedReader buffer = new BufferedReader(file);
   int i;
   while ((i= buffer.read()!=-1)
    {
      System.out.print((char)i);
    }
    
    for (Row row : sheet) {
      Arraylist<String> flightDate;
      Arraylist<String> carrier;
      Arraylist<int> flightNumber;
      Arraylist<String> originCity;
      Arraylist<String> originState;
      Arraylist<String> originWAC;
      Arraylist<String> destinationAirport;
      Arraylist<String destinationCity;
      Arraylist<int> schedDeptTime;
      Arraylist<int> deptTime;
      Arraylist<int> schedArrivTime;
      Arraylist<int> arrivTime;
      Arraylist<boolean> cancelled;
      Arraylist<boolean> diverted;
      Arraylist<int> distance;
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
      if (!origin.isEmpty() && !destination.isEmpty() && passengers > 0) 
      {
        System.out.println("Flight from " + origin + " to " + destination + " with " + passengers + " passengers.");
      }
    }
    file.close();
  }
  catch (IOException e) 
  {
    e.printStackTrace();
  }
}
