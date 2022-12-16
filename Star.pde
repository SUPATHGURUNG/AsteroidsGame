class Star{
  private int x,y;
  Star(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  public void show(){
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    noStroke();
    ellipse(x,y,3,3);
  }
}
