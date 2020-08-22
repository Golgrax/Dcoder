## Description
```
Get sum of factors, 
	and print 'True ' if sum==num
		else 'False '
```


## Python
```python
test = int(input())
for t in range(test):
	num = int(input())
	s = 1
	for i in range(2,num//2+1):
		if num%i == 0:
			s += i
	print(s==num, end=" ")
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for(int t=0; t<test; t++) {

			int num = sc.nextInt();

			int sum = 1;
			for (int i=2; i<=num/2; i++) {
				if (num%i == 0) {
					sum += i;
				}
			}
			System.out.print(sum==num ? "True " : "False ");

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
	for (int t=0; t<test; t++) {

		int num;
		scanf("%d", &num);

		int sum = 1;
		for (int i=2; i<=num/2; i++)
			if (num%i == 0)
				sum += i;

		printf( sum==num ? "True " : "False " );

	}

}
```
