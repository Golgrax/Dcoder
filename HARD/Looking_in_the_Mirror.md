## Description
```

```


## Python
```python
class Node:
    def __init__(self, val):
        self.val = val
        self.parent = None
        self.right = None
        self.left = None

        
def searchNode(node, val):
    if node == None:
        return None
    
    if node.val == val:
        return node
    
    temp = searchNode(node.left, val)
    if temp:
        return temp
    
    return searchNode(node.right, val)


n, q, r = map(int, input().split())

root = Node(r)

for _ in range(n):
    p, c, d = input().split()
    parent = searchNode(root, int(p))
    child = Node(int(c))
    if d == "L":
        parent.left = child
    else:
        parent.right = child
    child.parent = parent

for _ in range(q):
    stack = []
        
    val = int(input())
    node = searchNode(root, val)
    while node.parent:
        stack.append(node.parent.left == node)
        node = node.parent
        
    while stack and node:
        direction = not stack.pop()
        if direction:
            node = node.left
        else:
            node = node.right
    
    print(node.val if len(stack) == 0 and node else "Not Exist")
```


## Java
```java
import java.util.*;

class Node {
    public int val;
    public Node parent;
    public Node left;
    public Node right;

    Node(int val) {
        this.val = val;
    }
}

public class Dcoder {

    public static Node searchNode(Node node, int val) {
        if (node == null)
            return null;
        
        if (node.val == val)
            return node;

        Node temp = searchNode(node.left, val);
        if (temp != null)
            return temp;
        
        return searchNode(node.right, val);
    }

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int q = sc.nextInt();
        int r = sc.nextInt();
        sc.nextLine();

        Node root = new Node(r);

        for(int i=0; i<n; i++) {
            String[] inp = sc.nextLine().trim().split(" ");
            int p = Integer.parseInt(inp[0]);
            int c = Integer.parseInt(inp[1]);
            char d = inp[2].charAt(0);

            Node parent = searchNode(root, p);
            Node child = new Node(c);
            if(d == 'L')
                parent.left = child;
            else
                parent.right = child;
            child.parent = parent;
        }

        for(int i=0; i<q; i++) {
            Boolean[] stack = new Boolean[n];
            int top = -1;
            
            int val = sc.nextInt();
            Node node = searchNode(root, val);
            while(node.parent != null) {
                stack[++top] = node.parent.left == node;
                node = node.parent;
            }

            while(top > -1 && node != null) {
                boolean direction = !stack[top--];
                if (direction)
                    node = node.left;
                else
                    node = node.right;
            }

            if (top == -1 && node != null)
                System.out.println(node.val);
            else
                System.out.println("Not Exist");
        }

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int val;
    struct Node *parent;
    struct Node *left;
    struct Node *right;
} Node;

struct Node *newNode(val) {
    struct Node *temp = (struct Node *)malloc(sizeof(Node));
    if (temp == NULL)
        return NULL;
    temp->val = val;
    return temp;
}

struct Node *searchNode(struct Node *node, int val) {
    if (node == NULL)
        return NULL;

    if (node->val == val)
        return node;

    struct Node *temp = searchNode(node->left, val);
    if (temp) 
        return temp;

    return searchNode(node->right, val);
}


void main() {

    int n, q, r;
    scanf("%d %d %d", &n, &q, &r);

    struct Node *root = newNode(r);

    for(int i=0; i<n; i++) {
        int p, c;
        char d;
        scanf("%d %d %c", &p, &c, &d);
        
        struct Node* parent = searchNode(root, p);
        struct Node* child = newNode(c);

        if (d == 'L')
            parent->left = child;
        else
            parent->right = child;

        child->parent = parent;
    }
    

    for(int i=0; i<q; i++) {
        int stack[n];
        int top = -1;

        int val;
        scanf("%d", &val);
        struct Node* node = searchNode(root, val);
        while(node->parent) {
            stack[++top] = node->parent->left == node ? 0 : 1;
            node = node->parent;
        }

        while(top > -1 && node) {
            int direction = stack[top--] ? 0 : 1;
            if (direction == 0)
                node = node->left;
            else
                node = node->right;
        }

        if (top == -1 && node)
            printf("%d\n", node->val);
        else
            printf("Not Exist\n");
    }

}
```
