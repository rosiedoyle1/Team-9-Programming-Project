import java.util.ArrayList;
import java.util.HashMap;
import java.util.Collections;

HashMap<String, Integer> airportCount;

class Histogram {
    
    Histogram(ArrayList<String> airportNames) {
        airportCount = new HashMap<>();
        
        // iterate over the list of airport names
        for (String airport : airportNames) {
            // if the airport is already in the map, increment its count
            if (airportCount.containsKey(airport)) {
                int count = airportCount.get(airport);
                airportCount.put(airport, count + 1);
            } 
            // otherwise, add the airport to the map with a count of 1
            else {
                airportCount.put(airport, 1);
            }
        }
    }
    
    // a getter method to return the airport count map
    HashMap<String, Integer> getAirportCountMap() {
        return airportCount;
    }
    
    void draw()
    {
      background(0);
      ArrayList<String> uniqueElements = new ArrayList<String>();
      ArrayList<String> airportNames = theArray();
      for (int i = 0; i < airportNames.size(); i++) 
      {
            uniqueElements.add(airportNames.get(i));
      }
      
      //int maxValue = Collections.max(airportCount.values());
      int xAxisWidth = SCREENX*(2/3);
      int barWidth = xAxisWidth/uniqueElements.size();
      line(150, 800, 1550, 800);
      stroke(255);
      line(160, 810, 160, 90);
      stroke(255);
      for(int i=0; i<airportCount.size(); i++)
      {
        rect(160+i*barWidth, 800-airportCount.get(uniqueElements.get(i*10)), barWidth, airportCount.get(uniqueElements.get(i*10)));
        fill(#FA90E1);
      }
    }
}
