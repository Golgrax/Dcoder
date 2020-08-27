## Description
```
Given array
	find out max and sum of it...
	then print (sum % max)
```
## Python
```python
length = int(input())

array = list(map(int, input().split()))

print(sum(array)%max(array))
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		int[] array = new int[length];

		for (int i=0; i<length; i++)
			array[i] = sc.nextInt();

		int sum=array[0], max=array[0];
		for (int i=1; i<length; i++) {
			sum += array[i];
			if (max < array[i])
				max = array[i];
		}

		System.out.println(sum%max);
	}
}
```
## C
```c
#include <stdio.h>

void main() {
	
	int length;
	scanf("%d ", &length);
	
	int array[length];
	for (int i=0; i<length; i++)
		scanf("%d", &array[i]);

	int sum=array[0], max=array[0];
	for (int i=1; i<length; i++) {
		sum += array[i];
		if (max < array[i])
			max = array[i];
	}

	printf("%d\n", sum % max);
}
```