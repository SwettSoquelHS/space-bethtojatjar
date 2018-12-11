class Bubble {
  float x_pos;
  float y_pos;

  public Bubble(float x, float y) {
    x_pos = x;
    y_pos = y;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(#CE8B53, 45);
    ellipse(0, 0, 65, 65);
    popMatrix();
    
     pushMatrix();
     translate(x_pos,y_pos);
     fill(#F2B769,45);
     ellipse(10,-19,25,25);
     popMatrix();
  }

  void move() {
    y_pos = y_pos - (int)(2 * Math.random());
    x_pos = x_pos + (int)(5 * Math.random());
    x_pos = x_pos - (int)(5 * Math.random());
    if (y_pos < 0) {
      y_pos = height;
    }

    if (x_pos < 0) {
      x_pos = width;
    } else if (x_pos > width) {
      x_pos = 0;
    }
  }
}
