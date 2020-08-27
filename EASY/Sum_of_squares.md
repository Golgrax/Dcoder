## Description
```
```
## Python
```python
l,h = map(int, input().split())

sum = 0
for i in range(l, h+1):
	sum += i**2

print(sum)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int l = sc.nextInt();
		int h = sc.nextInt();

		int sum = 0;
		for (int i=0; i<=h; i++) {
			sum += i*i;
		}

		System.out.println(sum);
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int l, h;
	scanf("%d", &l);
	scanf("%d", &h);

	int sum = 0;
	for (int i=0; i<=h; i++) {
		sum += i*i;
	}

	printf("%d", sum);

}

```