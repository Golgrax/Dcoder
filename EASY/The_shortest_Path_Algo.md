## Description
```
```
## Python
```python
a,b,c,d = map(int, input().split())

A = abs(a+b)
B = abs(c+d)

print("A" if A<B else "B")
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		int d = sc.nextInt();

		int A = Math.abs(a+b);
		int B = Math.abs(c+d);

		System.out.println(A<B ? "A" : "B");
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int a,b;
	scanf("%d", &a);
	scanf("%d", &b);
	int c,d;
	scanf("%d", &c);
	scanf("%d", &d);

	int A = a+b<0 ? -(a+b) : a+b;
	int B = c+d<0 ? -(c+d) : c+d;

	printf(A<B ? "A\n" : "B\n");

}

```