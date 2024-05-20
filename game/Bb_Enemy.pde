public class Enemy extends MovingSprite
{
  //////Class Memebers//////
  protected int speedX;
  protected int speedY;

  ///////Constructors///////
  public Enemy ( int x, int y)
  {
    super(x, y);
  }

  public Enemy (int x, int y, int speedX, int speedY)

  { 
    super(x, y);
    this.speedX = speedX;
    this.speedY= speedY;
  }

  /////Methods////////
  @Override
    public void move ()

  { 
    super.move();
    x+=speedX;
    y+=speedY;
  }

  /////Function Method////////
  public boolean hit(Hero other)
  {
    return (abs(this.x-other.x) < 35  &&  abs(this.y-other.y) < 35);
  }
}
