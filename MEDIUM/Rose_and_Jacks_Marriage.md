## Description
```
Take two input arrays,
	Then sort it using insertion sort,
	Then print it..
```


## Python
```python
length = int(input())
a = list(map(int, input().split()))
b = list(map(int, input().split()))
print(*sorted(a+b))
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();

		int[] arr = new int[2*length];
		for (int i=0; i<2*length; i++) { arr[i] = sc.nextInt(); }

		Arrays.sort(arr);

		for (int i=0; i<2*length; i++) {
			System.out.print( arr[i]+" " );
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

	int arr[length*2];
	for(int i=0; i<2*length; i++) { scanf("%d", &arr[i]); }

	for (int i=1; i<2*length; i++) {

		int j=i, temp=arr[i];
		while (j>0 && arr[j-1]>temp) {
			arr[j] = arr[j-1];
			j--;
		}
		arr[j] = temp;

	}

	for (int i=0; i<2*length; i++) {
		printf("%d ", arr[i]);
	}

}
```
