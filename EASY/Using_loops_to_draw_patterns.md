## Description
```
```
## Python
```python
for i in range(0, 6):
	print(" "*(5-i)+"*"*(2*i+1))
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {		
		for (int i=0; i<=5; i++) {
			for (int j=0; j<=10; j++) {
				if (j>=5-i && j<=5+i) {
					System.out.print("*");
				} else {
					System.out.print(" ");
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

	for (int i=0; i<=5; i++) {
		for (int j=0; j<=10; j++) {
			if (j>=5-i && j<=5+i) {
				printf("*");
			}
			else {
				printf(" ");
			}
		}
		printf("\n");
	}

}

```