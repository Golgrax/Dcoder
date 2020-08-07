## Description
```
Just count prime no. in given list...
follow this algo to check prime no.
def isprime(n):
	if n==2 or n==3:
		return True
	if n<2 or n%2==0 or n%3==0:
		return False
	for i in range(5, int(n**0.5), 6):
		if n%i==0 and n%(i+2)==0:
			return False
	return True

```
## Python
```python
def isprime(n):
	if n==2 or n==3:
		return True
	if n<2 or n%2==0 or n%3==0:
		return False
	for i in range(5, int(n**0.5), 6):
		if n%i==0 and n%(i+2)==0:
			return False
	return True

length = int( input() )
num = map(int, input().split())
print(len([n for n in num if isprime(n)]))
```
## Java
```java
import java.util.*;

public class zztemp {
	public static boolean isprime(int n) {
		if (n==2 || n==3)
			return true;
		if (n%2==0 || n%3==0 || n<2)
			return false;
		for (int i=5; i*i<n; i+=6) 
			if (n%i==0 || n%(i+2)==0)
				return false;
		return true;
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		int count = 0;

		for (int i=0; i<length; i++)
			if (isprime(sc.nextInt()))
				count++;

		System.out.println(count);

	}
}
```
## C
```c
#include <stdio.h>

enum bool { true=1, false=0};

int isprime(n) {
	if (n==2 || n==3)
			return true;
		if (n%2==0 || n%3==0 || n<2)
			return false;
		for (int i=5; i*i<n; i+=6) 
			if (n%i==0 || n%(i+2)==0)
				return false;
		return true;
	}

void main() {

	int length;
	scanf("%d ", &length);
	int count = 0;

	for (int i=0; i<length; i++) {
		int temp;
		scanf("%d", &temp);
		if (isprime(temp)) {
			count++;
		}
	}

	printf("%d\n", count);
}
```