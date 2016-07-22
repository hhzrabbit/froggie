Frog player;
Obstacle[] obs;

void setup(){
  size(600, 600);
  background(50, 200, 200);
  player = new Frog();
  obs = new Obstacle[10];
}

void draw(){
  background(50, 200, 200);
  player.display();
}

void keyPressed(){
 if (keyCode == UP)
   player.move("UP");
 else if (keyCode == DOWN)
   player.move("DOWN");
 else if (keyCode == LEFT)
   player.move("LEFT");
 else if (keyCode == RIGHT)
   player.move("RIGHT");
  
}