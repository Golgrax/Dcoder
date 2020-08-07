## Description
```
```
## Python
```python
test = int(input())

for i in range(test):
    f = float(input())
    print("%.2f\n" %f)
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in)	;
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {
			float f = sc.nextFloat();
			System.out.printf("%.2f\n", f);
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
		float f;
		scanf("%f", &f);
		printf("%.2f\n", f);
	}

}

```