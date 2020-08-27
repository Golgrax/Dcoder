## Description
```
Just print the element of list, which have cound 1
```


## Python
```python
length = int(input())
l = list(map(int, input().split()))

for i in l:
	if l.count(i) == 1:
		print(i)
		exit(0)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static int count(int a[], int n) {
		int c = 0;
		for (int i=0; i<a.length; i++)
			if ( n == a[i] )
				c++;
		return c;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] list = new int[length];
		for (int i=0; i<length; i++) { list[i] = sc.nextInt(); }

		for (int i=0; i<length; i++) {
			if ( count(list, list[i]) == 1 ) {
				System.out.println(list[i]);
				System.exit(0);
			}
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int count(int a[], int length, int n) {
	int c = 0;
	for (int i=0; i<length; i++)
		if ( n == a[i] )
			c++;
	return c;
}

void main() {

	int length;
	scanf("%d", &length);

	int list[length];
	for (int i=0; i<length; i++) { scanf("%d", &list[i]); }

	for (int i=0; i<length; i++) {
		if ( count(list, length, list[i]) == 1 ) {
			printf("%d\n", list[i]);
			exit(0);
		}
	}

}
```
