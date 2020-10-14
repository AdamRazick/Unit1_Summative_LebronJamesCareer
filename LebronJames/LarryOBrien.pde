  class LarryOBrien
  
  {
  PImage larry;  
  float x;
  float y;
  float yspeed;
  
  LarryOBrien()
  {
    x = 400;
    y = random(50, 750);
    yspeed = .1;
    larry = loadImage("obtroph.png");
  }

  void Move()
  {
    y += yspeed;
  }

  void Draw()
  {

    fill(#0512F7);
    for (int i=0; i<2; i++)
    {
      image(larry, 200, 625, 140, 170);
    }
  }

  void Fall()
  {     
    for (int b=0; b<2; b++)
    {
      image(larry, 440, 625, 140, 170);
    }
  }
}
