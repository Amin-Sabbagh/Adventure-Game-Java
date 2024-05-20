public class Hero extends MovingSprite
{
  //////Class Memebers//////
  private  PImage idleDown1, idleDown2, idleDown3, idleDown4, idleDown5, idleDown6;
  private PImage idleUp1, idleUp2, idleUp3, idleUp4, idleUp5, idleUp6;
  private PImage idleLeft1, idleLeft2, idleLeft3, idleLeft4, idleLeft5, idleLeft6;
  private PImage idleRight1, idleRight2, idleRight3, idleRight4, idleRight5, idleRight6;
  private PImage down1, down2, down3, down4, down5, down6;
  private PImage up1, up2, up3, up4, up5, up6;
  private PImage left1, left2, left3, left4, left5, left6;
  private PImage right1, right2, right3, right4, right5, right6;

  /////Constructor///////
  public Hero (int x, int y)
  {
    super(x, y);
  }

  //// Methods//////
  public void setX(int x) 
  {
    this.x = x;
  }

  public void setY(int y) 
  {
    this.y = y;
  }

  /////Function Methods////////
  public boolean collect(Coins other)
  {
    if (other==null)
      return false;
    float lengthX= other.x- (x +5);
    float lengthY= other.y- (y+ 5);
    float length= sqrt(lengthX*lengthX + lengthY*lengthY);
    return (length<25);
  }

  public boolean collect(BlueCoins other)
  {
    if (other==null)
      return false;
    float lengthX= other.x- (x +5);
    float lengthY= other.y- (y+ 5);
    float length= sqrt(lengthX*lengthX + lengthY*lengthY);
    return (length<25);
  }


  @Override
    public void loadSprite()
  {
    idleDown();
    idleUp();
    idleLeft();
    idleRight();
    up();
    down();
    left();
    right();
  }


  @Override
    public void render()
  {
    ///animate the sprite depending on game controls//
    if (right==1)  
    {
      animateRight();
    } else if (right ==0 && rightI==1)
    {
      animateIdleRight();
    } else if (left==1)
    {
      animateLeft();
    } else if (left ==0 && leftI==1)
    {
      animateIdleLeft();
    } else if (down==1)
    {
      animateDown();
    } else if (down==0 && downI==1)
    {
      animateIdleDown();
    } else if (up==1)
    {
      animateUp();
    } else if (up==0 && upI==1)
    {
      animateIdleUp();
    } else
    {
      animateIdleDown();
    }
  }

  public void idleDown()
  {
    idleDown1 = loadImage("idle1.png");
    idleDown1.resize(SIZE, SIZE);
    idleDown2 = loadImage("idle2.png");
    idleDown2.resize(SIZE, SIZE);
    idleDown3 = loadImage("idle3.png");
    idleDown3.resize(SIZE, SIZE);
    idleDown4 = loadImage("idle4.png");
    idleDown4.resize(SIZE, SIZE);
    idleDown5 = loadImage("idle5.png");
    idleDown5.resize(SIZE, SIZE);
    idleDown6 = loadImage("idle6.png");
    idleDown6.resize(SIZE, SIZE);
  }

  public void idleUp()
  { 
    idleUp1 = loadImage("idleUp1.png");
    idleUp1.resize(SIZE, SIZE);
    idleUp2 = loadImage("idleUp2.png");
    idleUp2.resize(SIZE, SIZE);
    idleUp3 = loadImage("idleUp3.png");
    idleUp3.resize(SIZE, SIZE);
    idleUp4 = loadImage("idleUp4.png");
    idleUp4.resize(SIZE, SIZE);
    idleUp5 = loadImage("idleUp5.png");
    idleUp5.resize(SIZE, SIZE);
    idleUp6 = loadImage("idleUp6.png");
    idleUp6.resize(SIZE, SIZE);
  }

  public void idleLeft()
  { 
    idleLeft1 = loadImage("idleLeft1.png");
    idleLeft1.resize(SIZE, SIZE);
    idleLeft2 = loadImage("idleLeft2.png");
    idleLeft2.resize(SIZE, SIZE);
    idleLeft3 = loadImage("idleLeft3.png");
    idleLeft3.resize(SIZE, SIZE);
    idleLeft4 = loadImage("idleLeft4.png");
    idleLeft4.resize(SIZE, SIZE);
    idleLeft5 = loadImage("idleLeft5.png");
    idleLeft5.resize(SIZE, SIZE);
    idleLeft6 = loadImage("idleLeft6.png");
    idleLeft6.resize(SIZE, SIZE);
  }

  public void idleRight()
  { 
    idleRight1 = loadImage("idleRight1.png");
    idleRight1.resize(SIZE, SIZE);
    idleRight2 = loadImage("idleRight2.png");
    idleRight2.resize(SIZE, SIZE);
    idleRight3 = loadImage("idleRight3.png");
    idleRight3.resize(SIZE, SIZE);
    idleRight4 = loadImage("idleRight4.png");
    idleRight4.resize(SIZE, SIZE);
    idleRight5 = loadImage("idleRight5.png");
    idleRight5.resize(SIZE, SIZE);
    idleRight6 = loadImage("idleRight6.png");
    idleRight6.resize(SIZE, SIZE);
  }

  public void down()
  {
    down1 = loadImage("Down1.png");
    down1.resize(SIZE, SIZE);
    down2 = loadImage("Down2.png");
    down2.resize(SIZE, SIZE);
    down3 = loadImage("Down3.png");
    down3.resize(SIZE, SIZE);
    down4 = loadImage("Down4.png");
    down4.resize(SIZE, SIZE);
    down5 = loadImage("Down5.png");
    down5.resize(SIZE, SIZE);
    down6 = loadImage("Down6.png");
    down6.resize(SIZE, SIZE);
  }

  public void up()
  {
    up1 = loadImage("Up1.png");
    up1.resize(SIZE, SIZE);
    up2 = loadImage("Up2.png");
    up2.resize(SIZE, SIZE);
    up3 = loadImage("Up3.png");
    up3.resize(SIZE, SIZE);
    up4 = loadImage("Up4.png");
    up4.resize(SIZE, SIZE);
    up5 = loadImage("Up5.png");
    up5.resize(SIZE, SIZE);
    up6 = loadImage("Up6.png");
    up6.resize(SIZE, SIZE);
  }

  public void left()
  {
    left1 = loadImage("Left1.png");
    left1.resize(SIZE, SIZE);
    left2 = loadImage("Left2.png");
    left2.resize(SIZE, SIZE);
    left3 = loadImage("Left3.png");
    left3.resize(SIZE, SIZE);
    left4 = loadImage("Left4.png");
    left4.resize(SIZE, SIZE);
    left5 = loadImage("Left5.png");
    left5.resize(SIZE, SIZE);
    left6 = loadImage("Left6.png");
    left6.resize(SIZE, SIZE);
  }

  public void right()
  {
    right1 = loadImage("Right1.png");
    right1.resize(SIZE, SIZE);
    right2 = loadImage("Right2.png");
    right2.resize(SIZE, SIZE);
    right3 = loadImage("Right3.png");
    right3.resize(SIZE, SIZE);
    right4 = loadImage("Right4.png");
    right4.resize(SIZE, SIZE);
    right5 = loadImage("Right5.png");
    right5.resize(SIZE, SIZE);
    right6 = loadImage("Right6.png");
    right6.resize(SIZE, SIZE);
  }

  public void animateIdleDown()
  {
    if (counter < 10) 
    {
      image(idleDown1, x, y);
    } else if (counter < 20) 
    {
      image(idleDown2, x, y);
    } else if (counter < 30)
    {
      image(idleDown3, x, y);
    } else if (counter < 40) 
    {
      image(idleDown4, x, y);
    } else if (counter < 50) 
    {
      image(idleDown5, x, y);
    } else 
    {
      image(idleDown6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateIdleUp()
  {
    if (counter < 10) 
    {
      image(idleUp1, x, y);
    } else if (counter < 20) 
    {
      image(idleUp2, x, y);
    } else if (counter < 30)
    {
      image(idleUp3, x, y);
    } else if (counter < 40) 
    {
      image(idleUp4, x, y);
    } else if (counter < 50) 
    {
      image(idleUp5, x, y);
    } else 
    {
      image(idleUp6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateIdleLeft()
  {
    if (counter < 10) 
    {
      image(idleLeft1, x, y);
    } else if (counter < 20) 
    {
      image(idleLeft2, x, y);
    } else if (counter < 30)
    {
      image(idleLeft3, x, y);
    } else if (counter < 40) 
    {
      image(idleLeft4, x, y);
    } else if (counter < 50) 
    {
      image(idleLeft5, x, y);
    } else 
    {
      image(idleLeft6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateIdleRight()
  {
    if (counter < 10) 
    {
      image(idleRight1, x, y);
    } else if (counter < 20) 
    {
      image(idleRight2, x, y);
    } else if (counter < 30)
    {
      image(idleRight3, x, y);
    } else if (counter < 40) 
    {
      image(idleRight4, x, y);
    } else if (counter < 50) 
    {
      image(idleRight5, x, y);
    } else 
    {
      image(idleRight6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateDown()
  {
    if (counter < 10) 
    {
      image(down1, x, y);
    } else if (counter < 20) 
    {
      image(down2, x, y);
    } else if (counter < 30)
    {
      image(down3, x, y);
    } else if (counter < 40) 
    {
      image(down4, x, y);
    } else if (counter < 50) 
    {
      image(down5, x, y);
    } else 
    {
      image(down6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateUp()
  {
    if (counter < 10) 
    {
      image(up1, x, y);
    } else if (counter < 20) 
    {
      image(up2, x, y);
    } else if (counter < 30)
    {
      image(up3, x, y);
    } else if (counter < 40) 
    {
      image(up4, x, y);
    } else if (counter < 50) 
    {
      image(up5, x, y);
    } else 
    {
      image(up6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }
  public void animateLeft()
  {
    if (counter < 10) 
    {
      image(left1, x, y);
    } else if (counter < 20) 
    {
      image(left2, x, y);
    } else if (counter < 30)
    {
      image(left3, x, y);
    } else if (counter < 40) 
    {
      image(left4, x, y);
    } else if (counter < 50) 
    {
      image(left5, x, y);
    } else 
    {
      image(left6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateRight()
  {
    if (counter < 10) 
    {
      image(right1, x, y);
    } else if (counter < 20) 
    {
      image(right2, x, y);
    } else if (counter < 30)
    {
      image(right3, x, y);
    } else if (counter < 40) 
    {
      image(right4, x, y);
    } else if (counter < 50) 
    {
      image(right5, x, y);
    } else 
    {
      image(right6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }

  public void animateSplash(int x, int y)
  {
    if (counter < 10) 
    {
      image(idleDown1, x, y);
    } else if (counter < 20) 
    {
      image(idleDown2, x, y);
    } else if (counter < 30)
    {
      image(idleDown3, x, y);
    } else if (counter < 40) 
    {
      image(idleDown4, x, y);
    } else if (counter < 50) 
    {
      image(idleDown5, x, y);
    } else 
    {
      image(idleDown6, x, y);
    }
    counter= counter + countDir;
    if (counter>60)
      counter=0;
  }
}
