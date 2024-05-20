public class Coins extends Sprite 
{
  //////Class Memebers//////
  private PImage goldCoin1, goldCoin2, goldCoin3, goldCoin4, goldCoin5, goldCoin6, goldCoin7, goldCoin8, goldCoin9;

  ///////Constructor///////
  public Coins (int x, int y)
  {
    super(x, y);
  }

  /////Methods//////
  public void render()
  {
    if (counter < 10) 
    {
      image(goldCoin1, x, y);
    } else if (counter < 20) 
    {
      image(goldCoin2, x, y);
    } else if (counter < 30)
    {
      image(goldCoin3, x, y);
    } else if (counter < 40) 
    {
      image(goldCoin4, x, y);
    } else if (counter < 50) 
    {
      image(goldCoin5, x, y);
    } else if (counter < 60) 
    {
      image(goldCoin6, x, y);
    } else if (counter < 70) 
    {
      image(goldCoin7, x, y);
    } else if (counter < 80) 
    {
      image(goldCoin8, x, y);
    } else 
    {
      image(goldCoin9, x, y);
    }
    counter= counter + countDir;
    if (counter>90)
      counter=0;
  }

  @Override
    public void loadSprite()
  {
    goldCoin1 = loadImage("goldCoin1.png");
    goldCoin1.resize(SIZE, SIZE);
    goldCoin2 = loadImage("goldCoin2.png");
    goldCoin2.resize(SIZE, SIZE);
    goldCoin3 = loadImage("goldCoin3.png");
    goldCoin3.resize(SIZE, SIZE);
    goldCoin4 = loadImage("goldCoin4.png");
    goldCoin4.resize(SIZE, SIZE);
    goldCoin5 = loadImage("goldCoin5.png");
    goldCoin5.resize(SIZE, SIZE);
    goldCoin6 = loadImage("goldCoin6.png");
    goldCoin6.resize(SIZE, SIZE);
    goldCoin7 = loadImage("goldCoin7.png");
    goldCoin7.resize(SIZE, SIZE);
    goldCoin8 = loadImage("goldCoin8.png");
    goldCoin8.resize(SIZE, SIZE);
    goldCoin9 = loadImage("goldCoin9.png");
    goldCoin9.resize(SIZE, SIZE);
  }
}
