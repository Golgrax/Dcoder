## Description
```
Here,
	we have to find x from n
	where n = x^x
We can simply do it by using, power function by,
		Iterating from 1 to n
			and return Yes once x^x == n
			and return No once x^x > n
```


## Python
```python

```


## Java
```java
import java.util.Scanner;

public class Dcoder {

	private static boolean root(long n) {

		int i = 1;
		while ( (long)Math.pow(i, i) <= n ) {
			if ((long)Math.pow(i, i) == n) { return true; }
			i++;
		}
		return false;

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		for (int i=0; i<length; i++) {
			long N = sc.nextInt();
			System.out.print( root(N) ? "Yes " : "No " );
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <math.h>

int root(long n) {

	int i = 1;
	while ( (long)pow(i, i) <= n ) {
		if ((long)pow(i, i) == n) { return 1; }
		i++;
	}
	return 0;

}

void main() {

	int length;
	scanf("%d", &length);

	for (int i=0; i<length; i++) {

		long int N;
		scanf("%ld", &N);
		printf("%s ", root(N) ? "Yes" : "No");

	}

}
```
