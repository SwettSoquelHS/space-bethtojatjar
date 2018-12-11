//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Bubble[] normalBubbles;
Jumbo bigBubble;
Icecube Cube;

void setup() {
  size(600, 600);
  background(#714B2C);
  frameRate(120);
  noStroke();
  normalBubbles = new Bubble[50];

  for (int i = 0; i < normalBubbles.length; i++) {

    int x = (int)(width * Math.random());
    int y = (int)(600 * Math.random() + 600);
    normalBubbles[i] = new Bubble(x, y);
    bigBubble = new Jumbo(x, y);
    Cube = new Icecube(x,y);
  }
} //end of setup


void draw() {
  background(#714B2C);
  noStroke();
  for (int i = 0; i < normalBubbles.length; i++) {
    normalBubbles[i].show();
    normalBubbles[i].move();
  }
  
  bigBubble.show();
  bigBubble.move();
  
  Cube.show();
  Cube.move();
} //end of draw
