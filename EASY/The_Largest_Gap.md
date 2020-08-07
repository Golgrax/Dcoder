## Description
```
Just find largest and smallest in given array and print subtraction of it..
```
## Python
```python
length = int(input())

l = list(map( int, input().split() ))

print( max(l)-min(l) )
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();

		int min = 536871066;
		int max = 0;

		for (int i=0; i<length; i++) {
			
			int temp = sc.nextInt();
			if (temp > max)	max = temp;
			if (temp < min) min = temp;

		}
		
		System.out.println( max-min );
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int length;
	scanf("%d", &length);

	int min = 536871066;
	int max = 0;

		for (int i=0; i<length; i++) {
			
			int temp;
			scanf("%d", &temp);

			if (temp > max)	max = temp;
			if (temp < min) min = temp;

		}
		
		printf( "%d\n", max-min );

}
```