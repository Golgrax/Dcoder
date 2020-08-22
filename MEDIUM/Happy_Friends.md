## Description
```
Take input, and sort the array, 
	and print, sum of first x element,
	where x is no. of friend to satisfy
```


## Python
```python
test = int(input())
for i in range(test):
	length = int(input())
	friend = sorted(map(int, input().split()))
	satisfy = int(input())
	print(sum(friend[:satisfy])) 
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int t=0; t<test; t++) {

			int length = sc.nextInt();
			int[] friend = new int[length];
			for(int i=0;i<length; i++) { friend[i] = sc.nextInt(); }
			int satisfy = sc.nextInt();

			Arrays.sort( friend );

			int sum = 0;
			for (int i=0; i<satisfy; i++) { sum += friend[i]; }
			System.out.println(sum);

		}

	}

}
```


## C
```c
#include <stdio.h>

int smallest(int arr[], int length) {

	int s = 0;
	for (int i=0; i<length; i++)
		if ( arr[i] != -1 )
			if ( arr[s] >arr[i] ) 
				s = i;
	
	return s;

}

void main() {

	int test;
	scanf("%d", &test);
	for (int t=0; t<test; t++) {

		int length, satisfy;
		scanf("%d", &length);

		int friend[length];
		for(int i=0; i<length; i++) { scanf("%d", &friend[i]); }
		scanf("%d", &satisfy);

		int sum = 0;
		for (int i=0; i<satisfy; i++) {
			int in = smallest(friend, length);
			sum += friend[in];
			friend[in] = -1;
		}
		printf("%d\n", sum);

	}

}
```
