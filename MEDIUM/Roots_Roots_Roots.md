## Description
```
Check if value of delta is >= 0,
	then print roots -(b/a)
else,
	print ' '
```


## Python
```python
a, b, c = map(float, input().split())

if b*b-4*a*c >= 0:
	print("{:.2f}".format(-(b/a))) 
else:
	print(end=" ")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		float a = sc.nextFloat();
		float b = sc.nextFloat();
		float c = sc.nextFloat();

		if ( b*b-4*a*c >= 0 ) {
			System.err.printf("%.2f\n", -(b/a));
		} else {
			System.out.printf(" ");
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	float a, b, c;
	scanf("%f", &a);
	scanf("%f", &b);
	scanf("%f", &c);

	if ( b*b-4*a*c >= 0 ) {
		printf("%.2f\n", -(b/a));
	} else {
		printf(" ");
	}

}
```
