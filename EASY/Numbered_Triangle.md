## Description
```
Make 2 nested loop,
outer loop run till N,
inner loop run till i;
```
## Python
```python
number = int(input())

for i in range(number):
	for j in range(number):
		if j<=i:
			print( j+1, end=("" if j==i else " ") )
	print()
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int number = sc.nextInt();
		
		for (int i=1; i<=number; i++) {
			for (int j=1; j<=number; j++) {
				if (j <= i) {
					System.out.print( (j==i) ? j : j+" " );
				}
			}
			System.out.println();
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int number;
	scanf("%d", &number);

	for (int i=1; i<=number; i++) {
			for (int j=1; j<=number; j++) {
				if (j <= i) {
					printf( (j==i) ? "%d" : "%d ", j );
				}
			}
			printf("\n");
		}
}
```