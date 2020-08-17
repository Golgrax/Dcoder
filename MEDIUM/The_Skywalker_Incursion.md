## Description
```

```


## Python
```python
n = int( input() )

lucas = [2, 1]
while lucas[-1] <= n:
	lucas.append(lucas[-1]+lucas[-2])

if n < 2:
	print(1)
else:
	print(lucas[-1])
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		int a=2, b=1;
		while ( b <= n ) {
			int temp = a+b;
			a = b;
			b = temp;
		}

		if ( n < 2 ) {
			System.out.println(1);
		} else {
			System.out.println(b);
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

	int a=2, b=1;
	while ( b <= n ) {
		int temp = a+b;
		a = b;
		b = temp;
	}

	if ( n < 2 ) {
		printf("1\n");
	} else {
		printf("%d\n",b);
	}

}
```
