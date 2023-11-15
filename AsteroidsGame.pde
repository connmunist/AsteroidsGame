Spaceship jp = new Spaceship();
Star [] stars = new Star [200];
public void setup() 
{
  size(400,400);
  background(0);
  jp = new Spaceship();
  for(int i = 0; i < stars.length;i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  jp.move();
  jp.show(); 
}
public void keyPressed(){
  if (key == 'w')
  jp.accelerate(1);
  if(key == 'a')
    jp.turn(10);
  if(key == 'd')
    jp.turn(-10);
  if(key == ' ')
    jp.hyperspace();
}
