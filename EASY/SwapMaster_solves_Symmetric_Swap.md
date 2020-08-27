## Description
```
    In this code you just have to reverse input array.
    If input is {1,23,5,6,7}
        you have to print {7,6,5,23,1}
```
## Python
```python
length = int(input())       # 6
array = input().split()     # 1 2 3 4 5 6
rev = reversed(array)       # 6 5 4 3 2 1
print(*rev)
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

 		int len = sc.nextInt();					// 6
 		sc.nextLine();							// Escape char
 		String[] s = sc.nextLine().split(" ");	// 1 2 3 4 5 6

 		String out = "";
 		for (int i=len-1; i>=0; i--) {			// 6 5 4 3 2 1
 			out += s[i];
 			out += i!=0 ? " " : "";
 		}

 		System.out.println(out);
 	}
}
```
## C
```c
#include <stdio.h>

void main() {
	int n, a[20];

	scanf("%d", &n);            // 6
	for (int i=0; i<n; i++)     // 1 2 3 4 5 6
		scanf("%d", &a[i]);

	for (int i=0; i<n/2; i++) {	// 6 5 4 3 2 1
		int temp = a[i];
		a[i] = a[n-1-i];
		a[n-1-i] = temp;
	}

	for (int i=0; i<n; i++)
		printf("%d ", a[i]);
	printf("\n");
}

```