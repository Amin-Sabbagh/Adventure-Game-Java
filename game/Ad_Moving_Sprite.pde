public class MovingSprite extends Sprite 
{
  /////Constructor///////
  public MovingSprite (int x, int y)
  {
    super(x, y);
  }

  /////Methods////////
  public void update ()
  { 
    move();
    render();
  }

  public void move()
  {
    if (y>height-50)
    { 
      y=y-5;
    }
    if (y<0)
    { 
      y=y+5;
    }
    if (x>width-50)
    { 
      x=x-5;
    }
    if (x<0)
    { 
      x=x+5;
    }
  }
}
