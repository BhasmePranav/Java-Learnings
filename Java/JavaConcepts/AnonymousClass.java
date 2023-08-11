import java.security.acl.Permission;

import javax.swing.event.SwingPropertyChangeSupport;

public class AnonymousClass {

    public static void main(String[] args) {

       Person p1 = new Person()
       {
            public void printNAme()
            {
                System.out.println("I am from Anonymous class of Main");
            }
       };
       p1.printNAme();                      //Override the method bcoz of anonymous class instantiation
       Person p2  = new Person();           //Call the method of orginial class ,,takes as normal object of class
       p2.printNAme();
        System.out.println("I am from main Class");
        
    }
    
}

class Person{
    public void printNAme()
    {
        System.out.println("I am from Anonymous class Person");
    }
}
