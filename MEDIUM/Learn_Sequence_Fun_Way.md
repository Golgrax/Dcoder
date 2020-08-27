## Description
```
Given sequence is in decreasing till certain index,
	after that it start increasing till end...
First find out index at till which sequence in decreasing state....
Now, Check if index is greater then 0 and less then length
If TRUE:
	Then check for Increasing structure
		If structure found print 'Yes', else 'No'
If FALSE:
	Then return 'No'
```


## Python
```python
length = int(input())
s = list(map(int, input().split()))

i = 0
while i<length-1 and s[i]>s[i+1]:
	i += 1

i += 2
while i>0 and i<length and s[i-1]<s[i]:
	i += 1

if i==length:
	print("Yes")
else:
	print("No")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] arr = new int[length];
		for(int i=0; i<length; i++) {arr[i]=sc.nextInt();}

		int i = 0;
		while (i<length-1 && arr[i]>arr[i+1]) { i++; }

		i += 2;
		while (i>0 && i<length && arr[i-1]<arr[i]) { i--; }

		if (i == length) {
			System.out.println("Yes");
		} else {
			System.out.println("No");
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
	for (int i=0; i<length; i++) {scanf("%d",&arr[i]);}

	int i = 0;
	while (i<length-1 && arr[i]>arr[i+1]) { i++; }

	i += 2;
	while (i>0 && i<length && arr[i-1]<arr[i]) { i--; }

	if (i == length) {
		printf("Yes\n");
	} else {
		printf("No\n");
	}

}
```
