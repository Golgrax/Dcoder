## Description
```
Print next fibonacci no. of the given no.
```


## Python
```python
test = int(input())
for i in range(test):
	n = int(input())
	a, b = 0,1
	while a+b <= n:
		a, b = b, a+b
	print(a+b)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int i=0; i<test; i++) {

			int num = sc.nextInt();
			int a=0, b=1, c;
			while (a+b <= num) { c=a; a=b; b=a+c; }
			System.out.println(a+b);

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

		int num, a=0, b=1, c;
		scanf("%d", &num);

		while (a+b <= num) { c=a; a=b; b=c+a; }
		printf("%d\n", a+b);
		

	}

}
```
