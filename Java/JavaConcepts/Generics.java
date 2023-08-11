class Demo<T>
{
    private T data;
    private int age;
    private T phoneNum;
    
    public Demo(T data)
    {
        this.data = data;
    }
    public Demo(T data , T phoneNum)
    {
        this.data = data;
        this.phoneNum = phoneNum;
    }
    T getData()
    {
        return data;
    }
    T getPhone()
    {
        return phoneNum;
    }

}


public class Generics<T> {

    public static void main(String[] args)
    {
        Demo d = new Demo(49 , "767874567654");
        System.out.println(d.getData()+ " , " +d.getPhone());
        Demo d1 = new Demo("I am Pranav");
        System.out.println(d1.getData());
       
        //Another way to use generics is
        Demo<Integer> d2 = new Demo<>(921);
        System.out.println("Integer is : "+d2.getData());
        Demo<Float> d3 = new Demo<>(32.32f);
        System.out.println("Float is : "+d3.getData());
        Demo<String> d4 = new Demo<>("Another way to declare by generics");
        System.out.println("String is: "+d4.getData());


        // int[] a = {11,22,33,44,55,66};
        // printArray(a);
        // String[] s = {"Alpha" , "Beta" , "Gamma" , "Proton"};
        // printArray(s);


    }
    
}


