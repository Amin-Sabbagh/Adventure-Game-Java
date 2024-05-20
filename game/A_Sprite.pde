public class Sprite 
{ 
  //////Class Memebers//////
  protected int x;
  protected int y;
  protected int counter; 
  protected int countDir=1;

  ///////Constructor///////
  public Sprite (int x, int y)
  {
    this.x= x;
    this.y= y;
    loadSprite();
  }
  /////Methods//////
  public void render ()
  {
  }

  public void loadSprite()
  {
  }
}
