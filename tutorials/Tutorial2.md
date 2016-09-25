# Tutorial #2 - Arrays & Arraylists

## Part 0 - Classes & Objects

1.	Run the program [tut02_00](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_00).
	It shows how a simple class is declared, created and used.  

	Make sure you have both program files in the same folder.

	Take time to understand this code.

2.	Modify the code to use the ``Spot`` class constructor:

	``Spot(float x, float y)``

	to add a second ``Spot`` to any other (x,y) location within the window.


## Part 1 - Arrays

1.	Run the program [tut02_01](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_01).

2.	Change or add some more values in the array, and run again.

3.	Modify the code in ``setup()`` to first find the largest number in the array and then draw all ellipses using this number.

	If the largest number is 50 this is the output you'd see:

	![alt text](../images/tut02_01a.png "")

	Hint: use a separate variable which maintains the value of the highest number encountered thus far (and then check each array element and compare against this value).

4.	Open the program [tut02_02](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_02).
	
	In ``setup()`` add a value one at a time to the ``data`` array.  Then run to see a simple bar chart.


5.	Open the program [tut02_03](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_03).

	It has an array of grades.
	
	In ``draw()`` provide the code to draw a circle (ellipse) for each grade.  Draw each circle at a random location and use the grade value to determine the diameter of the circle.

6.	Modify the code in ``tut02_03`` to draw a red circle for any grade less than 40.

7.	Lastly, comment the line below in ``setup()``:

	```java
	// noLoop();
	```

	and run again.  This stops the ``draw()`` method being executed repeatedly.



## Part 2 - ArrayLists

These programs are the same as Part 1 but this time use an ``ArrayList`` for storage.


1.	Run the program [tut02_04](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_04).

2.	Change some values and add another value in the arraylist, and run again.

3.	Modify the code in ``setup()`` to first find the largest number in the arraylist and then draw all ellipses using this number.

4.	Open the program [tut02_05](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_05).
	
	In ``setup()`` create and add 5 values to the ``data`` arraylist.  Then run to see a simple bar chart.


5.	Open the program [tut02_06](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_06).

	It has an array of grades.
	
	In ``setup()`` provide the code to create the arraylist called ``data`` and then iterate through ``grades`` array and add values to ``data`` arraylist.  

	In ``draw()`` provide the code to draw a circle (ellipse) for each grade using values from ``data``. 



## Part 3 - ArrayList of Spot objects

1.	Run the program [tut02_07](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_07).
	Make sure that you understand what the code is doing.

2.	Run the program [tut02_08](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_08).
	Make sure that you understand what the code is doing.

3.	Modify the program ``tut02_08`` so a fourth *spot* is created at an appropriate position behind the third spot.

4.	Modify the code so an enhanced for loop is used in the ``draw()`` method that replaces the standard for loop used to move and display the spots.

5.	Modify the code so a new *spot* is created each time a keyboard key is pressed.
	The (x,y) coordinate for it should be at (0,100).

6.	Modify the code so a new *spot* is created each time the mouse is pressed. 
	The (x,y) coordinate for it should be the current mouse (x,y) coordinate.


## Part 4 - ArrayList of Bubble objects

1.	Create a new program called ``tut02_09`` that uses the class ``Bubble`` below:

	```java
	public class Bubble
	{
	  float x;
	  float y;
	  float diameter;

	  public Bubble()
	  {
	    x=random(width);      // random position along x axis
	    y=height;             // start at bottom of window
	    diameter=random(50);  // random diameter
	  }

	  public void display()
	  {
	    fill(125, 50);
	    ellipse(x, y, diameter, diameter);
	  }

	  public void move()
	  {
	    y--;
	    x=x+random(-1, 1);
	  }

	  public String toString()
	  {
	    return "Bubble";
	  }
	}
	```

	Examine this class carefully before using it next.

2.	In the main program code:

	-	declare an arraylist called ``bubbles``
	-	in ``setup()`` create an arraylist called ``bubbles``
	-	in ``setup()`` add 3 bubble objects to the arraylist
	-	in ``draw()`` use a background colour RGB(185,223,234)
	-	in ``draw()`` move and display all the bubbles

	When run you should see bubble floating up the window like this:

	![alt text](../images/tut02_09.png "Bubbles")


## Part 4 - toString()

1.	Modify the program ``tut02_07`` so the method below is added after the ``draw()`` method:

	```java
	void mousePressed()
	{
	  println(sp);
	}
	```

	Run the program and press the mouse a few times.  Make sure that you understand what the code is doing and understand the output in the console window.

2.	Modify the ``Spot`` class code in ``tut02_07`` by uncommenting the ``toString()`` method.  Run the program again and click the mouse again.

3.	Modify the ``toString()`` method to print this data format each time the mouse is clicked:

	``
	[Spot: x=170.0, y=100.0, diameter=50.0]
	``


## Part 5 - Chroma key

Chroma key (or green-screen) is a technique for compositing (layering) two images or video streams together.
In this section you will cobine two images together. One is the *foreground image*, of a
person in front of a green background; the second is the replacement *background
image*. 

You must iterate through the pixels of the foreground image, replacing each green screen pixel with the corresponding pixel from the background image. The new pixels are saved into a third image, which is saved as a new file.

1.	Open the program [tut02_10](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_10).
	Make sure you also place both images into this program folder.  Run the program.

2.	


## Part 6 - Cards Array & ArrayList

This code will generate 5 random card numbers, store them in an array and display them.
Make sure you have the subfolder ``images`` in the same folder as your program.

1.	Open the program [tut02_11](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_11).
	Make sure you also copy the ``images`` folder into this program folder.  Run the program.
	You should see 5 random cards printed in the window.

	Take time to read and understand the code.


2.	Change the value of the constant variable MAX_CARD_VALUE to 10 and run the program a few times to confirm duplicate cards can be dealt.

3.	Try to prevent the code from displaying duplicate cards.


Below is a more object-oriented way to tackle the idea of handling cards. 
We create a class ``Cards`` to store and handle the cards, and we can then create an object of that class wherever we wish.

4.	Open the program [tut02_12](https://github.com/barcaxi/oop/tree/master/code/tutorials/tut02_12).
	Again, make sure you also copy the ``images`` folder into this program folder.  Run the program.
	You should see 5 random cards printed in the window.

	Take time to read and understand the code.


5.	Modify the code to use an ``ArrayList`` not an array to store the cards. 

6.	Again, yry to prevent the code from displaying duplicate cards.


