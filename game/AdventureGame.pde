import java.util.ArrayList; 

///////////////////////////////////////////////////////////////////////////////////////////
//////Global Variables
///////////////////////////////////////////////////////////////////////////////////////////

/////constant variables; never change////
public final int MOVE=12; 
public final int SIZE=50; 

/////global variables///////////////////
public int score;
public int bestScore;
public int money;
public int lives=3;
public PImage background, logo; 
public int startTime;
public int up, down, left, right;
public int upI, downI, leftI, rightI;

////Declare variable of type of class////
Hero tom;
TimeLimit timer; 

//Declare variable of type of ArrayList//
ArrayList <Enemy> enemy = new ArrayList <Enemy> ();
ArrayList <Coins> coins = new ArrayList <Coins> (); 
ArrayList <BlueCoins> blue = new ArrayList <BlueCoins> ();
ArrayList <Collection> collection = new ArrayList <Collection> (); 

/////intial state of game//////////////
GameMode gameMode = GameMode.SPLASH;

///////////////////////////////////////////////////////////////////////////////////////////
//////setup procedure
///////////////////////////////////////////////////////////////////////////////////////////

public void setup ()
{ 
  size (500, 500);
  background = loadImage("Grass.png");    
  background.resize(width, height);
  logo = loadImage("MMU.png");
  logo.resize(SIZE*2, SIZE*2);

  ////create instance(object)///////////
  tom= new Hero (250, 50);
}

///////////////////////////////////////////////////////////////////////////////////////////
//////Draw procedure
///////////////////////////////////////////////////////////////////////////////////////////

public void draw()
{
  switch (gameMode)
  {
  case SPLASH: 

    startTime = millis();
    image(background, 0, 0);
    image(logo, 0, 0);
    textSize(40);
    fill(255);
    text ("LEGEND OF TOM", 100, 160);
    fill(0);
    textSize(12);
    text ("press \"Space\" key to play", 200, 190);
    text("  High Score:"+bestScore, 220, 210);
    textSize(14);
    fill (25, 25, 112);
    text ("Collect all gold coins to pass to the next level", 90, 250);
    text ("Try collecting blue coins to get a higher score!", 90, 270);
    text ("Avoid fires and zombies! ", 90, 290);
    text ("Be quick, you only have 60 seconds per level! ", 90, 310);
    fill(0);
    tom.animateSplash(240, 70);
    textSize(12);
    text ("References: images from opengameart.org", 0, 400);
    text ("Character, Skeleton, & Grass background: Vryell", 0, 420);
    text ("Spinning Gold Coin & variant Blue Coin : Morgan3d", 0, 440);
    text ("Fire/Flame: KerteX_", 0, 460);
    text ("Hit Animation: Sinestesia", 0, 480);

    break;

  case LEVEL_ONE:

    timer = new TimeLimit(60, startTime);
    image(background, 0, 0);
    fill(0);
    text("  High Score:"+bestScore, 60, 10);
    text("Score:"+score, 10, 10);
    text("Lives:"+lives, 10, 30);
    text("Time:"+ timer.timeLeft(), 10, 50); 
    updateLevel ();
    tomCollect();
    tomCollectBlue();
    for (Enemy e : enemy)  
    {
      if ( e.hit(tom))
      {  
        gameMode = GameMode.LIFE_LOST_ONE;
      }
    }
    if (timer.timeLeft()==0)
    {
      gameMode = GameMode.LIFE_LOST_ONE;
    }
    if (money>5)
    {
      gameMode = GameMode.INTERMEDIATE_ONE;
    }

    break;

  case LIFE_LOST_ONE:

    collection.clear();
    coins.clear();
    blue.clear();
    enemy.clear();
    background(200, 100, 0);
    fill(255);
    textSize(50);
    text(lives+" Lives Left", 100, 250);
    textSize(14);
    text ("press \"Space\" key to continue", 160, 280);
    textSize(12);
    if (lives<1)
    { 
      gameMode = GameMode.GAME_OVER;
    }
    money=0;

    break;

  case INTERMEDIATE_ONE:

    collection.clear();
    coins.clear();
    blue.clear();
    enemy.clear();
    background(60, 0, 60);
    fill(255);
    textSize(50);
    text("WOW GREAT JOB!", 50, 200);
    text("GET READY", 120, 250);
    textSize(14);
    text ("press \"Space\" key to continue", 160, 280);
    textSize(18);
    text("Current Score: "+score, 200, 40);
    textSize(12);

    break;

  case LEVEL_TWO:

    timer = new TimeLimit(60, startTime);
    image(background, 0, 0);
    fill(0);
    text("Score:"+score, 10, 10);
    text("  High Score:"+bestScore, 60, 10);
    text("Lives:"+lives, 10, 30);
    text("Time:"+ timer.timeLeft(), 10, 50); 
    updateLevel ();
    tomCollect();
    tomCollectBlue();
    for (Enemy e : enemy)  
    {
      if ( e.hit(tom))
      {  
        gameMode = GameMode.LIFE_LOST_TWO;
      }
    }
    if (timer.timeLeft()==0)
    {
      gameMode = GameMode.LIFE_LOST_TWO;
    }
    if (money>5)
    {
      gameMode = GameMode.INTERMEDIATE_TWO;
    }

    break;

  case LIFE_LOST_TWO:

    collection.clear();
    coins.clear();
    blue.clear();
    enemy.clear();
    background(200, 100, 0);
    fill(255);
    textSize(50);
    text(lives+" Lives Left", 100, 250);
    textSize(14);
    text ("press \"Space\" key to continue", 160, 280);
    textSize(12);
    if (lives<1)
    { 
      gameMode = GameMode.GAME_OVER;
    }

    break;

  case INTERMEDIATE_TWO:

    collection.clear();
    coins.clear();
    blue.clear();
    enemy.clear();
    background(60, 0, 60);
    fill(255);
    textSize(50);
    text("INCREDIBLE!", 120, 200);
    text("GET READY", 120, 250);
    textSize(14);
    text ("press \"Space\" key to continue", 160, 280);
    textSize(18);
    text("Current Score: "+score, 200, 40);
    textSize(12);

    break;

  case LEVEL_THREE:

    timer = new TimeLimit(60, startTime);
    image(background, 0, 0);
    fill(0);
    text("  High Score:"+bestScore, 60, 10);
    text("Score:"+score, 10, 10);
    text("Lives:"+lives, 10, 30);
    text("Time:"+ timer.timeLeft(), 10, 50); 
    updateLevel ();
    tomCollect();
    tomCollectBlue();
    for (Enemy e : enemy)  
    {
      if ( e.hit(tom))
      {  
        gameMode = GameMode.LIFE_LOST_THREE;
      }
    }
    if (timer.timeLeft()==0)
    {
      gameMode = GameMode.LIFE_LOST_THREE;
    }
    if (money>5)
    {
      gameMode = GameMode.WIN;
    }

    break;

  case LIFE_LOST_THREE:

    collection.clear();
    coins.clear();
    blue.clear();
    enemy.clear();
    background(200, 100, 0);
    fill(255);
    textSize(50);
    text(lives+" Lives Left", 100, 250);
    textSize(14);
    text ("press \"Space\" key to continue", 160, 280);
    textSize(12);
    if (lives<1)
    { 
      gameMode = GameMode.GAME_OVER;
    }
    money=0;

    break;

  case GAME_OVER:

    background(255, 0, 0);
    textSize(50);
    textSize(50);
    text("TOO BAD!", 130, 200);
    text("GAME OVER", 110, 250);
    textSize(14);
    text ("press \"Space\" key to try again!", 140, 280);
    if (score<0)
    {
      score=0;
    }
    textSize(18);
    text("Your Score: "+score, 200, 40);
    text("High Score: "+bestScore, 200, 60);
    textSize(12);

    break;

  case WIN:

    collection.clear();
    coins.clear();
    blue.clear();
    enemy.clear();
    background(0, 0, 255);
    fill(255);
    textSize(50);
    text("LEGENDARY!", 100, 200);
    text("YOU WIN!", 120, 250);
    textSize(14);
    text ("press \"Space\" key to play again!", 140, 280);
    textSize(18);
    text("Your Score: "+score, 200, 40);
    text("High Score: "+bestScore, 200, 60);
    textSize(12);
    if (score>bestScore)
    { 
      bestScore=score;
    }

    break;
  }
}

///////////////////////////////////////////////////////////////////////////////////////////
//////keypressed and keyreleased procedures
///////////////////////////////////////////////////////////////////////////////////////////

public void keyReleased() {
  if (keyCode == UP) 
  {
    ///////////////////////////////////////////////////////////////////////////////////////////
    //////Game Controls for the direction the animated sprite to be facing 
    ///////////////////////////////////////////////////////////////////////////////////////////

    upI=1;
    up=0;
  } else if (keyCode == DOWN) 
  {
    downI=1;
    down=0;
  }
  if (keyCode == LEFT) 
  {
    leftI=1;
    left=0;
  } else if (keyCode == RIGHT) 
  { 
    rightI=1;
    right=0;
  }
}

public void keyPressed()
{
  ///////////////////////////////////////////////////////////////////////////////////////////
  //////Game Controls for moving and what animated sprite to be displayed
  ///////////////////////////////////////////////////////////////////////////////////////////

  if (key==CODED)
  {
    if (keyCode == UP)
    {
      tom.setY(tom.y-MOVE);
      idleResetAnimation();
      up=1;
    }
    if (keyCode == DOWN)
    {
      tom.setY(tom.y+MOVE);
      idleResetAnimation();
      down=1;
    }
    if (keyCode==LEFT)
    {
      tom.setX(tom.x-MOVE);
      idleResetAnimation();
      left=1;
    }
    if (keyCode==RIGHT)
    {
      tom.setX(tom.x+MOVE);
      idleResetAnimation();
      right=1;
    }
  }

  ///////////////////////////////////////////////////////////////////////////////////////////
  //////Keys to change game emu states
  ///////////////////////////////////////////////////////////////////////////////////////////

  if (key == ' '&& gameMode == GameMode.SPLASH ) 
  {
    tom.setX(250); 
    tom.setY(50);
    idleResetAnimation();
    gameMode =GameMode.LEVEL_ONE;
    CreateLevelOne_Sprites ();
    lives=3;
    money=0;
    score=0;
  }

  if (key == ' ' && gameMode == GameMode.LIFE_LOST_ONE)
  {
    gameMode=GameMode.LEVEL_ONE;
    tom.setX(250); 
    tom.setY(50);
    idleResetAnimation();
    CreateLevelOne_Sprites ();
    tryAgain();
    score-=10;
  }

  if (key == ' ' && gameMode == GameMode.INTERMEDIATE_ONE)
  {
    gameMode=GameMode.LEVEL_TWO;
    tom.setX(250); 
    tom.setY(50);
    idleResetAnimation();
    CreateLevelTwo_Sprites ();
    startTime = millis();
    money=0;
  }

  if (key == ' ' && gameMode == GameMode.LIFE_LOST_TWO)
  {
    gameMode=GameMode.LEVEL_TWO;
    tom.setX(250); 
    tom.setY(50);
    idleResetAnimation();
    CreateLevelTwo_Sprites ();
    tryAgain();
    score-=25;
  }
  if (key == ' ' && gameMode == GameMode.INTERMEDIATE_TWO)
  {
    gameMode=GameMode.LEVEL_THREE;
    tom.setX(250); 
    tom.setY(50);
    idleResetAnimation();
    CreateLevelThree_Sprites ();
    startTime = millis();
    money=0;
  }

  if (key == ' ' && gameMode == GameMode.LIFE_LOST_THREE)
  {
    gameMode=GameMode.LEVEL_THREE;
    tom.setX(250); 
    tom.setY(50);
    idleResetAnimation();
    CreateLevelThree_Sprites ();
    tryAgain();
    score-=30;
  }

  if (key == ' ' && gameMode == GameMode.WIN)
  {
    gameMode=GameMode.SPLASH;
  }
  if (key == ' ' && gameMode == GameMode.GAME_OVER)
  {
    gameMode=GameMode.SPLASH;
  }
}

///////////////////////////////////////////////////////////////////////////////////////////
//////Refactored procedures
///////////////////////////////////////////////////////////////////////////////////////////

public void updateLevel ()
{
  if (score<0)
  {
    score=0;
  }
  for (Coins c : coins)   
  {
    c.render();
  }
  for (BlueCoins b : blue)   
  {
    b.render();
  }
  for (Collection col : collection)   
  {
    col.render();
  } 
  tom.update();
  for (Enemy e : enemy)  
  {
    e.update();
  }
}

public void tryAgain()
{
  startTime = millis(); //reset start time of the level///
  lives--;
  money=0;
}


public void tomCollect()
{
  Coins collected = null; 
  for (Coins c : coins)   
  {

    if (tom.collect(c))
    {
      collected=c;
      score+=1;
      money+=1;
      collection.add(new Collection( c.x-SIZE, c.y-SIZE));
    }
  }
  if ( collected!=null ) //was an instance detected
  {
    coins.remove(collected);
  }
}

public void tomCollectBlue()
{
  BlueCoins collected = null; 
  for (BlueCoins b : blue)   
  {
    if (tom.collect(b))
    {
      collected=b;
      score+=5;
      collection.add(new Collection( b.x-SIZE, b.y-SIZE));
    }
  }
  if ( collected!=null ) //was an instance detected
  {
    blue.remove(collected);
  }
}

public void idleResetAnimation()
{
  //reset the sprite to be idle////
  upI=0;
  downI=0; 
  leftI=0;
  rightI =0;
}

///////////////////////////////////////////////////////////////////////////////////////////
//////Refactored 'Create instances" procedures
///////////////////////////////////////////////////////////////////////////////////////////

public void CreateLevelOne_Sprites ()
{
  coins.add(new Coins(100, 50));
  coins.add(new Coins(350, 50));
  coins.add(new Coins(230, 150));
  coins.add(new Coins(400, 400));
  coins.add(new Coins(100, 400));
  coins.add(new Coins(230, 300));
  blue.add(new BlueCoins(450, 260));
  blue.add(new BlueCoins(10, 260));
  for (int i=0; i<500; i=i+100)
  {
    enemy.add(new Fire(10+i, 50+i));
  }
  for (int i=0; i<500; i=i+100)
  {
    enemy.add(new Fire(450-i, 50+i));
  }
}

public void CreateLevelTwo_Sprites ()
{
  for (int i=0; i<400; i=i+150)
  {
    coins.add(new Coins(100+i, 10));
  }
  coins.add(new Coins( 10, 180));
  coins.add(new Coins( 250, 330));
  coins.add(new Coins( 450, 450));
  blue.add(new BlueCoins( 10, 330));
  blue.add(new BlueCoins( 450, 330));
  blue.add(new BlueCoins( 250, 180));
  blue.add(new BlueCoins(450, 180));
  blue.add(new BlueCoins( 10, 450));
  blue.add(new BlueCoins( 250, 450));
  for (int i=0; i<400; i=i+150)
  {
    enemy.add(new Fire(80, 100+i, 2, 0));
  }
  enemy.add(new Zombie(450, 450));
}

public void CreateLevelThree_Sprites ()
{
  enemy.add(new Zombie(450, 450));
  for (int i=0; i<400; i=i+150)
  {
    enemy.add(new Fire(80, 100+i, 2, 0));
  }
  for (int i=0; i<400; i=i+150)
  {
    enemy.add(new Fire(60+i, 100, 0, 2));
  }
  for (int j=0; j<400; j=j+150)
  {
    for (int i=0; i<250; i=i+150)
    {
      blue.add(new BlueCoins(120+i, 100 +j));
    }
  }
  for (int j=0; j<460; j=j+450)
  {
    for (int i=0; i<400; i=i+150)
    {
      coins.add(new Coins( 10+j, 100+i));
    }
  }
}
