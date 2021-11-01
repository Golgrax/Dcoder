## Description
```
```


## Python
```python
s = input()
stack = []
value = True


for i in s:
    if i in "[{(":
        stack.append(i)
    else:
        if not stack:
            value = False
            break
        
        if "]})"["[{(".index(stack[-1])] != i:
            value = False
            break
        
        stack.pop()

print("Yes" if not stack and value else "No")
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static boolean matchClosing(char c, char stack) {
		return (c == ']' && stack == '[') || (c == '}' && stack == '{') || (c == ')' && stack == '(');
	}

	private static boolean matchOpening(char c) {
		return c == '[' || c == '{' || c == '(';
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		char[] stack = new char[100];
		int top = -1;
		boolean valid = true;

		String s = sc.nextLine();

		for (int i = 0; i < s.length(); i++) {
			char val = s.charAt(i);
			if (matchOpening(val))
				stack[++top] = val;
			else {
				if (top == -1) {
					valid = false;
					break;
				}

				if (!matchClosing(val, stack[top])) {
					valid = false;
					break;
				}

				top--;
			}
		}

		System.out.println(top == -1 && valid ? "Yes" : "No");

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int matchClosing(char c, char stack) {
	return (c == ']' && stack == '[') || (c == '}' && stack == '{') || (c == ')' && stack == '(');
}

int matchOpening(char c) {
	return c == '[' || c == '{' || c == '(';
}


void main() {

    char stack[100];
    int top = -1;
    int valid = 1;

    char s[101];
    scanf("%s", s);

    for(int i=0; i<strlen(s); i++) {
        if (matchOpening(s[i]))
            stack[++top] = s[i];
        else {
            if (top == -1) {
                valid = 0;
                break;
            }

            if (!matchClosing(s[i], stack[top])) {
                valid = 0;
                break;
            }

            top--;
        }
    }

    printf(top == -1 && valid ? "Yes" : "No");
}
```
