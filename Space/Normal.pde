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
    fill(#CE8B53, 20);
    ellipse(0, 0, 35, 35);
    popMatrix();
  }

  void move() {
    y_pos = y_pos - (int)(6 * Math.random());
    x_pos = x_pos + (int)(5 * Math.random());
    x_pos = x_pos - (int)(5 * Math.random());
    if (y_pos < 0) {
      y_pos = height;
    }

    if (x_pos < 0) {
      x_pos = width;
    }
  }
}
