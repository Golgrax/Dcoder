## Description
```
You have to find a/GCD and b/GCD,
	where GCD is Greates Common Divisior of a and b
Find min from input, (a, b)
Check if a%min or b%min both is not 0
	this mean common divisior is not found..
repeat min-- if min>1
print a/GCD and b/GCD
```
## Python
```python
a,b = map(int, input().split())
l = min(a, b)

while l>1 and (a%l!=0 or b%l!=0):l -= 1

print(a//l, b//l)
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		int min = (a<b) ? a : b;

		while ( min>1 && (a%min != 0 || b%min != 0) ) { min -= 1; }

		System.out.println( a/min + " " + b/min );
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int a, b;
	scanf("%d", &a);
	scanf("%d", &b);
		
	int min = (a<b) ? a : b;

	while ( min>1 && (a%min != 0 || b%min != 0) ) { min -= 1; }

	printf("%d %d\n", a/min, b/min );
}
```