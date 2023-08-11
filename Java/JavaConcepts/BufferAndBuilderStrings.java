public class BufferAndBuilderStrings
{
    public static void main(String[] args) 
    {

        //String creats nnew object if we perform any modification on it
        String s = "Pranav";
        System.out.println("String Before concatination : "+s);
        System.out.println("Concatination Done :    "+s.concat("Bhasme"));
        System.out.println("String After concatination :    "+s);


         //StirngBuildr store cahnges in same object,,it doesnt create new object
        StringBuilder sb = new StringBuilder("Pranav");
        System.out.println("Original StringBuilder : "+sb);
        System.out.println("StringBuilder after append : "+sb);
        

        StringBuffer sbf = new StringBuffer("Pranav");
        sbf.append("Bhasme");

        

        
    }
}