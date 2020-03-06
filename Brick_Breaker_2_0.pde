ArrayList<Brick> myBricks;

/*import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;*/

//font
PFont font;

//color
color gray = #5F5A5A;
color light_gray = #BCB9BF;
color black = 0;
color white = 255;
color red = #FF0000;
color blush_red = #FF6464;
color light_red = #FF9D9D;
color orange = #FF7D00;
color blush_orange = #FF7D64;
color light_orange = #FFAA9B;
color yellow = #FFFF00;
color blush_yellow = #D1CE02;
color light_yellow = #FCF99C;
color green = #0A9D08;
color blush_green = #14E30E;
color light_green = #7EF778;
color blue = #0000FF;
color blush_blue = #6D6DFA;
color light_blue = #4DD6F0;
color purple = #9600FF;
color blush_purple = #C883FA;
color light_purple = #D7ADF5;
color light_pink = #E596FF;
color brown = #764F06;
color pink = #FF83A4;

int highscore;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int SELECT = 5;
final int WIN = 6;
int mode = GAME;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

float gridx, gridy;

//target variables
float x, y; //target's position
float vx, vy; //target's velocity  
int score, lives;


//ball variables
float bx, by, bvx, bvy; //ball variables

//paddle variables
float px, py;

//keyboard variables
boolean leftKey, rightKey; 

//bslider
float sliderY;
float bthickness;

//pslider
float psliderY;
float pthickness;
 

void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign (CENTER, CENTER);
  rectMode (CENTER);
  font = loadFont("font1.vlw");
  lives = 5;
  score = 0;
  gridx = 25;
  gridy = 25;
  sliderY = 400;
  bthickness = 80;
  psliderY = 400;
  bthickness = 80;
  
  myBricks = new ArrayList<Brick>();
  
  int i = 0;
  while (i < 80) {  
    myBricks.add( new Brick() );
    gridx = gridx + 50;
    i = i + 1;
    if (gridx > 775) {
     gridy = gridy + 50; 
     gridx = 25;
    }
  }

  
  
  //ball initial values
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  
  //paddle initial values
  px = width/2;
  py = height+10;

  //
  /*minim = new Minim(this);
  theme = minim.loadFile("mariobrostheme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");*/

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == SELECT) {
    select();    
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == WIN) {
    win();    
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
