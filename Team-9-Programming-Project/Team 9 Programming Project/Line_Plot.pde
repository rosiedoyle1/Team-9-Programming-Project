//class LinePlot
//{
//  ArrayList<Integer> expected;
//  ArrayList<Integer> actual;
//  int oneHour;
//  PFont font = loadFont("ArialMT-50.vlw");
//  int hour;
//  int minute;

//  LinePlot(ArrayList<Integer> expectedArrival, ArrayList<Integer> actualArrival)
//  {
//    expected = expectedArrival;
//    actual = actualArrival;
//  }

//  //void realTime()
//  //{
//  //  for (int i=0; i<2; i++)
//  //  {
//  //    if (expected.get(i) != null && actual.get(i) != null)
//  //    {
//  //      int a = expected.get(i);
//  //      String b = Integer.toString(a);
//  //      if (b.length() ==4)
//  //      {
//  //        hour = Integer.parseInt(b.substring(0, b.length() - 2));
//  //        minute = Integer.parseInt(b.substring(b.length() - 2));
//  //      } else if ( b.length() == 3)
//  //      {
//  //        hour = Integer.parseInt(b.substring(0, b.length() - 1));
//  //        minute = Integer.parseInt(b.substring(b.length() - 2));
//  //      }
//  //      hour = hour*60;
//  //      expected.set(i, hour+minute);

//  //      a = actual.get(i);
//  //      b = Integer.toString(a);
//  //      if (b.length() ==4)
//  //      {
//  //        hour = Integer.parseInt(b.substring(0, b.length() - 2));
//  //        minute = Integer.parseInt(b.substring(b.length() - 2));
//  //      } else if ( b.length() == 3)
//  //      {
//  //        hour = Integer.parseInt(b.substring(0, b.length() - 1));
//  //        minute = Integer.parseInt(b.substring(b.length() - 2));
//  //      }
//  //      hour = hour*60;
//  //      actual.set(i, hour+minute);
//  //      println(hour);
//  //    }
//  //  }
//  //}
//  void findDifference()
//  {
//    for (int i=0; i<expected.size(); i++)
//    {
//      int difference = actual.get(i)-expected.get(i);
//      if (difference>60 && difference<100)
//      {
//        oneHour++;
//      }
//    }
//  }

//  void draw()
//  {
//    textFont(font);
//    fill(255);
//    text(oneHour, SCREENX/2, SCREENY/2);
//    fill(255);
//  }
//}
