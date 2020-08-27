## Description
```
In this you have to calculte for the middle least element in the list...
For that sort the array first...
The print element in middle,
	In case of two middle element,
		Print first one....
```


## Python
```python
length = int(input())
l = sorted(map(int, input().split()))
if len(l)%2:
	print(l[len(l)//2])
else:
	print(l[len(l)//2-1])
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] arr = new int[length];
		for(int i=0; i<length; i++) { arr[i] = sc.nextInt(); }

		Arrays.sort(arr);

		if ( length%2 == 0 ) {
			System.out.println( arr[length/2-1] );
		} else {
			System.out.println( arr[length/2] );
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
	for (int i=0; i<length; i++) { scanf("%d",&arr[i]); }

	for (int i=1; i<length; i++) {
		int j=i, temp = arr[i];
		while (j>0 && temp<arr[j-1]) {
			arr[j] = arr[j-1];
			j--;
		}
		arr[j] = temp;
	}

	if ( length%2 ) {
		printf("%d\n", arr[length/2]);
	} else {
		printf("%d\n", arr[length/2-1]);
	}

}
```
