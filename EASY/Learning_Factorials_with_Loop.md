## Description
```
```
## Python
```python
def fac(n):
	if n<=1:
		return 1
	else:
		return n*fac(n-1)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static int fac(int n) {
		if (n==1) {
			return 1;
		} else {
			return n*fac(n-1);
		}
	}
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int n = sc.nextInt();

		System.out.println(fac(n));
	}
}
```
## C
```c
#include <stdio.h>

int fac(int n) {
		if (n==1) {
			return 1;
		} else {
			return n*fac(n-1);
		}
	}

void main() {

	int n;
	scanf("%d", &n);

	printf("%d\n", fac(n));

}

```