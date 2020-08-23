## Description
```

```


## Python
```python
length = int(input())
l = list(map(int, input().split()))
print(*reversed(l))
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] list = new int[length];

		for (int i=0; i<length; i++) { list[i] = sc.nextInt(); }

		for(int i=length-1; i>=0; i--) {
			System.out.print( list[i]+" " );
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int length;
	scanf("%d", &length);

	int list[length];
	for (int i=0; i<length; i++) {
		scanf("%d", &list[i]);
	}

	for(int i=length-1; i>=0; i--) {
		printf("%d ", list[i]);
	}

}
```
