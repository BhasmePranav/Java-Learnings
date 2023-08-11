
class Parent
{
    public void printMe()
    {
        System.out.println("Its Printing from Parent");
    }
    public static void sayMe()
    {
        System.out.println("Its Parent saying");
    }
}

class Child extends Parent
{
    @Override
    public void printMe()
    {
        System.out.println("Its printing from Child");
    }
    public static void sayMe()
    {
        System.out.println("Its child saying");
    }
}

public class EarlyLate {

    public static void main(String[] args) {

        Parent p1 = new Child();

        p1.printMe();
        p1.sayMe();
        
    }
    
}

