public class Zombie extends Enemy
{
  //////Class Memebers//////
  private  PImage Zombie1, Zombie2, Zombie3, Zombie4, Zombie5, Zombie6;

  /////Constructor///////
  public Zombie(int x, int y)
  {
    super(x, y);
  }

  /////Methods////////
  @Override    
    public void move ()
  {
    super.move();
    if (  x == tom.x );
    {
      speedX= 0;
    }
    if (x> tom.x  )
    {
      speedX--;
    } else  if (x< tom.x  )
    {
      speedX++;
    } 
    if (  y == tom.y );
    {
      speedY= 0;
    }

    if (y> tom.y  )
    {
      speedY--;
    } else if (y< tom.y )
    {
      speedY++;
    }
  }

  /////Function Method////////
  @Override   
    public boolean hit(Hero other)
  {
    if (other==null)
      return false;

    float lengthX= other.x- (x);
    float lengthY= other.y- (y);
    float length= sqrt(lengthX*lengthX + lengthY*lengthY);
    return (length<40);
  }

  //////Load Images Procedure/////
  @Override
    public void loadSprite()
  {
    Zombie1 = loadImage("Zombie1.png");
    Zombie1.resize(SIZE, SIZE);
    Zombie2 = loadImage("Zombie2.png");
    Zombie2.resize(SIZE, SIZE);
    Zombie3 = loadImage("Zombie3.png");
    Zombie3.resize(SIZE, SIZE);
    Zombie4 = loadImage("Zombie4.png");
    Zombie4.resize(SIZE, SIZE);
    Zombie5 = loadImage("Zombie5.png");
    Zombie5.resize(SIZE, SIZE);
    Zombie6 = loadImage("Zombie6.png");
    Zombie6.resize(SIZE, SIZE);
  }


  @Override
    public void render()
  {
    if (counter < 10) 
    {
      image(Zombie1, x, y);
    } else if (counter < 20) 
    {
      image(Zombie2, x, y);
    } else if (counter < 30)
    {
      image(Zombie3, x, y);
    } else if (counter < 40) 
    {
      image(Zombie4, x, y);
    } else if (counter < 50) 
    {
      image(Zombie5, x, y);
    } else 
    {
      image(Zombie6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }
}
