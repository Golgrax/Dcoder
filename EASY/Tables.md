## Description
```
Take input,
and run
	for i=1 to i=10, do
		print -> input*i
```
## Python
```python
number = int(input())

for i in range(1, 11):
	print(number*i)
```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int number = sc.nextInt();

		for (int i=1; i<=10; i++) {
			System.out.println(number*i);
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int number;
	scanf("%d", &number);

	for ( int i=1; i<=10; i++ ) {
		printf("%d\n", number*i);
	}
}
```