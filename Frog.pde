class Frog {

  PVector position;
  int size;
  PVector[] corners;

  Frog() {
    size = 30;
    position = new PVector(width / 2, height - size);
    corners = ;
  }

  void changeIfPossible(float x, float y) {
    if ( (x - size / 2  >= 0) && 
      (x + size / 2 < width) && 
      (y - size / 2 >= 0) && 
      (y + size / 2 <= height)) {
      position.set(x, y);
    }
  }

  void move(String dir) {
    if (dir.equals("UP"))
      changeIfPossible(position.x, position.y - size);
    else if (dir.equals("DOWN"))
      changeIfPossible(position.x, position.y + size);
    else if (dir.equals("LEFT"))
      changeIfPossible(position.x - size, position.y);
    else if (dir.equals("RIGHT"))
      changeIfPossible(position.x + size, position.y);
  }

  void move(PVector velocity) {
    position.add(velocity);
  }

  void display() {
    rectMode(CENTER);
    fill(0, 255, 0);
    rect(position.x, position.y, size, size);
  }

  PVector topLeftCorner() {
    return new PVector(position.x - size / 2, position.y - size / 2);
  }

  PVector topRightCorner() {
    return new PVector(position.x + size / 2, position.y - size / 2);
  }

  PVector bottomLeftCorner() {
    return new PVector(position.x - size / 2, position.y + size / 2);
  }

  PVector bottomRightCorner() {
    return new PVector(position.x + size / 2, position.y + size / 2);
  }
}    