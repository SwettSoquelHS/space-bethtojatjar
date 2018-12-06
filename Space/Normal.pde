class Bubble {
  int x_pos;
  int y_pos;

  public Bubble(float x, float y) {
    x = x_pos;
    y = y_pos;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(#CE8B53, 45);
    ellipse(0, 0, 65, 65);
    popMatrix();
  }

  void move() {
    y_pos = y_pos - (int)(2 * Math.random());
    x_pos = x_pos + (int)(10 * Math.random());
    x_pos = x_pos - (int)(10 * Math.random());
    if (y_pos < 0) {
      y_pos = height;
    }

    if (x_pos < 0) {
      x_pos = width;
    }
  }
}
