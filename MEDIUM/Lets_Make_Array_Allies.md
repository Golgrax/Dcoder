## Description
```
First sort the array,
	the print element at index 'length - index'
```


## Python
```python
length, I = map(int, input().split())
l = sorted(map(int, input().split()))
print(l[length-I]) 
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int index = sc.nextInt();

		int[] arr = new int[length];
		for(int i=0; i<length; i++) { arr[i] = sc.nextInt(); }

		Arrays.sort(arr);

		System.out.println(arr[length-index]);

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int length, index;
	scanf("%d", &length);
	scanf("%d", &index);

	int arr[length];
	for(int i=0; i<length; i++) {scanf("%d",&arr[i]);}

	for (int i=1; i<length; i++) {
		int j=i, temp=arr[i];
		while (j>0 && temp<arr[j-1]) {
			arr[j]=arr[j-1];
			j--;
		}
		arr[j] = temp;
	}

	printf("%d\n", arr[length-index]);

}
```
