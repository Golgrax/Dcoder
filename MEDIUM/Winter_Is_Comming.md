## Description
```
Iterate at odd index and calculate sum
Iterate at even index and calculate sum
print max of even & odd sum
```


## Python
```python
test = int(input())

for i in range(test):
	length = int(input())
	l = list(map(int, input().split()))
	e = sum(l[i] for i in range(0,length,2))
	o = sum(l[i] for i in range(1,length,2))
	print(max(e, o))
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int i=0; i<test; i++) {

			int length = sc.nextInt();
			int[] arr = new int[length];
			for(int j=0; j<length; j++) { arr[j]=sc.nextInt(); }

			int e=0, o=0;
			for ( int j=0; j<length; j+=2 ) { e += arr[j]; }
			for ( int j=1; j<length; j+=2 ) { o += arr[j]; }

			System.out.println( e>0 ? e : o );

		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int test;
	scanf("%d", &test);
	for (int i=0; i<test; i++) {

		int length;
		scanf("%d", &length);
		int arr[length];
		for (int j=0; j<length; j++)
			scanf("%d", &arr[j]);

		int e=0, o=0;
		for (int j=0; j<length; j+=2)
			e += arr[j];
		for (int j=1; j<length; j+=2)
			o += arr[j];

		printf("%d\n", e>0 ? e : o);

	}

}
```
