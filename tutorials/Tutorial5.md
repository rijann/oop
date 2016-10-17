# Tutorial #5 - Inheritance



## Part 1 - Revision


![alt text](../images/Circle.png "Circle class")

A class called ``Circle`` is designed as shown above. It contains: 

-	three ``private`` instance variables - ``x``, ``y``, and ``radius``
-	one default constructor
-	three public methods: ``display()``, ``getRadius()`` and ``getArea()``


1.	Open and run the program [tut05_01](https://github.com/barcaxi/oop/blob/master/code/tutorials/tut05_01/tut05_01.zip?raw=true).  Make sure you understand how this is working.

2.	 Modify the class ``Circle`` to include a second constructor for constructing a ``Circle`` instance with arguments for ``x``, ``y`` and ``radius``:

	```java
	public Circle(int x, int y, int radius) 

	```
	Provide the necessary code to initialise the class variables with the constructor arguments.

3.	Modify the test program ``tut05_01`` to construct an instance of ``Circle`` using the new constructor.


4.	Add **getter** methods for both class variables ``x`` and ``y``, for example:

	```java
	public int getX() {...}

	```

5.	In ``tut05_01`` can you access the instance variable radius directly? For example:

	```java
	println(c.radius); 

	````
	Try it out and understand the error message.


6.	Add three public **setter** methods for changing the ``x``, ``y``, and ``radius`` class variables in ``Circle``.
	
	In ``tut05_01`` test these methods with code like this:

	```java
	c = new Circle();
	c.setX(100);
	c.setY(100);
	c.setRadius(30);

	```


7.	In the second constructor:

	```java
	public Circle(int x, int y, int radius) 

	```

	use the keyword ``this`` when referring to the class variables. (if you're not doing so already)


8.	Every well-designed Java class should contain a method called ``toString()`` that returns a short ``String`` description of the object.  Include a ``toString()`` method in the ``Circle`` class:

	```java
	public String toString()
	{
		return ....;
	}

	```	

	It should return a string in the format:  "Circle: x=<xValue>; y=<yValue>; radius=<radiusValue>;".  For example, "Circle: x=0; y=0; radius=20;"


	In ``tut05_01`` test ``toString()`` works like this:

	```java
	Circle c = new Circle(100,100,50);
	println(c.toString());             // explicit call
	println(c);                        // implicit call

	```


## Part 2 - Inheritance Example

![alt text](../images/animal_cat_dog.png "Animal, Cat, Dog")

In this exercise a ``Cat`` and ``Dog`` class are implemented as subclasses of an ``Animal`` class as shown above.

1.	Open and run the program [tut05_02](https://github.com/barcaxi/oop/blob/master/code/tutorials/tut05_02/tut05_02.zip?raw=true).  

2.	Examine the output in the console windown and take time to trace each method called for the ``cat`` and ``dog`` objects.  Make sure you understand this code.

A subclass can be expanded to include additional functions and properties beyond what is contained in the superclass. For example, let’s assume that a ``Dog`` object has a hair color.

3.	Modify the ``Dog`` class to include a ``String`` variable ``hairColour``.  Assign a default hair colour of "black" in the default constructor.

4.	Also, write setter and getter methods for the ``hairColour`` variable.

5.	Modify the ``toString()`` method to print the dog object's hair colour.  Use the getter method.  Test the ``toString()`` method works correctly.


## Part 3 - Inheritance Shapes


## Part 4 - 
