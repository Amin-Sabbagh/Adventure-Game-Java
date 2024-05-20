public class Fire extends Enemy 
{
  //////Class Memebers//////
  private PImage fire1, fire2, fire3, fire4, fire5;

  /////Constructors///////
  public Fire (int x, int y)
  { 
    super(x, y);
  }

  public Fire (int x, int y, int speedX, int speedY)
  { 
    super(x, y, speedX, speedY);
  }

  /////Methods////////
  @Override
    public void move()
  {
    super.move();

    if (x>width-50 )
    {
      speedX=-speedX;
    } else if (x < 0)
    {
      speedX=-speedX;
    }

    if (y>height-50)
    {
      speedY=- speedY;
    } else if (y < 0)
    {
      speedY=- speedY;
    }
  }


  @Override
    public void loadSprite()
  { 
    fire1 = loadImage("Fire1.png");
    fire1.resize(SIZE, SIZE);
    fire2 = loadImage("Fire2.png");
    fire2.resize(SIZE, SIZE);
    fire3 = loadImage("Fire3.png");
    fire3.resize(SIZE, SIZE);
    fire4 = loadImage("Fire4.png");
    fire4.resize(SIZE, SIZE);
    fire5 = loadImage("Fire5.png");
    fire5.resize(SIZE, SIZE);
  }

  @Override
    public void render()
  {
    if (counter < 10) 
    {
      image(fire1, x, y);
    } else if (counter < 20) 
    {
      image(fire2, x, y);
    } else if (counter < 30)
    {
      image(fire3, x, y);
    } else if (counter < 40) 
    {
      image(fire4, x, y);
    } else 
    {
      image(fire5, x, y);
    }
    counter= counter + countDir;
    if (counter>50)
      counter=0;
  }
}
