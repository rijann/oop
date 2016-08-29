float x; 
float inc=2;

// setup() runs first one time
void setup() 
{  
  size(200, 200); // Set the size of the window  
  x=25;            // intialise x coordinated

  frameRate(30);
}

// draw() loops continuously until you close the window
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255);
  ellipse(x, 100, 50, 50);  // draw ellipse using x

  //fill(255, 0, 0);
  //ellipse(width-x, 100, 50, 50);  // draw ellipse using x

  if (x+25>width || x-25<0)
    inc=inc*-1;

  saveFrame("img-###.jpg");


  x=x+inc;
  //x=x+1;                      // add 1 to x
}


void mousePressed()
{
  exit();
}