Spaceship SHIP = new Spaceship();
Star [] STARS = new Star[400];
ArrayList <Asteroid> ASTER = new ArrayList<Asteroid>();
ArrayList <Bullet> PEWPEW = new ArrayList<Bullet>();
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < STARS.length; i++) {
    STARS[i] = new Star();
  }
  for (int i = 0; i < 40; i++) {
    ASTER.add(new Asteroid());
  }
}
public void draw() 
{
  background(0, 0, 0);
  size(500, 500);
  SHIP.move();
  SHIP.show();
  for (int i = 0; i < STARS.length; i++) {
    STARS[i].show();
  }
  for (int i = 0; i < ASTER.size(); i++) {
    ASTER.get(i).move();
    ASTER.get(i).show();
    float d = dist((float)SHIP.getX(), (float)SHIP.getY(), (float)ASTER.get(i).getAX(), (float)ASTER.get(i).getAY());
    if (d < 20) {
      ASTER.remove(i);
      break;
    }
    for (int j = 0; j < PEWPEW.size(); j++) { 
      PEWPEW.get(j).move(); 
      PEWPEW.get(j).show(); 
      float g = dist((float)PEWPEW.get(j).getX(), (float)PEWPEW.get(j).getY(), (float)ASTER.get(i).getAX(), (float)ASTER.get(i).getAY()); 
      if (g < 10 ) { 
        PEWPEW.remove(j); 
        ASTER.remove(i); 
        break;
      }
    }
  }
  if (keyPressed) {
    if (key == 'a') {
      SHIP.turn(-8);
    }
    if (key == 'd') {
      SHIP.turn(8);
    }
    if (key == 'w') {
      SHIP.accelerate(0.05);
    }
    if (key == 's') {
      SHIP.accelerate(-0.05);
    }
    if (key == 'e') {
      SHIP.hyperspace();
    }
    if (key == ' ') {
      PEWPEW.add(new Bullet(SHIP));
    }
  }
}
