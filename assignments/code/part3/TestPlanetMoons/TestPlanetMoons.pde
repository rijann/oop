Planet mars;

void setup()
{
  size(800, 800);

  // add tester code here - create a planet mars, add 2 moons, and call some methods, etc.

}

void draw()
{
  background(0, 0, 0);
  fill(255, 255, 0);
  ellipse(width/2, height/2, 100, 100);  
  translate(width/2, height/2);

  mars.display();
}