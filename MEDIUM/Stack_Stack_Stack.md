## Description
```
You just have to follow the concept of stack...
Make STACK([]) array and TOP(-1) pointer
if query is PUSH
	then increase TOP pointer and add element at TOP location
if query in POP
	then just decreament TOP pointer
if query is PEEK
	then print the element at TOP pointer
```


## Python
```python
queries = [input().split() for i in range(int(input()))]

stack = []
for i in queries:
	print(i)
	if i[0] == "PUSH":
		stack.insert( 0, int(i[1]) )
	elif i[0] == "POP":
		stack.pop()
	else:
		print( stack[0] )
print( sum(stack) )
```


## Java
```java
import java.util.ArrayList;
import java.util.Scanner;

public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int queries = sc.nextInt();
		sc.nextLine();

		ArrayList<String> stack = new ArrayList<>();
		for (int i=0; i<queries; i++) {
			String[] query = sc.nextLine().split(" ");
			if ( query[0].compareTo("PUSH") == 0 ) {
				stack.add(0, query[1] );
			} else if ( query[0].compareTo("POP") == 0 ) {
				stack.remove(0);
			} else {
				System.out.println( stack.get(0));
			}
		}

		int sum = 0;
		for ( String str : stack ) { sum += Integer.parseInt(str); }
		System.out.println( sum );

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void main() {

	int queries;
	scanf("%d", &queries);

	int stack[20];
	int TOP = -1;
	for (int i=0; i<queries; i++) {
		char str[10];
		scanf("%s", str);

		if ( !strcmp(str, "POP") ) {
			TOP--;
		} else if ( !strcmp(str, "PEEK") ) {
			printf("%d\n", stack[TOP]);
		} else {
			scanf("%s", str);
			stack[++TOP] = atoi(str);
		}
	}

	int sum = 0;
	for (int i=0; i<=TOP; i++) { sum += stack[i]; }
	printf("%d\n", sum);

}
```
