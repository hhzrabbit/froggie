class Obstacle {
  
  int _width, _height;
  PVector position, velocity;
  
  Obstacle(float x, float y, int width, int height, int dir){
    _width = width;
    _height = height;
    position = new PVector(x, y);
    velocity = new PVector(dir, 0);
  }
  
  void move(){
    position.add(velocity);
  }
  
  void display(){
   rectMode(CENTER);
   fill(0, 0, 255);
   rect(position.x, position.y, _width, _height);
  }
  
  boolean touchingFrog()Frog f{
   
  }
  
}