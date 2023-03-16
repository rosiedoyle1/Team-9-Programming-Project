import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;

public class FlightData 
{

  FileReader fr = new FileReader("flights100k(1).xlsx");
  BufferedReader br = new BufferedReader(fr);
  
  int i;
  while((i=br.read())!=-1)
  {
    System.out.print((char)i);
  }
  br.close();
  fr.close();
}
  
//  try {
//    FileInputStream file = new FileInputStream(new File("flights100k(1).xlsx"));
 
//    for (Row row : sheet) {
//      String origin = "";
//      String destination = "";
//      int passengers = 0;
//      for (Cell cell : row) 
//      {
//        switch (cell.getColumnIndex()) 
//        {
//        case 0:
//          origin = cell.getStringCellValue();
//          break;
//        case 1:
//          destination = cell.getStringCellValue();
//          break;
//        case 2:
//          passengers = (int) cell.getNumericCellValue();
//          break;
//        }
//      }
//      if (!origin.isEmpty() && !destination.isEmpty() && passengers > 0) 
//      {
//        System.out.println("Flight from " + origin + " to " + destination + " with " + passengers + " passengers.");
//      }
//    }
//    workbook.close();
//    file.close();
//  }
//  catch (IOException e) 
//  {
//    e.printStackTrace();
//  }
//}
