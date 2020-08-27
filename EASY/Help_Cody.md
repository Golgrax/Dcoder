## Description
```
Take input array,
	then sorted in reverse order
	or
	sort in ascending order
		then print in reverse order....
```
## Python
```python
length = int(input())
array = map(int, input().split())

print(*sorted(array, reverse=1))
```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		int[] array = new int[length];

		for (int i=0; i<length; i++) { array[i] = sc.nextInt(); }

		Arrays.sort(array);

		for (int i=length-1; i>=0; i--) {
			System.out.print( (i==0) ? array[i]+"\n" : array[i]+" " );
		}

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
	scanf("%d", &array[0]);
	for ( int i=1; i<length; i++ ) {
		int temp;
		scanf("%d", &temp);

		int j = i;
		while (j>0 && temp<array[j-1]) {
			array[j] = array[j-1];
			j--;
		}
		array[j] = temp;
	}

	for (int i=length-1; i>=0; i--) {
		printf( (i==0)?"%d\n":"%d ", array[i]);
	}
}
```