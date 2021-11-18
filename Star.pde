class Star //note that this class does NOT extend Floater
{
  //your code here
  int myX, myY, myColor;
  Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color(255, (int)(Math.random()*15)+240, (int)(Math.random()*100)+100);
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 3, 3);
  }
}
