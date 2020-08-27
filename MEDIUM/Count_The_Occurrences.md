## Description
```
Take inputs,
	and count occurence of given no. for each test case...
	If ocurrence is 0, then print -1
```


## Python
```python
length = int(input())
l = list(map(int, input().split()))
test = int(input())
for t in range(test):
	num = int(input())
	if num in l:
		print(l.count(num))
	else:
		print(-1)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] list = new int[length];
		for(int i=0; i<length; i++) { list[i] = sc.nextInt(); }

		int test = sc.nextInt();
		for (int t=0; t<test; t++) {

			int n = sc.nextInt();
			int c = 0;
			for(int i=0; i<length; i++) 
				if (list[i] == n)
					c++;
			System.out.println( c>0 ? c : -1 );
			
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int length;
	scanf("%d", &length);
	int list[length];
	for(int i=0; i<length; i++) { scanf("%d", &list[i]); }

	int test;
	scanf("%d", &test);
	for (int t=0; t<test; t++) {

		int n, c=0;
		scanf("%d", &n);
		for(int i=0; i<length; i++) 
			if (list[i] == n)
				c++;
		printf( "%d\n", c>0?c:-1 );

	}

}
```
