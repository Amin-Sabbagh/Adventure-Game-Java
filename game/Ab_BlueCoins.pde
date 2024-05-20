public class BlueCoins extends Sprite 
{
  //////Class Memebers//////
  private PImage blueCoin1, blueCoin2, blueCoin3, blueCoin4, blueCoin5, blueCoin6, blueCoin7, blueCoin8, blueCoin9;

  ///////Constructor///////
  public BlueCoins (int x, int y)
  {
    super(x, y);
  }

  /////Methods//////
  @Override 
    public void render()
  {
    if (counter < 10) 
    {
      image(blueCoin1, x, y);
    } else if (counter < 20) 
    {
      image(blueCoin2, x, y);
    } else if (counter < 30)
    {
      image(blueCoin3, x, y);
    } else if (counter < 40) 
    {
      image(blueCoin4, x, y);
    } else if (counter < 50) 
    {
      image(blueCoin5, x, y);
    } else if (counter < 60) 
    {
      image(blueCoin6, x, y);
    } else if (counter < 70) 
    {
      image(blueCoin7, x, y);
    } else if (counter < 80) 
    {
      image(blueCoin8, x, y);
    } else 
    {
      image(blueCoin9, x, y);
    }
    counter= counter + countDir;
    if (counter>90)
      counter=0;
  }

  @Override
    public void loadSprite()
  {
    blueCoin1 = loadImage("blueCoin1.png");
    blueCoin1.resize(SIZE, SIZE);
    blueCoin2 = loadImage("blueCoin2.png");
    blueCoin2.resize(SIZE, SIZE);
    blueCoin3 = loadImage("blueCoin3.png");
    blueCoin3.resize(SIZE, SIZE);
    blueCoin4 = loadImage("blueCoin4.png");
    blueCoin4.resize(SIZE, SIZE);
    blueCoin5 = loadImage("blueCoin5.png");
    blueCoin5.resize(SIZE, SIZE);
    blueCoin6 = loadImage("blueCoin6.png");
    blueCoin6.resize(SIZE, SIZE);
    blueCoin7 = loadImage("blueCoin7.png");
    blueCoin7.resize(SIZE, SIZE);
    blueCoin8 = loadImage("blueCoin8.png");
    blueCoin8.resize(SIZE, SIZE);
    blueCoin9 = loadImage("blueCoin9.png");
    blueCoin9.resize(SIZE, SIZE);
  }
}
