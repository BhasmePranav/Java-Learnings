package DataStructureSmallConcepts;



public class heapppo {

    public static void main(String[] args)
    {
        int[] a = {38,76,3,98,12,87};
        System.out.println("Before Sorting : ");
        for(int x : a)
        {
            System.out.print(x+" ");
        }
        buildHeap(a, a.length);
        System.out.println("\n\nAfter creating Heap : ");
        for(int x : a)
        {
            System.out.print(x+" ");
        }
        heapSort(a, a.length-1);
        System.out.println("\n\nAfter Sorting : ");
        for(int x : a)
        {
            System.out.print(x+" ");
        }

    }

    public static void heapifyUp(int[] a , int length , int i)
    {
        int largest = i;
        int leftChild = (2*i)+1;
        int rightChild = (2*i)+2;

        if(leftChild<length && a[leftChild]>a[largest])
        {
            largest = leftChild;
        }
        if(rightChild<length && a[rightChild]>a[largest])
        {
            largest = rightChild;
        }

        if(largest != i)
        {
            int temp = a[i];
            a[i] = a[largest];
            a[largest] = temp;

            heapifyUp(a, length, largest);
        }

        

    }

    public static void buildHeap(int[] a , int length)
    {
        for(int i = length-1/2 ; i>=0;i--)
        {
            heapifyUp(a, length, i);
        }
    }

    public static void heapSort(int[] a , int length)      //l = l-1
    {
        for(int i = length ; i>=0;i--)
        {
            int temp = a[0];
            a[0] = a[i];
            a[i] = temp;

            heapifyUp(a, i, 0);
        }
    }
    
    


    
}
