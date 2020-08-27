## Description
```

```


## Python
```python
n = int(input())

for i in range(n):
	s = ""
	for j in range(i+1):
		s += str(j+1)
	s = s[-1:0:-1] + s
	print(" "*(n-1-i)+s)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		for (int i=0; i<n; i++) {
			for (int j=0; j<2*n; j++) {
				if ( j < n ) {
					if ( n-j-1 > i ) { System.out.print(" "); }
					else { System.out.print(n-j); }
				} else {
					if ( j-n < i ) { System.out.print(j-n+2); }
				}
			}
			System.out.println();
		}
	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int n;
	scanf("%d", &n);

	for (int i=0; i<n; i++) {
		for (int j=0; j<2*n; j++) {
			if ( j < n ) {
				if ( n-j-1 > i ) { printf(" "); }
				else { printf("%d", n-j); }
			} else {
				if ( j-n < i ) { printf("%d", j-n+2); }
			}
		}
		printf("\n");
	}

}
```
