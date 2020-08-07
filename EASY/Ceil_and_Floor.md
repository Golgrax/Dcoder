## Description
```
Take input and print ceil and floor of it...
	Make sure output is in integer format
```
## Python
```python
import math

num = float(input())
print( math.ceil(num), math.floor(num) )
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		float num = sc.nextFloat();
		System.out.println( (int)Math.ceil(num)+" "+(int)Math.floor(num) );

	}
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	float num;
	scanf("%f", &num);
	printf("%d %d\n", (int)ceil(num), (int)floor(num));

}
```