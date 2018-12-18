if(true){
    System.debug("Hello"); //This is a code block statement
    System.debug("World");
}

if(true)
    System.Debug(1); //This is a single line statement
    else {
       System.debug(2);
    }

/*
This is a multi-line comment
*/

nothing within // or /*...comment...*/ 
will be commented out

1+6; // REPL evaluates to an Integer data type with value 7

new Account(Name = 'Little Deb'); //Method Invocation (Constructor) example

/* Classes */
public /*access modifier required*/ class /* keyword */ myClass /* name of the class */ {
    //Enter code in this Code Block
    
    //variables require data type & name
    Boolean boo;

    //Declaration vs Instantiation
    boolean boo = true; //Declaration example

    //Methods optionally contain access or definition modifiers
    //Methods & parameters require return type & name...{};
    //Abstract Methods don't require code block
    void myMethod(/* input parameters */ String name, Integer age){
        //Method logic goes hear
    }

public class Car {
	
    public String make;
    public String model;
    public Integer year;
    public Decimal speed; //unit is measured in US MPH
    
    public Decimal getSpeed(){
        return speed;
    }//This method has a return value
    
    public void setSpeed(Decimal newSpeed){
        speed = newSpeed;
    }//This method has a 'side effect'
    
    public void accelerate(){
        speed += 0.5; //short had code for: speed = speed + 0.5
    }//This method has a 'side effect'

/*  Execution code used in Apex Developer Window > Debug > Open Execute Anonymous Window
    Car myCar = new Car(); //Car Constructor
    System.debug(myCar.make);
    myCar.make = 'Ford';
    System.debug(myCar.make);
    myCar.setSpeed(20);
    myCar.accelerate();
    System.debug(myCar.speed);
    */

}

//sObject Data Types
sObject represents realworld data
    Example: Account/* sObject */ a = new Account(/* API Field Name & Type Operator */ Name = 'Revature');
    //We cannot used the above syntax for declaring a car object
        example: Car c = new Car(make = 'Ford'); // This would not work

insert a; //a will have a salesforce ID field (i.e. a.ID)
Account a = [SELECT ID FROM Account LIMIT 1]; 
//one way to grab values and store them in an sObject variable that represents a specific record(s) in a database


/* Enums */
Data Type used to select a finite number of values (customizable)

Example:    public enum Season{WINTER, SPRING, SUMMER, FALL}
            Season s = Season.WINTER;


/* Collections */

Grouping of objects (Things) of the same Date Type}
    Example: Lists - Can have duplicate elements and can use when sequence matters
    //* Can contain up to 5 nested collections*/
    List<List<List<List<List<Integer>>>>> myInsaneList; //5 Dimensional List

    List<Integer> myList; //declara a list collection of type Integer
    List<Integer> myList = new List<Integer>();
    List<Integer> myList = new List<Integer>{1,2,3} //1 Dimensional List
    MyList[0]; //1 Dimensional Array List
    MyList.add(4); //adds 4 elements to the list array

