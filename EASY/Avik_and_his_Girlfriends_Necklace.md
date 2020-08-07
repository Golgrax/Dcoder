## Description
```
Print sorted array...
```
## Python
```python
length = int(input())
array = map(int, input().split())

print(*sorted(array))
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();

		int[] array = new int[length];
		for (int i=0; i<length; i++)
			array[i] = sc.nextInt();

		Arrays.sort(array);

		for (int i=0; i<length; i++)
			System.out.print(i+1==length ? array[i]+"\n" : array[i]+" ");
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
	for (int i=1; i<length; i++) {
		int j=i, temp;
		scanf("%d", &temp);
		while (j>0 && array[j-1]>temp) {
			array[j] = array[j-1];
			j--;
		}
		array[j] = temp;
	}

	for (int i=0; i<length; i++)
		printf(i+1==length ? "%d\n" : "%d ", array[i]);

}

```