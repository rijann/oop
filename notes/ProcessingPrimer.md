# Processing Primer

# Contents
- [Coordinate System](#coordinate-system)
- [Shapes](#shapes)
- [Colour](#colour)



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

## line()

Draws a line (a direct path between two points) to the screen

``line(0,0,300,200)``

```java
size(300, 200);
line(0, 100, 300, 100);  // a horizontal line across middle

// vertical lines every 10 pixels
for (int x=0; x<300; x=x+10)
  line(x, 0, x, 200);  
```
![](../images/lines.png "Lines")

See [``line()``](https://processing.org/reference/line_.html "line()")

blah

blah
blah
blah

blah
blah
blah

blah
blah
blah

blah
blah
blah

blah
blah
blah

blah
blah
blah

blah
blah
blah

blah
blah
blah

# Colour


# Methods

[``size()``](https://processing.org/reference/size_.html "size()")
[``line()``](https://processing.org/reference/line_.html "line()")