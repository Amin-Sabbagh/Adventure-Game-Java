public class Collection extends Sprite 
{
  //////Class Memebers//////
  private PImage collect1, collect2, collect3, collect4, collect5, collect6;

  ///////Constructor///////
  public Collection (int x, int y)
  {
    super(x, y);
  }

  /////Methods//////
  @Override
    public void render()
  {
    if (counter < 5) 
    {
      image(collect1, x, y);
    } else if (counter < 10) 
    {
      image(collect2, x, y);
    } else if (counter < 15)
    {
      image(collect3, x, y);
    } else if (counter < 20) 
    {
      image(collect4, x, y);
    } else if (counter < 25) 
    {
      image(collect5, x, y);
    } else if (counter < 30) 
    {
      image(collect6, x, y);
    } else 
    {
    }
    counter= counter + countDir;
  }

  @Override
    public void loadSprite()
  {
    collect1 = loadImage("collect1.png");
    collect1.resize(SIZE*3, SIZE*3);
    collect2 = loadImage("collect2.png");
    collect2.resize(SIZE*3, SIZE*3);
    collect3 = loadImage("collect3.png");
    collect3.resize(SIZE*3, SIZE*3);
    collect4 = loadImage("collect4.png");
    collect4.resize(SIZE*3, SIZE*3);
    collect5 = loadImage("collect5.png");
    collect5.resize(SIZE*3, SIZE*3);
    collect6 = loadImage("collect6.png");
    collect6.resize(SIZE*3, SIZE*3);
  }
}
