## Description
```
U can use the concept of stack,
	whenever open'(' found,
		push it to stack...
	whenever close')' found,
		check if stack is empty or TOP stack is not open')',
			then return False
		else pop lastt element
```


## Python
```python
p = input()
stack = []
for i in p:
	if i==")":
			if stack == []:
				print("No")
				exit(0)
			else:
				stack.pop()
	else:
	    stack.append(i)

if stack == []:
	print("Yes")
else:
	print("No")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		char[] s = sc.nextLine().toCharArray();
		char[] stack = new char[s.length];
		int TOP = -1;

		for (int i=0; i<s.length; i++) {
			if ( s[i] == ')' ) {
				if ( TOP==-1 || stack[TOP]!='(' ) {
					System.out.println("No");
					System.exit(0);
				}
				TOP--;
			} else {
				stack[++TOP] = s[i];
			}
		}
		System.out.println(TOP==-1 ? "Yes" : "No");

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void main() {

	char s[30], stack[30];
	fgets(s, 30, stdin);
	int TOP = -1;

	for (int i=0; i<strlen(s)-1; i++) {
		if ( s[i] == ')' ) {
			if ( TOP==-1 || stack[TOP]!='(' ) {
				printf("No\n");
				exit(0);
			}
			TOP--;
		} else {
			stack[++TOP] = s[i];
		}
	}
	printf(TOP==-1 ? "Yes\n" : "No\n");

}
```
