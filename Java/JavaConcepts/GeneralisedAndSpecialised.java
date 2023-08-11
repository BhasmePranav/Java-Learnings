public class GeneralisedAndSpecialised {
    
    public static void main(String[] args) {
     
        Father f = new Father();
        Father f1 = (Father) new Son();
        Son s = new Son();
        //Son s1 = new Father(); // Can not create the object of parent class with reference of child calss
        f.printMe();
        f1.printMe();
        s.printMe();
        s.fatherSaying();
        //s1.printMe();
    }
}

class Father
{
    public void printMe()
    {
        System.out.println("I am From printing from Father");
    }

    public void fatherSaying()
    {
        System.out.println("Its Father Saying");
    }
}
class Son extends Father
{
    public void printMe()
    {
        System.out.println("I am From printing from Son");

    }
}
