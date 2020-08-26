## Description
```
During test input,
	for ranges, print sum of all element, present at index in this ranges...
```


## Python
```python
length = int(input())
l = list(map(int, input().split()))

test = int(input())
for t in range(test):
	a, b = map(int, input().split())
	print(sum(l[a-1:b]))
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] arr = new int[length];
		for (int i=0; i<length; i++) { arr[i] = sc.nextInt(); }

		int test = sc.nextInt();
		for (int t=0; t<test; t++) {
			int a = sc.nextInt();
			int b = sc.nextInt();

			int sum = 0;
			for (int i=a-1; i<=b-1; i++) { sum += arr[i]; }
			System.out.println(sum);
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
	int arr[length];
	for (int i=0; i<length; i++) { scanf("%d", &arr[i]); }

	int test;
	scanf("%d", &test);
	for (int t=0; t<test; t++) {
		int a, b;
		scanf("%d", &a);
		scanf("%d", &b);

		int sum = 0;
		for (int i=a-1; i<=b-1; i++) { sum += arr[i]; }
		printf("%d\n", sum);
	}

}
```
