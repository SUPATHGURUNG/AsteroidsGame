class Spaceship extends Floater{
  Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
     xCorners[0] = -4;
    yCorners[0] = -4;
    xCorners[1] = 8;
    yCorners[1] = 0;
    xCorners[2] = -4;
    yCorners[2] = 4;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = color((int)(Math.random()*255)%2,255,255);
  }
  public void setspeed(int h){
    myXspeed = myYspeed = h;
  }
  public void setStart(int c){
    myCenterX = myCenterY = c;
  }
  public float getX(){
    return((float)(myCenterX));
  }
  public float getY(){
    return((float)(myCenterY));
  }
  public double getPointDirection(){
    return(myPointDirection);
  }
  public double getXS(){
    return(myXspeed);
  }
   public double getYS(){
    return(myYspeed);
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
}
