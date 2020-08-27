## Description
```
take input
    and print area of circle,
    only if radius is greater then 0,
    area with precision 2 digits....
```
## Python
```python
#python 3.7.1

pi = 3.14
radius = float(input())

if radius > 0:
    print( "%.2f" %(pi*radius*radius) )
else:
    print(0)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		float radius = sc.nextFloat();
		float pi = 3.14f;

		if (radius > 0) {
			System.out.printf("%.2f\n", pi*radius*radius);
		} else {
			System.out.println("0");
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	float pi = 3.14f;
	float radius;
	scanf("%f", &radius);

	if (radius > 0) {
		printf("%.2f\n", pi*radius*radius);
	}
	else {
		printf("0\n");
	}

}

```