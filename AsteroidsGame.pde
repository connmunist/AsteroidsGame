Spaceship jp = new Spaceship();
Star [] stars = new Star [200];
 ArrayList <Asteroid> chan = new ArrayList <Asteroid>();
public void setup() 
{
  size(400,400);
  background(0);
  jp = new Spaceship();
  for(int i = 0; i < stars.length;i++){
    stars[i] = new Star();
  }
   for(int i = 0; i < 20; i++)
     chan.add(new Asteroid());
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  jp.move();
  jp.show(); 
  for(int i = 0;i< chan.size(); i++){
    chan.get(i).move();
    chan.get(i).show();
    float d = dist((float)jp.getX(), (float)jp.getY(), (float)chan.get(i).getX(), (float)chan.get(i).getY());
    if (d < 20)
      chan.remove(i);
  }
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
