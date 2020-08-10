## Description
```
This question is very simple,
	Just take square root and print round of it...
```


## Python
```python
for test in range( int(input()) ):
	print( round( int(input())**0.5 ) )
```


## Java
```java
import java.util.Scanner;

public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {

			int number = sc.nextInt();
			System.out.println( Math.round(Math.sqrt(number)) );

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

	for (int i=0; i<test; i++) {

		int num;
		scanf("%d", &num);
		printf("%d\n", round(sqrt(num)));

	}

}
```
