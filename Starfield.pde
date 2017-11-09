//your code here
Particle [] bobs;
void setup()
{
  //your code here
  frameRate(60);
  size(600, 600);
  bobs = new Particle[700];
  int i;
  for (i = 0; i < bobs.length; i++)
  {
    bobs[i] = new NormalParticle();
    // bobs[i] = new JumboParticle();
    //  bobs[i] = new OddballParticle();
  }
  for (i = 1; i < 200; i++)
  {
    bobs[i] = new JumboParticle();
  }
  for (i = 201; i < 402; i++)
  {
    bobs[i] = new OddballParticle();
  }
}
void draw()
{
  //your code here
  background((int)(Math.random()*20));
  for (int i=0; i<bobs.length; i++)
  {
    bobs[i].show();
    bobs[i].move();
    bobs[i].center();
  }
}
class NormalParticle implements Particle
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
    bColor = (int)(Math.random() * 255);
  }
  public void move()
  {
    x = x + (speed * Math.cos(angle));
    y = y + (speed * Math.sin(angle));
    speed = speed + (int)(Math.random()*3 - 1);
  }
  public void show()
  {
    noStroke();
    fill((float)x, (float)y, 100);
    ellipse((float)x, (float)y, 10, 10);
  }
  public void center()
  {
    while (x > 610 || y > 610 || x < -10 || y < -10)
    {
      x = 300;
      y = 300;
      speed = 0;
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
class OddballParticle implements Particle//uses an interface
{
  //your code here
  double x, y, speed, angle, degrees;
  int bColor;

  OddballParticle() {
    x = 300;
    y = 300;
    degrees = 360/(Math.random() * 2*Math.PI);
    speed = (Math.random() * 10);
    angle = (Math.random()*2*Math.PI * degrees);
    bColor = (int)(Math.random() * 255);
  }
  public void move()
  {
    x = x + (speed * Math.cos(angle));
    y = y + (speed * Math.sin(angle));
    speed = speed + 1;
  }
  public void show()
  {
    noStroke();
    fill((float)x, (float)y, bColor, (float)x - 50);
    ellipse((float)x, (float)y, 10, 10);
  }
  public void center()
  {
    while (x > 610 || y > 610 || x < -10 || y < -10)
    {
      x = 300;
      y = 300;
      speed = speed - 1;
    }
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show()
  {
    fill((float)x, (float)y, bColor, (int)(Math.random()*150));

    ellipse((float)x, (float)y, 25, 25);
  }
  public void move()
  {
    x = x - (speed * Math.cos(angle));
    y = y - (speed * Math.sin(angle));
  }
}
