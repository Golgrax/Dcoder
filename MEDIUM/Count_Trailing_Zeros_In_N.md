## Description
```
If we write any no. in term of its multiple of 
	prime factors....
We can notice that, trailing 0's is result of 2 & 5 factors,
If look closer,
	we can relate trailing 0's with no. power of 5...
Algo is as follow...
	count_zero = 0
	powerOfFive = 5
	while num/powerOfFive >= 1:
		count_zero += floor(n/i)
		powerOfFive *= 5
```


## Python
```python
n = int(input())

c = 0
i = 5
while n/i >= 1:
	c += int(n/i) 
	i *= 5

print(c)
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		int c = 0;
		float i = 5;
		while ( n/i >= 1 ) {
			c += (int)n/i;
			i *= 5;
		}

		System.out.println( c );

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int n;
	scanf("%d", &n);

	int c = 0;
	float i = 5;
	while ( n/i >= 1 ) {
		c += (int)n/i;
		i *= 5;
	}

	printf("%d\n", c);
	

}
```
