## Description
```
Iterate from l to h and take counter = 0
    if divisible by d then increase counter by 1..
```
## Python
```python
l,h,d = map(int, input().split())

print( len([i for i in range(l, h+1) if i%d==0]) )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int l = sc.nextInt();
		int h = sc.nextInt();
		int d = sc.nextInt();

		int count = 0;
		for (int i=l; i<=h; i++)
			if ( i%d==0 )
				count++;

		System.out.println( count );
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int l,h,d;
	scanf("%d", &l);
	scanf("%d", &h);
	scanf("%d", &d);

	int count = 0;
	for (int i=l; i<=h; i++) 
		if ( i%d==0 )
			count++;

	printf("%d\n", count);

}

```