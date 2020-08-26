## Description
```

```


## Python
```python
b, p = map(int, input().split())
print(b**p) 
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		long b = sc.nextLong();
		long p = sc.nextLong();

		System.out.println( (long)Math.pow(b, p) );

	}

}
```


## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	long b, p;
	scanf("%ld", &b);
	scanf("%ld", &p);

	printf("%ld\n", (long)pow(b,p));

}
```
