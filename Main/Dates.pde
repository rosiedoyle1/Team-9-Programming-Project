import controlP5.*;
ControlP5 cp5; // ControlP5 instance
class Dates {
  DropdownList dropdown; // DropdownList instance
  int selectedEntry = 0; // Index of the selected entry, initialized to 0

  Dates() {
    //// Initialize ControlP5
    //cp5 = new ControlP5(this);
    // Create a DropdownList
    dropdown = cp5.addDropdownList("dropdown")
      .setPosition(width/2 - 150, height/2 - 100) // Adjusted position
      .setSize(300, 400) // Adjusted size
      .setItemHeight(40) // Adjusted item height
      .setBarHeight(30) // Adjusted bar height
      .setColorBackground(color(255))
      .setColorActive(color(200))
      .setColorForeground(color(120))
      .setColorLabel(color(0)) // Set text color to black
      .setOpen(false);

    // Add entries to the DropdownList
    for (int i = 1; i <= 31; i++) {
      dropdown.addItem(i + " January 2022", i);
    }

    // Set text color of dropdown entries to black
    dropdown.setColorValueLabel(color(0)); // Set text color to black

    // Set a callback function for when an item is selected in the DropdownList
    dropdown.onChange(new CallbackListener() {
      void controlEvent(CallbackEvent event) {
        selectedEntry = (int)event.getController().getValue(); // Update the selected entry
        println("Selected Entry: " + (selectedEntry + 1));
        showData = true;
        // Handle the selected entry
        switch(selectedEntry + 1) {
          case 1:
            entry = 1;
            break;
          case 2:
            entry = 2;
            break;
          case 3:
            entry = 3;
            break;
          case 4:
            entry = 4;
            break;
          case 5:
            entry = 5;
            break;
          case 6:
            entry = 6;
            break;
          case 7:
            entry = 7;
            break;
          case 8:
            entry = 8;
            break;
          case 9:
            entry = 9;
            break;
          case 10:
            entry = 10;
            break;
          case 11:
            entry = 11;
            break;
          case 12:
            entry = 12;
            break;
          case 13:
            entry = 13;
            break;
          case 14:
            entry = 14;
            break;
          case 15:
            entry = 15;
            break;
          case 16:
            entry = 16;
            break;
          case 17:
            entry = 17;
            break;
          case 18:
            entry = 18;
            break;
          case 19:
            entry = 19;
            break;
          case 20:
            entry = 20;
            break;
          case 21:
            entry = 21;
            break;
          case 22:
            entry = 22;
            break;
          case 23:
            entry = 23;
            break;
          case 24:
            entry = 24;
            break;
          case 25:
            entry = 25;
            break;
          case 26:
            entry = 26;
            break;
          case 27:
            entry = 27;
            break;
          case 28:
            entry = 28;
            break;
          case 29:
            entry = 29;
            break;
          case 30:
            entry = 30;
            break;
          case 31:
            entry = 31;
            break;
        }
      }
    });
  }
  void mousePressed() {
    // Close the DropdownList if it's open and the mouse is clicked outside of it
    if (dropdown.isOpen() && !dropdown.isInside()) {
      dropdown.close();
    }
    
  }
  //void clear() {
  //if (dropdown != null) {
  //  cp5.remove(dropdown);
  //}
//}
}
