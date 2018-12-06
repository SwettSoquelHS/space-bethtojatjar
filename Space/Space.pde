//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Bubble[] normalBubbles;

void setup() {
  size(600, 600);
  background(#714B2C);
  frameRate(120);
  noStroke();
  normalBubbles = new Bubble[50];
  for (int i = 0; i < normalBubbles.length; i++) {

    int x = (int)(width * Math.random());
    int y = 600;
    normalBubbles[i] = new Bubble(x, y);
  }
} //end of setup


void draw() {
  background(#714B2C);
  for (int i = 0; i < normalBubbles.length; i++) {
    normalBubbles[i].show();
    normalBubbles[i].move();
    
  }
} //end of draw
