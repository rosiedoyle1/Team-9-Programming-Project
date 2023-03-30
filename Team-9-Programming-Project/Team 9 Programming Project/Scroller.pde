import java.awt.event.KeyEvent;
class Scroller
{
  boolean rightPressed = false;
  boolean leftPressed = false;
  int x;
  int y;
  int size;
  Scroller (int xpos, int ypos, int scrollerSize)
  {
    x = xpos;
    y = ypos;
    size = scrollerSize;
  }

  void drawScroller()
  {
    fill(255);
    rect(10, SCREENY-50, SCREENX-20, 40);
    fill(#D60B0B);
    rect(x, y, size, size);
  }
  void keyPressed() {
    if (keyCode == RIGHT && !rightPressed && x+size<SCREENX-20) {
      rightPressed = true;
      x += 20;
    }
    if (keyCode == LEFT && !leftPressed) {
      leftPressed = true;
      x -= 30;
    }
  }

  void keyReleased() {
    if (keyCode == RIGHT) {
      rightPressed = false;
    }
    if (keyCode == LEFT) {
      leftPressed = false;
    }
  }
}
