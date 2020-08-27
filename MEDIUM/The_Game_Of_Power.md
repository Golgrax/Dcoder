## Description
```
In this problem,
	you have to find absolute difference with nearest
		PERFECT SQUARE no.
```


## Python
```python
test = int(input())
for t in range(test):
	n = int(input())
	if int(n**0.5) == n**0.5:
		print(0)    
	else:
		i = 1
		while i*i < n:
			i += 1
		print(min(n-(i-1)**2,i*i-n))
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int t=0; t<test; t++) {

			int n = sc.nextInt();

			if ( (int)Math.sqrt(n) == Math.sqrt(n)) {
				System.out.println(0);
			} else {
				int i = 1;
				while ( i*i < n ) { i++; }
				if ( n-(i-1)*(i-1) < i*i-n ) {
					System.out.println( n-(i-1)*(i-1) );
				} else {
					System.out.println( i*i-n );
				}
			}

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	int test;
	scanf("%d", &test);
	for (int t=0; t<test; t++) {

		int n;
		scanf("%d", &n);

		if ( (int)sqrt(n) == sqrt(n) ) {
			printf("0\n");
		} else {
			int i = 1;
			while ( i*i < n ) { i++; }
			if ( n-(i-1)*(i-1) < i*i-n ) {
				printf( "%d\n", n-(i-1)*(i-1) );
			} else {
				printf( "%d\n", i*i-n );
			}
			
		}

	}

}
```
