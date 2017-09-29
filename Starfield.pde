//your code here
void setup()
{
  //your code here
  size(600,600);
}
void draw()
{
  //your code here
}
class NormalParticle
{
  //your code here
  double x, y, dir, speed;
  NormalParticle()
  {
    x = 300;
    y = 300;    
  }
  void move()
  {
    x = x + Math.cos(x) * speed;
    y = y + Math.sin(y) * speed;
  }
  void show()
  {
    ellipse((float)x,(float)y,10,10);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}