class Icecube {
  float x_pos;
  float y_pos;

  public Icecube(float x, float y) {
    x_pos = x;
    y_pos = y;
  }

  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(#CFF0FC, 62);
    rect(0, 0, 120, 120, 7);
    stroke(#C9D4D8);
    strokeWeight(15);
    line(30, 20, 95, 20);
    line(95, 20, 95, 75);

    popMatrix();
  }

  void move() {
    y_pos = y_pos - (int)(4.5 * Math.random());
    x_pos = x_pos + (int)(6 * Math.random());
    x_pos = x_pos - (int)(7 * Math.random());
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
