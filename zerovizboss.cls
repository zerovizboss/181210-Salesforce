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
    Example: Lists 
    /*
    - Duplicates Allowed
    - Ordered Lists, sequence matters
    /* 
    
    //Can contain up to 5 nested collections*/
    List<List<List<List<List<Integer>>>>> myInsaneList; //5 Dimensional List

    List<Integer> myList; //declara a list collection of type Integer
    List<Integer> myList = new List<Integer>();
    List<Integer> myList = new List<Integer>{1,2,3} //1 Dimensional List
    MyList[0]; //1 Dimensional Array List
    MyList.add(4); //adds 4 elements to the list array

/* Sets
    - Unique unordered elements
    - No Duplicates
    - Order doesn't mantter
*/  //Differs from a list
Example:    
Set<Integer> mySet;
Set<Integer> mySet = ne{w Set<Integer>();
Set<Integer> mySet = new Set<Integer>{1,2,3}}

mySet.add(4);
mySet.contains(1);
mySet.contains(5);
mySet.remove(2);
//mySet[1] <- not valid; mySet.get(1) <- also not valid

/* Maps
    A collection of key-value pairs
    ***keys can be any PRIMITIVE data type*** QC Test question...hint hint
    keys MUST BE UNIQUE
        - used to access values in a map (also referred to as Indexing)
    ***Map Keys CAN hold a null value*** QC Test question...hint hint
    - keys of type String are CASE SENSITIVE ('abc, != 'ABC')
*/
Map<Integer, String> myMap; //key Integer data type, Value data type String
Map<Integer, String> myMap = new map<ID, String>{
    1 /*Key*/ => 'Jessica' /*Value*/, //Comma Separated Values (CSV)
    2 => 'Matt' //separated just for training presentation
};
myMap.put(3, 'Jessica');
myMap.put(2, 'Matt');
myMap.containsKey(1); //returns true
String name = myMap.get(2); //stores 'Matt' value in the Variable name
Set<Integer> s = myMap.keySet();

/* OPERATORS
 *  = assign
    += increment i.e. Integer x = 5; x += 1
    -= decrement    i.e. Integer y = ++x + x++; y == 12, x == 7
    *= multiply
    /= divide
    |= logical 'or' i.e. x |= y === x = x || y
    &= logical 'And' i.e. x &= y === x = x && y
    == type coercion equality (Implicit, case-inisensitive) compares object value equality, not reference equality
    === exact equality (Explicit) will only evaluate to true, if both  sides reference the exact same location in memory
    !  Bang (logical complement) non-equality
 */
 Exmaple:
    a += b; // === a = a + b;
    x |= y; // === x = x || y;
    x && y; // === x & x || y & y
    ? : // conditional boolean operator that returns value based on the boolean condition true or false
    if toCheck == true, then returnIfTrue is returns.
    if(condition ? True: Else False);

/** 
    TYPE CONVERSION/CASTING

    Hierarchy (lowest to highest)
        - Integer
        - Long
        - Double
        - Decimal

    ID's can always be assigned to strings: use single quotes ''
        latent binding: won't run until compile time
*/

var variable = (explicit conversion type) variable;

/**
 *   CONTROL FLOW

    flow of control depending on conditional statements

    if(bool_exp){
        //execution logic block (multi-line)
        evaluates to a single value (i.e. boolean for this example)
        else if(){
            evaluates additional conditions (optional)
        }
        else{
            evaluates when the condition is false (optional)
        }
    }

while loops used when size of list is unknown

    while(bool-exp){
        evaluates based on validation rules
        must have an opt-out parameter
        evaluates as conditional True until False
        If left to run infinite loops, will run into governing limits

        break; //stops and exits the loop
        continue; //skips to the next iteration (i.e. used in for loops)
    }

    do{
        run code block at least once
        pre-condition or test condition prior to continuing
        exits once the condition is false
    }while(bool-exp);
    
3 types of for loops in Apex (used when list size is known)

    for(inc var; break/exit cond; increment/decrement){
        initialize counters & indexes
        for (Int i = 0; i < 5; i++){
            TODO: action on each record in a list
        }

    }
example of foreach looops:
    for(it_var(iteration_variable):list/set){

    }

    for(i:{1,1,2,3,5}){
        TODO: do something to the element/record
    }

    SOQL FOR

    for(it_var:[SELECT Fields FROM object WHERE condition...]){

    }

    for(Account a:[SELECT ID, Name FROM Account WHERE...]){
        TODO: perform action on the queried records
    }

SWITCH CASE or CASE SWITCH
    - doesn't test for ranges of values
    switch on expression/variable{
        when value 1{

        }
        when value 2{

        }
        when else{
            default(optional)
        }
    }
    */
    Season s = Season.WINTER
    switch on s {
        when WINTER{
            System.debug('SNOWBALL FIGHT!!!');
        }
        when SPRING{
            System.debug('rainy days pushin up daisies')
        }
        when SUMMER{
            System.debug('hotter than hot')
        }
        when FALL{
            System.debug('leaves are a changing color, winter is near')
        }
    }

    };
