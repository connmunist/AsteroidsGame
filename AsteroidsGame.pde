Spaceship jp = new Spaceship();
Star [] stars = new Star [200];
 ArrayList <Asteroid> chan = new ArrayList <Asteroid>();
 ArrayList <Bullet> sniper = new ArrayList <Bullet>();
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
  for(int i = 0; i < sniper.size(); i++){
    for(int j = 0; j < chan.size(); j++){
      if (dist((float)(chan.get(j).getX()),(float)(chan.get(j).getY()),(float)(sniper.get(i).getCenterX()),(float)(sniper.get(i).getCenterY())) < 25){
        sniper.remove(i);
        chan.remove(j);
        chan.add(new Asteroid());
        break;
    }
  }
}
for(int i = 0; i < sniper.size(); i++){
  sniper.get(i).move();
  sniper.get(i).show();
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

public void mousePressed(){
  sniper.add(new Bullet(jp));
}
