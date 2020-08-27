## Description
```
For each test case...
	Make list of element 1 to n
	Then delete the element at odd indices...
	REPEAT this process until length of list is 1...
	Then, print 1st element
```


## Python
```python
test = int(input())
for t in range(test):
	n = int(input())
	l = list(range(1,n+1))
	while len(l) > 1:
		L = len(l)
		for i in range(len(l)):
			if i%2==1:
				l[i] = 0
		l = list(filter(None,l))
		if L%2:
			l = [l[-1]] + l[:-1]
	print(*l)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static int[] last(int a[]){
		if (a.length == 1) { return a; }
		
		for (int i=1; i<a.length; i+=2) { a[i] = 0; }

		int[] b;
		if (a.length%2 == 0) {
			b = new int[a.length/2];
		} else {
			b = new int[a.length/2+1];
		}
		int k = 0;
		if ( a[a.length-1] != 0 ) {
			b[k++] = a[a.length-1];
			for (int i=0; i<a.length-1; i++)
				if (a[i] != 0)
					b[k++] = a[i];
		} else {
			for (int i=0; i<a.length; i++) 
				if (a[i] != 0)
					b[k++] = a[i];
		}
		return last(b);
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for(int t=0; t<test; t++) {

			int n = sc.nextInt();

			int[] a = new int[n];
			for (int i=0; i<n; i++) { a[i] = i+1; }

			int[] o = last(a);
			System.out.println(o[0]);

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int *last(int *a, int length) {
	if (length == 1) { return a; }

	for (int i=1; i<length; i+=2) { a[i] = 0; }

	int *b;
	if ( length%2 ) {
		b = (int*)malloc( (length/2+1)*sizeof(int) );
	} else{
		b = (int*)malloc( (length/2)*sizeof(int) );
	}
	int k = 0;
	if ( a[length-1] != 0 ) { b[k++] = a[--length]; }
	for (int i=0; i<length; i++) 
		if (a[i] != 0)
			b[k++] = a[i];
	return last(b, k);
}

void main() {

	int test;
	scanf("%d", &test);
	for (int t=0; t<test; t++) {

		int n;
		scanf("%d", &n);

		int a[n];
		for (int i=0; i<n; i++) { a[i] = i+1; }

		int *o = last(a, n);
		printf("%d\n", *o);

	}

}
```
