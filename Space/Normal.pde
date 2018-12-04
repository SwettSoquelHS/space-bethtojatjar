class Normal {
  int x_pos;
  int y_pos;

  public Normal(float x, float y) {
    x = x_pos;
    y = y_pos;
  }

  void show() {
    popMatrix();
    translate(x_pos, y_pos);
    fill(#CE8B53,85);
    ellipse(0, 0, 35, 35);
    pushMatrix();
  }

  void move() {
  }
}
