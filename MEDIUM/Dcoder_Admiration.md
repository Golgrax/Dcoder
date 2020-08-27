## Description
```
As for given range n, the no of even divisible is 
    square root of n,
    so odd will be n - sqrt
```
## Python
```python
import math

test = int(input())

for i in range( test ):
	number = int(input())
	print( number-math.floor( number**0.5 ) )
```
## Java
```java
import java.util.Scanner;

public class Dcoder {

	public static void main(String[] args) {
	
		Scanner sc = new Scanner(System.in);

		int test, number;
		test = sc.nextInt();

		for (int i=0; i<test; i++) {
			number = sc.nextInt();
			System.out.println( number-(int)Math.floor( Math.sqrt(number) ) );
		}

	}
	
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	int test, number;
	scanf("%d", &test);

	for(int i = 0; i < test; i++) {
	
		scanf("%d", &number);
		number -= floor(sqrt(number));
		printf("%d\n", number);
	
	}
	
}

```