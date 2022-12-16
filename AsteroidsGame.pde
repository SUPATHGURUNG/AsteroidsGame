Spaceship SHIP = new Spaceship();
Star [] STARS = new Star[400];
ArrayList <Asteroid> ASTER = new ArrayList<Asteroid>();
ArrayList <Bullet> PEWPEW = new ArrayList<Bullet>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < STARS.length; i++){
    STARS[i] = new Star();
  }
  for(int i = 0; i < 40; i++){
  ASTER.add(new Asteroid());
  }
}
public void draw() 
{
  background(0,0,0);
  SHIP.move();
  SHIP.show();
  for(int i = 0; i < STARS.length; i++){
    STARS[i].show();
  }
  for(int i = 0; i < ASTER.size(); i++){
    ASTER.get(i).move();
    ASTER.get(i).show();
    float d = dist((float)SHIP.getX(),(float)SHIP.getY(),(float)ASTER.get(i).getAX(),(float)ASTER.get(i).getAY());
    if(d < 20){
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
  if(keyPressed){
    if(key == 'a'){
      SHIP.turn(-8);
    }
    if(key == 'd'){
      SHIP.turn(8);
    }
    if(key == 'w'){
      SHIP.accelerate(0.05);
    }
    if(key == 's'){
      SHIP.accelerate(-0.05);
    }
    if(key == 'e'){
      SHIP.hyperspace();
    }
    if(key == ' '){
      PEWPEW.add(new Bullet(SHIP));
    }
  }
  class Asteroid extends Floater{
  double rotSpeed = (int)(Math.random()*5)+1;
  Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*4)-5;
    yCorners[0] = (int)(Math.random()*4)-5;
    xCorners[1] = (int)(Math.random()*4)+5;
    yCorners[1] = (int)(Math.random()*4)-5;
    xCorners[2] = (int)(Math.random()*4)+2;
    yCorners[2] = (int)(Math.random()*4)-2;
    xCorners[3] = (int)(Math.random()*4)+5;
    yCorners[3] = (int)(Math.random()*4)+5;
    xCorners[4] = (int)(Math.random()*4)-5;
    yCorners[4] = (int)(Math.random()*4)+2;
    xCorners[5] = (int)(Math.random()*4)-5;
    yCorners[5] = (int)(Math.random()*4)-2;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*120),(int)(Math.random()*200));
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*3)-1;
    myYspeed = (int)(Math.random()*3)-1;
    myPointDirection = 0;
  }
 
  public void move(){
        //change the x and y coordinates by myXspeed and myYspeed
        if(myXspeed == 0){
          myXspeed++;
        }
        if(myYspeed == 0){
          myYspeed++;
        }
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    myPointDirection += rotSpeed;
  }   
public float getAX(){
    return((float)(myCenterX));
  }
  public float getAY(){
    return((float)(myCenterY));
  }
  }
