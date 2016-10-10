Moon moon;

void setup()
{
  size(800, 800);  

  // add tester code here - create a moon object, call some of its methods, etc.
  
}

void draw()
{
  background(0, 0, 0);
  translate(width/2, height/2);
  moon.display();
}