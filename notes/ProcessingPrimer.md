# Processing Primer

# Contents
- [Coordinate System](#coordinate-system)
- [Shapes](#shapes)
- [Stroke, Fill & Colour](#stroke-fill-colour)
- [Processing Reference](#processing-reference)
- [Program Flow](#program-flow)
- [Processing BuiltIn Variables](#processing-builtin-variables])
- [Processing Methods](#processing-methods)
- [Processing Variables](#processing-variables)


# What is Processing?
.. http://learningprocessing.com/videos/2-0

processing.org website.  
Can download it

<show first screen>

It is a Java programming environment/tool
	with the purpose of teaching the fundamentals of computer programming in a visual context
	
it has a set of added methods that allows us to easily draw to the screen
it has examples and a community
Anatomy of buttons at top
Run = compile and execute your code

use this code:
```java
size(300,200);
line(0,0,300,200);
```
and show output and code in a image

Processing website has a Reference which has a list of all the processing methods
For example here is reference for the line() or rect() method



# Coordinate System

The coordinate system for pixels in a computer window has a x-axis and y-axis. (0,0) is the coordinate for the top left corner.

![alt text](../images/coord.png "Coordinate System")


You can specify the size of a window using the ``size()`` method.  For example:

```java
size(300,200);
line(0,0,300,200);
```
![](../images/size300200.png "Window 300x200")

# Shapes

![alt text](../images/shapes.png "Shapes")

You can draw a number of shapes such as -- [``line()``](https://processing.org/reference/line_.html "line()"), [``rect()``](https://processing.org/reference/rect_.html "rect()"), [``ellipse()``](https://processing.org/reference/ellipse_.html "ellipse()") and [``point()``](https://processing.org/reference/point_.html "point()")

## Lines

The [``line()``](https://processing.org/reference/line_.html "line()") method draws a line (a direct path between two points) on the screen.

```java
size(300, 200);
line(0, 100, 300, 100);  // a horizontal line across middle

// vertical lines every 10 pixels
for (int x=0; x<300; x=x+10)
  line(x, 0, x, 200);  
```
![](../images/lines.png "Lines")



## Rectangles, Ellipses & Points

```java
size(300, 200);

line(0, 0, 150, 100);
rect(150, 0, 300, 100);
ellipse(50, 150, 50, 50);
point(200, 150);
```
![](../images/shapes2.png "Rectangles, Ellipses & Points")

# Stroke Fill Colour

In Processing, every shape has a [``stroke()``](https://processing.org/reference/stroke_.html "stroke()") and/or a [``fill()``](https://processing.org/reference/fill_.html "fill()"). 

The *stroke* specifes the color for the outline of the shape, and the *fill* specifes the color for the interior of that shape. The default colours for stroke and fill are black and white respectively.

Digital colours are constructed by mixing three primary colours -  red, green, and blue (i.e. *RGB* colour).  RGB colours are expressed as ranges from 0 (none of that colour) to 255 (as much as possible).  RGB colours are listed in the order red, green, and blue. You will get the hang of RGB color mixing through experimentation.

Here is a handy [Colour Picker](http://www.w3schools.com/colors/colors_picker.asp "W3 Colour Picker").

By adding the [``stroke()``](https://processing.org/reference/stroke_.html "stroke()") and [``fill()``](https://processing.org/reference/fill_.html "fill()") methods before the shape is drawn, you can set the color.

For example:

```java
// background(0, 0, 0);
size(300, 200);

stroke(255, 0, 0); // red
line(0, 0, 150, 100); 

stroke(0, 0, 0); // black
fill(0, 255, 0); // green  
rect(150, 0, 300, 100);

stroke(255, 255, 255);  // white
fill(0, 0, 255);  // blue
ellipse(50, 150, 50, 50);

stroke(255, 255, 0); // yellow
point(200, 150);
```
The [``background()``](https://processing.org/reference/background_.html "background()") method sets the background color of the window.  The default is light gray.

![](../images/rgb.png "Stroke, Fill & Colour")


# Processing Reference

blah


# Program Flow

In the programs shown so far the instructions are executed in sequence from the first instruction to the last instruction - the flow is sequential.
This sequential flow is typical of all programs you wrote in *OOP* last year.

However, in *Problem Solving with Robots* a different way of executing instructions was seen with the Robocode software.  
The flow is event driven.
Instructions were executed when an event occured.  For example, a block of code was executed when the robot scanned another robot, or a block of code was executed when the robot was hit by a bullet.

The Processing environment typically uses 2 blocks of code to control the flow of its programs - ```setup()``` and ```draw()```.

```setup()``` is used to execute instructions at the start of the program only **once**.

```draw()``` is used to execute instructions **continuously**.  

**Why use these methods?**

There are often things you need to first initialise in a program:

-	set the size of the window
-	intialise variables
-	draw content in starting locations	

Then there things you need to do as the program runs:

-	move the content
-	get user input 
-	check location of things 
-	change variable values
-	draw new content

For example:

```java
float x; 

// setup() runs first one time
void setup() 
{  
  size(640, 360); // Set the size of the window  
  x=0;            // intialise x coordinated
}

// draw() loops continuously until you close the window
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); 

  ellipse(x, 180, 50, 50);  // draw ellipse using x
  x++;                      // add 1 to x
}
```
These 2 blocks of code will form the template of all of our programs from now on.


# Processing BuiltIn Variables

Processing has some handy built-in system variables that can be used.

For example [``mouseX``](https://processing.org/reference/mouseX.html "mouseX()") and [``height``](https://processing.org/reference/height.html "height()") variables are used here:

```java
// runs one time
void setup() 
{
  // Set the size of the window
  size(640, 360);
}

// loops continuously 
void draw() 
{
  background(0, 0, 0);
  fill(255, 255, 255); 

  ellipse(mouseX, height/2, 50, 50);  // draw ellipse using mouse x coordinate
}
```
Other built-in variables are [``mouseY``](https://processing.org/reference/mouseY.html "mouseY()") and [``width``](https://processing.org/reference/width.html "width()")


# Processing Methods

[``size()``](https://processing.org/reference/size_.html "size()")
[``line()``](https://processing.org/reference/line_.html "line()")
[``rect()``](https://processing.org/reference/rect_.html "rect()")
[``ellipse()``](https://processing.org/reference/ellipse_.html "ellipse()") 
[``point()``](https://processing.org/reference/point_.html "point()")
[``stroke()``](https://processing.org/reference/stroke_.html "stroke()")
[``fill()``](https://processing.org/reference/fill_.html "fill()")
[``background()``](https://processing.org/reference/background_.html "background()")


# Processing Variables

[``mouseX``](https://processing.org/reference/mouseX.html "mouseX()")
[``mouseY``](https://processing.org/reference/mouseY.html "mouseY()")
[``width``](https://processing.org/reference/width.html "width()")
[``height``](https://processing.org/reference/height.html "height()")