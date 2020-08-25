## Description
```
Iterate through list and check if any two number sum
	is equal to input sum, 
	Note: both number should not have same index...
```


## Python
```python
length, S = map(int, input().split())
l = list(map(int, input().split()))

for i in range(length):
	for j in range(i+1,length):
		if l[i]+l[j]==S:
			print("Yes")
			exit(0)
print("No")
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int sum = sc.nextInt();
		int[] arr = new int[length];
		for (int i=0; i<length; i++) { arr[i] = sc.nextInt(); }

		for (int i=0; i<length; i++) {
			for (int j=i+1; j<length; j++) {
				if ( arr[i]+arr[j] == sum ) {
					System.out.println("Yes");
					System.exit(0);
				}
			}
		}
		System.out.println("No");

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

	int length, sum;
	scanf("%d", &length);
	scanf("%d", &sum);

	int arr[length];
	for (int i=0; i<length; i++) { scanf("%d", &arr[i]); }

	for (int i=0; i<length; i++) {
		for (int j=i+1; j<length; j++) {
			if ( arr[i]+arr[j] == sum ) {
				printf("Yes\n");
				exit(0);
			}
		}
	}
	printf("No\n");

}
```
