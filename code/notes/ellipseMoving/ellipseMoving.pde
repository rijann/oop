float x; 

// setup() runs first one time
void setup() 
{  
  size(200, 200); // Set the size of the window  
  x=0;            // intialise x coordinated
}

// draw() loops continuously until you close the window
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); 

  ellipse(x, 100, 50, 50);  // draw ellipse using x
  x++;                      // add 1 to x
}