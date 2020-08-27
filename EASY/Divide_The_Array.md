## Description
```
Take input array....
Iterate form 1 to length of array and increment by 2:
	print if array[i]%2==0
```
## Python
```python
length = int(input())
l = list(map(int, input().split()))

o = []
for i in range(1, len(l), 2):
    if l[i]%2==0 and i%2==1:
        o.append(str(l[i]))  
    
print(" ".join(o))
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		int[] array = new int[length];

		for (int i=0; i<length; i++)
			array[i] = sc.nextInt();
		
		for (int i=1; i<length; i+=2)
			if (array[i]%2==0)
				System.out.print((i+1>=length) ? array[i]+"\n" : array[i]+" ");
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int length;
	scanf("%d", &length);
	int array[length];

	for (int i=0; i<length; i++)
		scanf("%d", &array[i]);
		
	for (int i=1; i<length; i+=2)
		if (array[i]%2==0)
			printf( (i+1>=length) ? "%d\n" : "%d ", array[i]);
}
```