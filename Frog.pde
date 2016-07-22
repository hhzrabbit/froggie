class Frog {

  float xcor, ycor;
  int size;

  Frog() {
    size = 30;
    ycor = height - size;
    xcor = width / 2;
  }

  void changeIfPossible(float x, float y) {
    if ( (x - size / 2  >= 0) && 
      (x + size / 2 < width) && 
      (y - size / 2 >= 0) && 
      (y + size / 2 <= height)) {
      xcor = x;
      ycor = y;
    }
  }

  void move(String dir) {
    if (dir.equals("UP"))
      changeIfPossible(xcor, ycor - size);
    else if (dir.equals("DOWN"))
      changeIfPossible(xcor, ycor + size);
    else if (dir.equals("LEFT"))
      changeIfPossible(xcor - size, ycor);
    else if (dir.equals("RIGHT"))
      changeIfPossible(xcor + size, ycor);
  }
  
  void display(){
    rectMode(CENTER);
    fill(0, 355, 0);
    rect(xcor, ycor, size, size);  
  }
  
}    