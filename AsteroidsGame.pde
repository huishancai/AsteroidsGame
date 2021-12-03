//your variable declarations here
Star [] bob = new Star[250];
Spaceship sam = new Spaceship();
public void setup() 
{
  //your code here
  size(500,500);
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
  }
  if (keyPressed) {
    if(key == 'a' || key == 'A') {
      sam.turn(-10);
    }
    if(key == ' ') {
      sam.accelerate(0.2);
    }
    if(key == 'h' || key == 'H') {
      sam.setYspeed(0);
      sam.setXspeed(0);
      sam.turn(Math.random()*360);
      sam.setCenterY();
      sam.setCenterX();
    }
  }
  sam.move();
  sam.show();
}
