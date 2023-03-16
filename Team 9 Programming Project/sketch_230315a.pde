import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class FlightData {

  try {
    FileInputStream file = new FileInputStream(new File("flights100k(1).xlsx"));
    XSSFWorkbook workbook = new XSSFWorkbook(file);
    XSSFSheet sheet = workbook.getSheetAt(0);
    for (Row row : sheet) {
      String origin = "";
      String destination = "";
      int passengers = 0;
      for (Cell cell : row) 
      {
        switch (cell.getColumnIndex()) 
        {
        case 0:
          origin = cell.getStringCellValue();
          break;
        case 1:
          destination = cell.getStringCellValue();
          break;
        case 2:
          passengers = (int) cell.getNumericCellValue();
          break;
        }
      }
      if (!origin.isEmpty() && !destination.isEmpty() && passengers > 0) 
      {
        System.out.println("Flight from " + origin + " to " + destination + " with " + passengers + " passengers.");
      }
    }
    workbook.close();
    file.close();
  }
  catch (IOException e) 
  {
    e.printStackTrace();
  }
}
