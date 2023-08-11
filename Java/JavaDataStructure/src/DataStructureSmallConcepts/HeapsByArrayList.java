package DataStructureSmallConcepts;

import java.util.ArrayList;
import java.util.List;

public class HeapsByArrayList {

    public static void main(String[] args)
    {

        //Heaps Insertion Deletion Implementation By using ArrayListS
        List<Integer> l = new ArrayList<>();
        l.add(70);
        l.add(60);
        l.add(50);
        l.add(40);
        l.add(30);
        l.add(20);
        l.add(10);
        System.out.println("List Before Insertion and Deletion of Heap : ");
        for(int x : l)
        {
            System.out.print(x+" ");
        }
        System.out.println("\n");
        insertHeap(l, 101);
        insertHeap(l, 202);
        System.out.println("List After Insertion of Heaps : ");
        for(int x : l)
        {
            System.out.print(x+" ");
        }
        System.out.println("\n\nList After Deletion of Heaps : ");
        System.out.println("Deleted Element is : "+deleteHeap(l));
        System.out.println("Deleted Element is : "+deleteHeap(l));
        for(int x : l)
        {
            System.out.print(x+" ");
        }

    }


    //Inserting method for adding new Heap in to BinaryTree
    public static void insertHeap(List<Integer> l , int value)
    {
        l.add(value);
        int valueIdx = l.indexOf(value);                        //Getting index of Last Node

        while(valueIdx>0)                                  
        {
            int parentIdx = (valueIdx-1)/2;                    //For finding parent idx formula is (i-1)/2
            if(l.get(parentIdx)<l.get(valueIdx))               //If parent index value is small than child index value then swp
            {
                int temp = l.get(parentIdx);
                l.set(parentIdx, l.get(valueIdx));
                l.set(valueIdx, temp);

                valueIdx = parentIdx;                       //Incrementing value of last added Elemnt
            }
            else
            {
                return;
            }
        }
    } 


    //DeleteHeap Method for deleting nodes from BinaryTree 
    public static int deleteHeap(List<Integer> l )
    {
        //During Deleting node from BinaryTree mostly delete root node too maintain heap property
        //So will Swap root element with last element and then delete ladt element
        int root = l.get(0);
        int last = l.get(l.size()-1);
        int temp = l.get(0);
        l.set(0, last);
        l.set(l.size()-1, temp);        //Swapping Between root node and last node
        int deleted = l.remove(l.size()-1);                 //Deleting last node

        int parentIdx = 0;

        while(parentIdx<(l.size()-2)/2)                //parentIdx<(l.size()-1-1)/2....For Finding paretn element used i-1/2 .
        {
            int leftChildIdx = (2*parentIdx)+1;
            int rightChildIdx = (2*parentIdx)+2;

            if(l.get(parentIdx)<l.get(leftChildIdx))      //Comparing parent index with left and right child to manage heap property 
            {
                int t = l.get(parentIdx);
                l.set(parentIdx, l.get(leftChildIdx));
                l.set(leftChildIdx, t);

                parentIdx = leftChildIdx;
            }

            else if(l.get(parentIdx)<l.get(rightChildIdx))
            {
                int t = l.get(parentIdx);
                l.set(parentIdx, l.get(rightChildIdx));
                l.set(rightChildIdx, t);

                parentIdx = rightChildIdx;
            }
        }
        return deleted;                             //Returning deleted element.

    }

    
    
    
    
    
    
    
    
    
    
    
    //BELOW COMMENTED PART IS INSERT NEW HEAP METHOD BY RECURSION
    // public static void insertHeap(List<Integer> l , int value)
    // {
    //     l.add(value);
    //     System.out.println("index of : "+value+" is : "+l.indexOf(value));
        
    //     int valueIdx = l.indexOf(value);
    //     heapifyUp(l , valueIdx);
    // }

    // public static void heapifyUp(List<Integer> l , int valueIdx)
    // {   
    //     int parentIdx = (valueIdx-1)/2;

    //     while(valueIdx>0 && l.get(parentIdx)<l.get(valueIdx))
    //     {
    //         int temp = l.get(parentIdx);
    //         l.set(parentIdx, l.get(valueIdx));
    //         l.set(valueIdx, temp);

    //         heapifyUp(l, parentIdx);

    //     }
    // }
    
}
