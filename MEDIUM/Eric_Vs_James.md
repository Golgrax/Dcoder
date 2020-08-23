## Description
```
Find LCM of all no. in given range
```


## Python
```python
def gcd(a,b):
	return gcd(b, a%b) if a%b else b

a, b = map(int, input().split())

LCM = 1
for i in range(a, b+1):
  LCM = (LCM * i)//gcd(LCM, i)

print(LCM)
```


## Java
```java
import java.util.Scanner;
public class template {

	private static long gcd(long a, long b) {
		if (a%b == 0) { return b; }
		else { return gcd(b, a%b); }
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		long a =sc.nextInt();
		long b =sc.nextInt();

		long L = 1;
		for (long i=a; i<=b; i++) { L = (L*i)/gcd(L, i); }

		System.out.println(L);

	}

}
```


## C
```c
#include <stdio.h>

long gcd(long a, long b) {
	if (a%b == 0) { return b; }
	else { return gcd(b, a%b); }
}

void main() {

	long a, b, L = 1;
	scanf("%ld", &a);
	scanf("%ld", &b);

	for (long i=a; i<=b; i++) { L = L*(long)i/gcd(L,i); }

	printf("%ld\n", L);

}
```
