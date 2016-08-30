void setup()
{
  size(640, 360);
  background(0, 0, 0);
}

void draw()
{
  float x = random(width);
  float y= random(height);
  ellipse(x, y, 50, 50);
}