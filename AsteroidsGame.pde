Spaceship gabe = new Spaceship();
Star [] leung = new Star[200];
ArrayList <Asteroid> caleb = new ArrayList<Asteroid>();
ArrayList <Bullet> dylan = new ArrayList<Bullet>();
public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < leung.length; i++){
    leung[i] = new Star();
  }
  for(int i = 0; i < 11; i++){
  caleb.add(new Asteroid());
  }
}
public void draw() 
{
  background(0,0,0);
  gabe.move();
  gabe.show();
  for(int i = 0; i < leung.length; i++){
    leung[i].show();
  }
  for(int i = 0; i < caleb.size(); i++){
    caleb.get(i).move();
    caleb.get(i).show();
    float d = dist(gabe.getX(), gabe.getY(),caleb.get(i).getX(), caleb.get(i).getY());
    if(d < 20){
      caleb.remove(i);
    }
  }
  for(int i = 0; i < dylan.size(); i++){
    dylan.get(i).move();
    dylan.get(i).show();
  }
  if(keyPressed){
    if(key == 'a'){
      gabe.turn(-10);
    }
    if(key == 'd'){
      gabe.turn(10);
    }
    if(key == 'w'){
      gabe.accelerate(0.1);
    }
    if(key == 's'){
      gabe.accelerate(-0.1);
    }
    if(key == 'e'){
      gabe.hyperspace();
    }
    if(key == ' '){
      dylan.add(new Bullet(gabe));
    }
  }
}
