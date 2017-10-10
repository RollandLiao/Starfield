//your code here
NormalParticle [] bob;
NormalParticle bobby;
void setup()
{
  //your code here
  frameRate(60);
  size(600, 600);
  bob = new NormalParticle[12000];
  bobby = new JumboParticle();
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bobby = new JumboParticle();
}
void draw()
{
  //your code here
  background(0);
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
    bob[i].center();
    //  bobby.show();
    //  bobby.move();
    //  bobby.center();
  }
}
class NormalParticle
{
  //your code here
  double x, y, speed, angle, degrees;
  int bColor;

  NormalParticle()
  {
    x = 300;
    y = 300;
    degrees = 360/(Math.random() * 2*Math.PI);
    speed = (Math.random() * 10);
    angle = (Math.random()*2*Math.PI * degrees);
    bColor = (int)(Math.random() * 100);
  }
  public void move()
  {
    x = x + (speed * Math.cos(angle));
    y = y + (speed * Math.sin(angle));
    speed = speed + 1;
    angle = angle + 1;
  }
  public void show()
  {
    noStroke();
    fill((float)x, (float)y, 100);
    ellipse((float)x, (float)y, 10, 10);
  }
  public void center()
  {
    if (x > 610 || y > 610)
    {
      x = 300;
      y = 300;
      angle = (Math.random()*2*Math.PI);
    }
  }
}
interface Particle
{
  //your code here
  public void show();
  public void move();
  public void center();
}
class OddballParticle//uses an interface
{
  //your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show()
  {
    fill(bColor, -1 * bColor, -2 * bColor);
    ellipse((float)x, (float)y, 30, 30);
    while (bColor > 255)
    {
      bColor = 0;
    }
    bColor = bColor + 70;
  }
}
