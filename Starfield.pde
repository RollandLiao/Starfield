//your code here
NormalParticle [] bob;
void setup()
{
  //your code here
  size(600, 600);
  bob = new NormalParticle[600];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
}
void draw()
{
  //your code here
  background(0);
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class NormalParticle
{
  //your code here
  double x, y, speed, angle;
  int bColor;
  NormalParticle()
  {
    x = 300;
    y = 300;
    speed = (Math.random() * 10);
    angle = (Math.random()*2*Math.PI);
    bColor = (int)(Math.random() * 300);
  }
  public void move()
  {
    x = x + (speed * Math.cos(angle));
    y = y + (speed * Math.sin(angle));
  }
  public void show()
  {
    noStroke();
    fill(255);
    ellipse((float)x, (float)y,10 , 10);
  }
}
interface Particle
{
  //your code here
  public void show();
  public void move();
}
class OddballParticle//uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
