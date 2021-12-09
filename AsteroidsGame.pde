public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < tim.size(); i++) {
    tim.get(i).show();
    tim.get(i).move();
    float d = dist((float)sam.getMyCenterX(), (float)sam.getMyCenterY(),
    (float)tim.get(i).getMyCenterX(), (float)tim.get(i).getMyCenterY());
    if (d<10)
      tim.remove(i);
  }
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
  }
  if (keyPressed) {
    if(key == 't' || key == 'T') {
      sam.turn(-10);
    }
    if(key == 'a' || key == 'A') {
      sam.accelerate(0.2);
    }
    if(key == 'd' || key == 'D') {
      sam.accelerate(-0.2);
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
