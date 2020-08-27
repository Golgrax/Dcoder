## Description
```
Take input a & b,
place largest input in b
place smallest input in a
    and follow this algorithm...

gcd(a, b) {
    if (b%a == 0) return a;
    else          return gcd(b%a, a);
}

This algo make recursive call to same function,
    if you have no. 24 54 then 54%24 = 6
            so, no.  6 24 then 24%6  = 0
            answer is 6
    similarly,
    no. 29 91 then 91%29 = 4
    no.  4 29 then 29% 4 = 1
    no.  1  4 then  4% 1 = 0

This algo is more efficient the native approch of iterating from a-1 to 1... 
```
## Python
```python
#python 3.7.1
def gcd(a, b):
    if b%a == 0:
        return a
    else:
        return gcd(b%a, a)
    
a = int(input())
b = int(input())

if a > b:
	a,b = b,a

print( gcd(a,b) )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static int gcd(int a, int b) {
		if (b%a == 0) {
			return a;
		} else {
			return gcd(b%a, a);
		}
	}
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sc.nextInt();

		if (a > b) {
			int temp = a;
			a = b;
			b = temp;
		}

		System.out.println(gcd(a, b));
	}
}
```
## C
```c
#include <stdio.h>

int gcd(int a, int b) {

	if (b%a == 0) {
		return a;
	}
	else {
		return gcd(b%a, a);
	}

}

void main() {

	int a, b;
	scanf("%d", &a);
	scanf("%d", &b);

	if (a > b) {
		int temp = a;
		a = b;
		b = temp;
	}

	printf("%d", gcd(a, b));

}

```