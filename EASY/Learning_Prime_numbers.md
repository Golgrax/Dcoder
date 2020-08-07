## Description
```
```
## Python
```python
def isPrime(n):
	if n<2:
		return False
	if n==2 or n==3:
		return True
	if n%2==0 or n%3==0:
		return False
	
	for i in range(5, int(n**0.5)+1, 6):
		if n%i==0 or n%(i+2)==0:
			return False

	return True


l,h = map(int, input().split())
for i in range(l, h+1):
	if isPrime(i):
		print(i)
```
## Java
```java
import java.util.*;

public class zztemp {
	public static boolean isPrime(int n) {
		if (n<2)
			return false;
		if (n==2 || n==3)
			return true;
		if (n%2==0 || n%3==0)
			return false;
		
		for (int i=5; i*i<=n; i++)
			if (n%i==0 || n%(i+2)==0)
				return false;

		return true;
	}
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int l = sc.nextInt();
		int h = sc.nextInt();

		for (int i=l; i<=h; i++)
			if (isPrime(i))
				System.out.println(i);
	}
}
```
## C
```c
#include <stdio.h>

enum boolean {false, true};

int isPrime(int n) {
	if (n<2)
		return false;
	if (n==2 || n==3)
		return true;
	if (n%2==0 || n%3==0)
		return false;
	
	for (int i=5; i*i<=n; i++)
		if (n%i==0 || n%(i+2)==0)
			return false;

	return true;
}

void main() {

	int a,b;
	scanf("%d", &a);
	scanf("%d", &b);

	for (int i=a; i<=b; i++)
		if (isprime(i))
			printf("%d\n",i);

}

```