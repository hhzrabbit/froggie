class Obstacle {
  
  int w, h;
  PVector position, velocity;
  
  Obstacle(float x, float y, int wi, int he, int dir){
    w = wi;
    h = he;
    position = new PVector(x, y);
    velocity = new PVector(dir, 0);
  }
  
  void move(){
    position.add(velocity);
  }
  
  void display(){
   rectMode(CENTER);
   fill(0, 0, 255);
   rect(position.x, position.y, w, h);
  }
  
}