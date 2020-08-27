## Description
```
Simply check,
if a+b == 6
	or a-b == 6
	or b-a == 6
```
## Python
```python
a, b = map(int, input().split())

if a+b==6 or abs(a-b)==6:
	print("Love")
else:
	print("Hate")
```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sc.nextInt();

		if (a+b==6 || Math.abs(a-b)==6) {
			System.out.println("Love");
		} else {
			System.out.println("Hate");
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int a, b;
	scanf("%d", &a);
	scanf("%d", &b);

	if (a+b==6 || a-b==6 || a-b==-6) {
		printf("Love\n");
	} else {
		printf("Hate\n");
	}
}
```