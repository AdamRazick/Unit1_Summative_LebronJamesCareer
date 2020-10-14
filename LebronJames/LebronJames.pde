import ddf.minim.*;

Minim minim;

AudioPlayer great;
AudioPlayer first;
AudioPlayer mostvaluable;
AudioPlayer gseven;
AudioPlayer theblock;
AudioPlayer lakerss;
AudioPlayer kobe;
AudioPlayer lefourth; 

int Scene = 0;
PImage fourthring;
PImage Bean;
PImage one;
PImage mvp;
PImage chip;
PImage block;
PImage fourth;
PImage lebron;
PImage obtrophy;
float[] Xs = {0, 150, 60, 50, 0, 500};
float[] Ys= {100, 150, 90, 100, 130, 100};
float xspeed = .1;
PImage fmvp;
float a = 00;
float b = 600;
MVPTrophy Trophy;
MVPTrophy Trophy2;
LarryOBrien heat;
LarryOBrien clutch;


void setup()
{
  size(800, 800);
  //Images


  //Lebron and Lakers win 2020 NBA Finals

  fourthring = loadImage("fourthring.jpg");
  //Kobe Bean Bryant

  Bean = loadImage("Bean.png");
  //NBA Trophy
  obtrophy = loadImage("obtroph.png"); 
  obtrophy.resize(200, 300);

  //Finals MVP Trophy
  fmvp = loadImage("fmvp.png"); 
  fmvp.resize(200, 250);

  //Lebron Draft Night
  one = loadImage("1lbj.jpg"); 

  //Lebron Wins MVP
  mvp = loadImage("mvp.jpg");  
  mvp.resize(500, 500);

  //Lebron Wins Champsionship in Miami
  chip = loadImage("chip.jpg"); 
  chip.resize(700, 550);

  //"Oh Blocked by James!"
  block = loadImage("blk.jpg"); 
  block.resize(700, 500);

  // Lebron and Lakers go to NBA Finals
  fourth = loadImage("focus.jpg"); 
  fourth.resize(800, 600);

  //Lebron James Dunking
  lebron = loadImage("lbj.png");

  //Classes

  //MVP Trophies in Scene 2
  Trophy = new MVPTrophy();
  Trophy2 = new MVPTrophy();

  //Championship Trophies in Scene 3
  heat = new LarryOBrien();
  clutch = new LarryOBrien();

  //Sound Effects

  //Scene 0 Sound
  minim = new Minim(this);
  great = minim.loadFile("great.mp3");

  //Scene = 1 Sound
  minim = new Minim(this);
  first = minim.loadFile("Lebronfirst.mp3");
  first.setGain(-5);

  //Scene 2 Sound
  minim = new Minim(this);
  mostvaluable = minim.loadFile("noregar.mp3");
  mostvaluable.setGain(20);

  //Scene 3 Sound
  minim = new Minim(this);
  gseven = minim.loadFile("clutch.mp3");
  gseven.setGain(10);

  //Scene 4 Sound
  minim = new Minim(this);
  theblock = minim.loadFile("iggy.mp3");

  //Scene 5 Sound
  minim = new Minim(this);
  lakerss = minim.loadFile("lakerss.mp3");

  //Scene 6 Sound
  minim = new Minim(this);
  kobe = minim.loadFile("2010.mp3");
  
  //Scene 7 Sound 
   minim = new Minim(this);
  lefourth = minim.loadFile("lawins.mp3");
  lefourth.setGain(5);

  //Text

  textAlign(CENTER);
}

void draw()
{
  if (Scene == 0)
  {
    background(0);
    image(lebron, Xs[0], Ys[0]);
    Xs[0] = Xs[0] + xspeed;  
    textSize(20);
    text("Come along as we look back on the Career of NBA Legend Lebron James! ", 400, 75); 
    text("Press 's' to start", 400, 750); 
    great.play();
    if (keyPressed) { 
      if (key =='s')
        Scene  = 1;
    }
  }

  if (Scene == 1)
  {
    background(0);
    image(one, Xs[0], Ys[0]);
    Xs[0]+=.15;   
    textSize(20);
    text("''With the First Pick in the 2003 NBA Draft, The Cleveland Cavaliers Select....''", 400, 75); 
    text("Press 'a' to continue", 400, 750); 
    first.play();
    great.pause();
    if (keyPressed) { 
      if (key =='a')
        Scene  = 2;
    }
  }

  if (Scene == 2)
  {
    background(0);
    image(mvp, Xs[1], Ys[1]);  
    textSize(20);
    fill(255);
    text("Lebron James Wins Two Straight MVPs and leads his team to the Finals....", 400, 100);
    text("Press 'b' to continue", 400, 750);
    mostvaluable.play();
    Trophy.Draw();
    Trophy.Move();
    first.pause();
    Trophy2.Draw();
    Trophy2.Fall();
    if (keyPressed) { 
      if (key =='b')
        Scene  = 3;
    }
  }
  if (Scene == 3)
  {
    background(0);
    image(chip, Xs[2], Ys[2]);  
    textSize(20);
    fill(255);
    text("Lebron goes to Miami and wins 2 Championships and 2 Finals MVPs", 400, 50);
    text("Press 'c' to continue", 400, 750);
    gseven.play();
    mostvaluable.pause();
    heat.Draw();
    heat.Move();
    clutch.Draw();
    clutch.Fall();

    if (keyPressed) 
    { 
      if (key =='c')
        Scene  = 4;
    }
  }
  if (Scene == 4)
  {
    background(0);
    image(block, Xs[3], Ys[3]);
    image(fmvp, a, b);
    a += .3;
    Xs[0]+=.020;   
    textSize(22);
    fill(255);
    text("Lebron and the Cavs overcome a 3-1 Deficit to win The Finals", 400, 80);
    text("Press 'd' to continue", 400, 750);
    theblock.play();
    gseven.pause();
    if (keyPressed) { 
      if (key =='d')
        Scene = 5;
    }
  }

  if (Scene == 5)
  {
    background(0);
    image(fourth, Xs[4], Ys[4]);
    Xs[0]+=.020;   
    textSize(20);
    fill(255);
    text("Lebron goes to LA and Leads the Lakers to the Finals in his second season", 400, 100);
    text("Press 'z' to continue", 400, 750);
    lakerss.play();
    theblock.pause();
    if (keyPressed) { 
      if (key =='z')
        Scene = 6;
    }
  }
  if (Scene == 6)
  {
    background(0);
    textSize(85);
    fill(#FFCE05);
    text("Will", 100, 100);
    text("Win", 700, 100);
    text("Fourth", 375, 215);
    fill(#C405FF);
    text("Lebron", 400, 100);
    text("His", 100, 215);
    text("Ring?", 675, 215);
    textSize(20);
    text("The Last Time The Lakers Won Was in 2010, Lead By Kobe Bryant (R.I.P.)", 400, 550);
    text("Press 'w' to Finish", 100, 600);
    image(obtrophy, 80, 225);
    image(obtrophy, 230, 225);
    image(obtrophy, 380, 225);
    image(obtrophy, 530, 225);
    image(Bean, 275, 500);
    fill(255);
    textSize(15);
    lakerss.pause();
    kobe.play();
    if (keyPressed)
    { 
      if (key =='w')
        Scene = 7;
    }
  }

  if (Scene == 7)
  {
    background(0);
    image(fourthring, Xs[4], Ys[4]);
    Xs[0]+=.020;   
    textSize(30);
    fill(255);
    text("THE LAKERS HAVE WON THE 2020 NBA FINALS!", 400, 100);
    lefourth.play();
    kobe.pause();
    
    
  }
}
