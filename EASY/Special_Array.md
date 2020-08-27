## Description
```
Just check if all element in array is >1
```
## Python
```python
length = int(input())

num = [int(i) for i in input().split()]

for i in num:
	if i < 1:
		print("No")
		exit()
print("Yes")
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
		
		for (int i=0; i<length; i++) {
			if (array[i]<1) {
				System.out.println("No");
				System.exit(0);
			}
		}
		System.out.println("Yes");
	}
}
```
## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

	int length;
	scanf("%d", &length);

	int array[length];

	for (int i=0; i<length; i++)
		scanf("%d", &array[i]);
		
	for (int i=0; i<length; i++) {
		if (array[i]<1) {
			printf("No\n");
			exit(0);
		}
	}
	printf("Yes\n");
}
```