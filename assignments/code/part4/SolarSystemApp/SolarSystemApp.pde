SolarSystem ss;

void setup()
{
  size(800, 800);
  
  // create a SolarSystem object
  ss=new SolarSystem();

  // create a planet
  
  // add a moon 
  
  // add the planet to the solar system
  
  
  // add another planet


  // test all the methods
  
  //println(ss.getPlanets());
}

void draw()
{
  background(0, 0, 0);
  fill(255, 255, 0);
  ellipse(width/2, height/2, 100, 100);
  translate(width/2, height/2);
  
  // display each planet
  for (Planet p : ...)
  {
    p.display();
  }
}