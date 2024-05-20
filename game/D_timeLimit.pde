public class TimeLimit
{
  //////Class Memebers//////
  private int seconds;
  private int start;

  //////Constructor///////
  public TimeLimit(int seconds, int start)
  {
    this.seconds = seconds;

    //to store when game starts//
    this.start= millis()-start;
  }

  public int timeLeft() //return the seconds left on the timer or 0///
  { 
    ////millis() processing command, returns time in 1000ths sec since program started///
    return max(0, seconds - start/1000) ;
  }
} 
