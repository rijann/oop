# Inheritance

## Contents

- [Inheritance](#inheritance)
- [An Example of Inheritance]
- [Access Modifiers]
- [Method overriding]



##  Introduction

To see what inheritance means in practice, consider the example of the taxonomy of the animal kingdom.  In biology, animals are classified by whether they have a spinal cord (vertebae) or not.  All *mammals* have a spinal cord.  They inherit it as a characteristic because they are a subclass of *vertebrates*.  

![alt text](../images/inheritance1.png "Simple Animal Classification")

In Java inheritance occurs when a class adopts or adapts the data structures and methods of a parent class.  That creates a hierarchy, similar to taxonomies in the animal kingdom.  Each level is a specialisation of the one above in the hierarchy.  

Inheritance is one of the concepts people mean when they talk about Object-Oriented Programming.

Let's take a look at the world of animals: dogs, cats, monkeys, pandas, wombats, etc. 

Let's begin by programming a ``Dog`` class.  It will have an ``age`` variable and methods such as ``eat()``, ``sleep()``, and ``bark()``.

```java
public class Dog 
{
  private int age;

  public Dog() 
  {
    age = 0;
  }
  
  public void eat() 
  {
    // eating code goes here
  }
  
  public void sleep() 
  {
    // sleeping code goes here
  }
  
  public void bark() 
  {
    println("woof!");
  }
} 

```

Let's program the ``Cat`` class:

```java
public class Cat 
{
  private int age;

  public Cat() 
  {
    age = 0;
  }
  
  public void eat() 
  {
    // eating code goes here
  }
  
  public void sleep() 
  {
    // sleeping code goes here
  }
  
  public void meow() 
  {
    println("meow!");
  }
} 

```

Notice how dogs and cats have the same variable ``age`` and methods ``eat()`` and ``sleep()``.  They have unique methods for barking or meowing though.


![alt text](../images/inheritance2.png "Animal, Dog & Cat")

What if we could develop a generic ``Animal`` class to describe any type of animal? After all, all animals have an age, eat, and sleep. We could then say the following:

- A dog is an animal and has all the properties of animals and can do all the things animals can do. In addition, a dog can bark.

- A cat is an animal and has all the properties of animals and can do all the things animals can do. In addition, a cat can meow. 

The relationship described is known as a **is-a** relationship.

> A ``Dog`` **is-a** ``Animal``
> A ``Cat`` **is-a** ``Animal``


*Inheritance* allows us to program just this. With inheritance, classes can inherit  properties (variables) and functionality (methods) from other classes. The ``Dog`` class is a child (AKA a *subclass*) of the ``Animal`` class.  Children inherit all variables and functions automatically from their parent (AKA *superclass*). Children can also include additional variables and functions not found in the parent. Inheritance follows a treestructure (much like a taxonomy of the animal kingdom). Dogs can inherit from Canines which inherit from Mammals which inherit from vertabrates, and so on. 


Here is how the syntax works with inheritance. 

The ``Animal`` class is the parent (or super) class:

```java
public class Animal 
{
  private int age;

  public Animal() 
  {
    age = 0;
  }

  public void eat() 
  {
    // eating code goes here
  }

  public void sleep() 
  {
    // sleeping code goes here
  }

  // setter and getter for age
  public int setAge(int age)
  {
    return this.age=age;
  }

  public int getAge()
  {
    return age;
  }

} 

```

The ``Dog`` and ``Cat`` classes are child (or sub) classes:

```java
public class Dog extends Animal
{
  public Dog() 
  {
    super();
  }
  
  public void bark() 
  {
    println("woof!");
  }
} 

```

```java
public class Cat extends Animal
{
  public Cat() 
  {
    super();
  }
  
  public void meow() 
  {
    println("meow!");
  }
} 

```

We can test this code:

```java
Dog dog = new Dog();
dog.setAge(12);
println("age="+dog.getAge());  
dog.bark();
dog.eat();

```

and it prints:

```
age=12
woof!
yummy!

```

- Notice that the methods ``setAge()``, ``getAge()`` and ``eat()`` are inherited from the parent class ``Animal``.

- Inheritance is achieved by using the keyword ``extends``, for example:

  ```java
  public class Cat extends Animal

  ```

- The ``super()`` keyword means execute the code found in the parent class constructor.  For example, ``super()`` in the ``Dog`` constructor calls the ``Animal`` class constructor ``Animal()`` first.

  ```java
    ...
    ...
    public Dog() 
    {
      super();
    }
    ...
    ...

  ```

- ``bark()```and ``meow()`` are defined in ``Dog`` and ``Cat`` as they are a characteristic specific to that class.

A subclass can be expanded to include additional functions and properties beyond what is contained in the superclass. For example, let's assume that a ``Dog`` object has a hair color variable in addition to age:

```java
public class Dog extends Animal 
{
  private color haircolor;
  
  public Dog() 
  {
    super();
    haircolor = color(0);  // black
  }

  public void bark() 
  {
    println("woof!");
  }
} 

```

Note how the parent constructor is called via ``super()``, setting the age to 0, but the haircolor is set inside the ``Dog`` constructor itself.

Suppose a ``Dog`` object eats differently than a generic ``Animal``. Parent functions can be overridden by rewriting the function inside the subclass:

```java
public class Dog extends Animal 
{
  private color haircolor;
  
  public Dog() 
  {
    super();
    haircolor = color(0);  // black
  }

  public void bark() 
  {
    println("woof!");
  }

  public void eat()
  {
    // Code for how a dog specifically eats
  }

} 

```

But what if a ``Dog`` should eat the same way an ``Animal`` does, but with some additional functionality?  A subclass can both run the code from a parent class and incorporate some custom code.

```java
public class Dog extends Animal 
{
  private color haircolor;
  
  public Dog() 
  {
    super();
    haircolor = color(0);  // black
  }

  public void bark() 
  {
    println("woof!");
  }

  public void eat()
  {
    // Call eat() from Animal
    super.eat();  

    // Add code for how a dog specifically eats
    println("yummy!");
  }

} 

```

Note how the parent method ``eat()`` is called via ``super().eat()`` first and then custom code for eating is executed.


## Why Use Inheritance?

**Reusability**.  
Building new components by utilising existing components is an important aspect of OO paradigm.  It's always good if we are able to reuse something that is already exists rather than creating the same all over again.  This is achieved by creating new classes, reusing the properties of existing classes.

**Extensibility**
New functionality may be easily added without changing existing classes as long the new functionality extends given base classes. 


## An Example of Inheritance

Vehicle - Car???
Shape - Circle - Rectangle???


