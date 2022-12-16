class Asteroid extends Floater {
  double rotSpeed = (int)(Math.random()*5)+1;
  Asteroid() {
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
    myColor = color((int)(Math.random()*255), (int)(Math.random()*120), (int)(Math.random()*200));
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*3)-1;
    myYspeed = (int)(Math.random()*3)-1;
    myPointDirection = 0;
  }

  public void move() {
    //change the x and y coordinates by myXspeed and myYspeed
    if (myXspeed == 0) {
      myXspeed++;
    }
    if (myYspeed == 0) {
      myYspeed++;
    }
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if (myCenterX >width)
    {     
      myCenterX = 0;
    } else if (myCenterX<0)
    {     
      myCenterX = width;
    }    
    if (myCenterY >height)
    {    
      myCenterY = 0;
    } else if (myCenterY < 0)
    {     
      myCenterY = height;
    }   
    myPointDirection += rotSpeed;
  }   
  public float getAX() {
    return((float)(myCenterX));
  }
  public float getAY() {
    return((float)(myCenterY));
  }
}
