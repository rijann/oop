public class Planet
{
  private float angle=0.01;
  // add class member variables here


  // add constructor here


  // add other methods here


  // This will display the moon when other code is completed.  You don't need to understand this code.
  public void display()
  {
    angle=angle+(0.01*speed);
    pushMatrix();
    rotate(angle);
    translate(distance,0);
    fill(255, 255, 255);
    ellipse(0, 0, radius*2, radius*2);    
    moon.display();    
    popMatrix();    
  }
}