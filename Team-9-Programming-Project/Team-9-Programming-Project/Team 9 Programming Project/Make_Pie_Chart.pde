class MakePieChart
{
  int ones = 0;
  PieChart thePieChart;
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
    thePieChart = new PieChart(theArrayList, ones, happened, didntHappen);
  }
  
  PieChart getChart()
  {
    return thePieChart;
  }
  
}
