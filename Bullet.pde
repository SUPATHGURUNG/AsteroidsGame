class Bullet extends Spaceship{
  public Bullet(Spaceship SHIP){
    myCenterX = SHIP.getX();
    myCenterY = SHIP.getY();
    myXspeed = SHIP.getXS();
    myYspeed = SHIP.getYS();
    myPointDirection = SHIP.getPointDirection();
    accelerate(.1);
  }
   public void show(){
    int x = (int)(Math.random()*500);
    int y = (int)(Math.random()*500);
    fill(x,y,x);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  }
 
