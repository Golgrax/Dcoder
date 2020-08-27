## Description
```
Take, all inputs,
	An will printing, print using new index seperated by space,
		where new = (i+shift)%length
		i = 0 to length-1
```


## Python
```python
length, shift = map(int, input().split())
l = list(map(int, input().split()))
for i in range(length):
	print(end=f"{l[(i+shift)%length]} ")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int shift = sc.nextInt();
		int[] list = new int[length];
		for (int i=0; i<length; i++) { list[i] = sc.nextInt(); }

		for (int i=0; i<length; i++) {
			System.out.print(list[(i+shift)%length]+" ");
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int length, shift;
	scanf("%d", &length);
	scanf("%d", &shift);

	int list[length];
	for (int i=0; i<length; i++) { scanf("%d", &list[i]); }

	for (int i=0; i<length; i++) {
		printf("%d ", list[(i+shift)%length]);
	}

}
```
