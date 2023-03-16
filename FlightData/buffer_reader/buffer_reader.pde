import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;


public class FlightsData
{     
    FileReader fr = new FileReader("flights100k(1).csv");    
    BufferedReader br = new BufferedReader(fr);    

    int i;    
    while((i = br.read()) != -1)
    {  
        System.out.print((char)i);  
    }

    br.close();    
    fr.close();    
    
}
