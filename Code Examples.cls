/* If Statements */

public enum SEASON {WINTER, SPRING, SUMMER, FALL}

SEASON s = SEASON.WINTER;
if(String.valueOf(s) == 'WINTER'){
    System.debug('SNOWBALL FIGHT!!!');
    System.debug('Enum values must first be cast to strings, before we can compare them with strings');
    else{
        System.debug('Enum values do not evver equate to  strings!');
    }
}

/* switch statement */
SObject sobj;
if(sobj instanceof Account){
    Account a = (Account)sobj;
    System.debug('Account ' + a);
}
else if(sobj instanceof Contact){
    Contact c = (Contact)sobj;
    System.debug('Contact ' + c);
}
else{
    System.debug('default');
}
//the below switch sgtatement can be used to achieve the same goal as the above if-else statement

switch on sobj{
    when Account a{
        System.debug('Account ' + a);
    }
    when Contact c{
        System.debug('Contact ' + c);
    }
    when null{
        System.debug('null')
    }
    when else{
        System.debug('default');
    }
}
//both codes above compile the same, but they read differently

/* While & Do-While Loops */
Boolean boo = false;
Integer count1 = 0;
Integer count2 = 0;

do {
    System.debug('Counter 1: ' + ++count1);
} while (boo);{

}

while(boo){
    System.debug('Counter 2: ' + ++count2);
}

/* For Loops */
for(Integer i = 0; i < 11; i++){
    System.debug('Happy Wednesday, Associate # ' + i);
}

List<String> yourNames = new List<String>{'William', 'Justice', 'Donny', 'Rajuan','Caleb', 'Eva', 'Aidarous', 'Stephen', 'David', 'Jeremiah', 'Jeremy'};
for(String name : yourNames){
    System.debug('Happy Wednesday, ' + name);
}

/* Static vs Instance Methods and Variables */

/**
Static - variables and methods belong to the class, NOT to an instance of the class
        - to access a static variable or method, you must do so through the class name itself.
            i.e. MyClass.staticVariable;
                 MyClass.staticMethod()
        - static variable values are shared amongst all instances of the class
        - static methods cannot reference non-static variables
        - non-static methods can reference static variables
        - instance methods and variables belong to each  individual instance of a class
    Apex classes CANNOT be static
        - static belongs to the class, instance belongs to the object
    Code Blocks {}
        - static vs instance code blocks
        static{} - static
        {} - non-static
        - static code block will only ever run first and once (once it's loaded into memory)
        - instance blocks will run each time an instance is run 
        - each execution log is a transaction
        - static variables cannot be shared accross transactions
*/
/** Transient keyword
        - used to declare instance vars that cannot be saved and should NOT be transmitted via the View State for a vf page.
        - we will do examples when we get to visualforce
        - serializability with visualforce        
 */

 /** Apex and Security **/
 /**
    ***Apex classes run in System Mode by default***
    
    "With Sharing" & "Wihtout Sharing" keywords
        - these are CLASS level definition modifiers
        - default is "Without Sharing"
        - when 'With Sharing' is used, record-level access is applied
            -one user may see different results from another user based on their record-level access and sharing rules
        - these do not apply field or oobject-level security (object and field level security are not applied)
    
 */

 
 public with sharing class MyUserClass{
    public void printCountOfAccounts(){
        Integer count = MySystem.Class.getAccounts().size();
        System.debug('# of Accounts: ' + count);
    }
 }

 public without sharing class MySystemClass{
     public static List<Account> getAccounts(){
         //this method should return a list of all Accounts in the org
         return [SELECT ID, Name FROM Account];
     }

 }

 /* standard visual for controllers run "with sharing"
 Class to run in context to ensure methods run "without sharing" even though by default they are set to "with sharing"
*/

/**
* 4 pillars
        Encapsulation
        Abstraction
        Inheritance
        Polymorphism

    Encapsulation - "data-hiding" controlling access to member variables (data)
        Apex Access Modifiers (least to most):
            private - classes can't be private, private class cannot have a global variable
            protected - visible to inner class and sub-classes(inherited), 
                        - cannot be used for static methods || variables
            public - scope visible to all classes within the same namespace||application
            global - scope visible to all classes outside the current namespace||application
        Properties
            - similar to variables but declared 
 */

/*  specify property values before*/
 public String name{
     get{
         return name;
     }
     set{
         name = value;
     }
 }

 /* Abstraction */

/**
 *  Hiding implementatation details
 *  Abstract classes and Interfaces allow you to start with a foundation and build upon it

    Interfaces
        - only contains abstract methods
        - must implement all methods of the interface
        - have no access modifiers
    
    Abstract
        - defined w/ "abstract"
        - contain at least 1 abstract method

    Inheritance
        - uses extends keyword
        - a class can only extend ONE class
        - in order for a class to be extended it must abstract or virtual class
        - Apex requires a class to be defined as abstract or virtual to be extended(inherited)
    
    Implements
        - a class can implement 0 to Many interfaces

    Polymorphism
        - overloading vs overriding
        - overloading
            - multiple methods in one class with multiple parameters
            - same name, different signatures
        - overriding (override)
            - allows child to override parent inherited properties of the same method
            - can be used with multiple classes    
 */

 /* Inner Classes */

 public with sharing class OuterClass{
     class InnerClass{

     }
 }
  /* default access modifier for inner class is private
  DON'T inherit the with||without sharing keywords */