class MVPTrophy

{
  PImage lebronjames;  
  float x;
  float y;
  float yspeed;

  //member data
  MVPTrophy()
  {
    x = 400;
    y = random(50, 750);
    yspeed = .1;
    lebronjames = loadImage("mvptroph.png");
  }

  void Move()
  {
    y += yspeed;
  }

  void Draw()
  {

    fill(#0512F7);
    for (int i=0; i<20; i++)
    {
      image(lebronjames, 0, random(125, 800), 200, 220);
    }
  }

  void Fall()
  {     
    for (int b=0; b<20; b++)
    {
      image(lebronjames, 600, random(125, 800), 200, 220);
    }
  }
}
