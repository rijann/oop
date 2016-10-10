public class SolarSystem
{
  private ArrayList<Planet> planets;
  
  // NB: Our reference (planets) doesn’t refer to anything
  // when it was declared so our default constructor
  // makes it refer to an empty arraylist
  public SolarSystem()
  {
    planets = new ArrayList<Planet>();
  }

  /**
   Add a Planet object to our array list
   @param reference to a Planet object
   */
  public void addPlanet(Planet planetToAdd)
  {
    //TODO - it's only one line of code!
    
  }

  /**
   Add a Planet object to our array list
   @return reference to the list of planets
   */
  public ArrayList<Planet> getPlanets()
  {
    //TODO - it's the same as any other "get" method
    
  }
}