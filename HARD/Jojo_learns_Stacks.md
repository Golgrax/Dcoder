## Description
```
```


## Python
```python
stack = []
o = []
precedance = {'+':1, '-':1, '*':2, '/':2}

exp = input().split()
for i in exp:
    if i.isalnum():
        o.append(i)
    else:
        if i == ")":
            while stack and stack[-1] != "(":
                o.append(stack.pop())
            if stack:
                stack.pop()
        elif i == "(":
            stack.append(i)
        else:
            while stack and stack[-1] != "(" and precedance[stack[-1]] >= precedance[i]:
                o.append(stack.pop())
            stack.append(i)

while stack:
    o.append(stack.pop())

print(*o)
    
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static String[] stack = new String[100];
	private static int top = -1;

	private static void push(String c) {
		stack[++top] = c;
	}
	
	private static String pop() {
		return stack[top--];
	}

	private static String peek() {
		return stack[top];
	}

	private static boolean isEmpty() {
		return top == -1;
	}

	private static boolean precedance(String s1, String s2) {
		if ("*/-".contains(s1) && s2.equals("+"))
			return true;
		
		if ("*/+".contains(s1) && s2.equals("-"))
			return true;
		
		if (s1.equals("*") && s2.equals("/"))
			return true;
		
		if (s1.equals("/") && s2.equals("*"))
			return true;
		
		return false;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

			String[] exp = sc.nextLine().split(" ");

			String[] opt = new String[exp.length];
			int index = 0;

			for(int i=0; i<exp.length; i++) {
				if (exp[i].matches("^\\d+$")) {
					opt[index++] = exp[i];
				} else {
					if (exp[i].equals(")")) {
						while(!isEmpty() && !peek().equals("("))
							opt[index++] = pop();
						if (!isEmpty())
							pop();
					} else if (exp[i].equals("(")) {
						push(exp[i]);
					} else {
						while(!isEmpty() && !peek().equals("(") && precedance(peek(), exp[i]))
							opt[index++] = pop();
						push(exp[i]);
					}
				}
			}

			while (!isEmpty())
				opt[index++] = pop();


			for (int i = 0; i < index; i++) {
				System.out.print(opt[i]+" ");
			}
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

char stack[100];
int top = -1;

void push(char c) {
    stack[++top] = c;
}

char pop() {
    return stack[top--];
}

char peek() {
    return stack[top];
}

int isEmpty() {
    return top == -1;
}

int precedance(char c1, char c2) {
    if ((c1 == '*' || c1 == '/' || c1 == '-') && c2=='+')
        return 1;

    if ((c1 == '*' || c1 == '/' || c1 == '+') && c2=='-')
        return 1;

    if (c1 == '*' && c2=='/')
        return 1;

    if (c1 == '/' && c2=='*')
        return 1;
    
    return 0;
}


void main() {

    char exp[100];
    scanf("%[^\n]c", exp);

    char opt[100];
    int index = 0;

    for(int i=0; i<strlen(exp); i+=2) {
        if (exp[i] >= '0' && exp[i] <= '9') {
            while (exp[i] >= '0' && exp[i] <= '9')
                opt[index++] = exp[i++];
            i--;
            opt[index++] = ' ';
        } else {
            if (exp[i] == ')') {
                while (!isEmpty() && peek() != '(') {
                    opt[index++] = pop();
                    opt[index++] = ' ';
                }
                if (!isEmpty())
                    pop();
            } else if (exp[i] == '(') {
                push(exp[i]);
            } else {
                while (!isEmpty() && peek()!='(' && precedance(peek(), exp[i])) {
                    opt[index++] = pop();
                    opt[index++] = ' ';
                }
                push(exp[i]);
            }
        }
    }

    while (!isEmpty()) {
        opt[index++] = pop();
        opt[index++] = ' ';
    }

    opt[index] = '\0';

    printf("%s", opt);

}
```
