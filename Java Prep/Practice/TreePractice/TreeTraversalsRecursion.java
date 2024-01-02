package Practice.TreePractice;

class Node
{
    int data;
    Node left , right;

    public Node(int data)
    {
        this.data = data;
        this.left = null;
        this.right = null;
    }
}

public class TreeTraversalsRecursion {

    static int idx = -1;
    public static void main(String[] args) {
        int[] nodes = {7,9,11 ,2,-1,-1,-1,17,-1,3,-1,-1,22,19,-1,-1,15,-1,-1};
        Node root = buildTree(nodes);
        System.out.println(root.data);
        System.out.println("PreOrder is : " );
        preorderTraversal(root);
        System.out.println("\nPostOrder is : ");
        postOrderTraversal(root);
        System.out.println("\nInOrder is : ");
        inOrderTraversal(root);
        System.out.println("\nCount of Nodes is : "+countOfNodes(root));
        

        
    }

    public static Node buildTree(int[] nodes)
    {
        idx++;
        if(nodes[idx] == -1) return null;
        Node newNode = new Node(nodes[idx]);
        newNode.left = buildTree(nodes);
        newNode.right = buildTree(nodes);
        return newNode;
    }

    public static void preorderTraversal(Node root)
    {
        if(root==null) return;
        System.out.print(root.data+"  ");
        preorderTraversal(root.left);
        preorderTraversal(root.right);
        
    }

    public static void postOrderTraversal(Node root)
    {
        if(root==null) return;
        postOrderTraversal(root.left);
        postOrderTraversal(root.right);
        System.out.print(root.data+"  ");
    }

    public static void inOrderTraversal(Node root)
    {
        if(root==null) return ;
        inOrderTraversal(root.left);
        System.out.print(root.data+"  ");
        inOrderTraversal(root.right);
    }

    public static int countOfNodes(Node root)
    {
        if(root==null) return 0;
        int leftCount = countOfNodes(root.left);
        int rightCount = countOfNodes(root.right);
        return leftCount+rightCount+1;
    }

    
}
