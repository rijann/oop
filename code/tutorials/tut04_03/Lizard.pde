public class Lizard
{
  public final String imageFile = "images/lizard.png";
  
  // add class variables here

  public Lizard(...)
  {
    this.fly=...;
    this.x=...;
    this.y=...;
  }

  // setters and getters go here
  ...
  ...  
  
  public void display()
  {
    img = loadImage(imageFile);
    setX(mouseX);
    setY(mouseY);
    image(img, getX(), getY());    
    fly.move();
    fly.display();
  }
  
  public String toString()
  {
    return [Lizard: x=*x*;y=*y*]
  }
  
}