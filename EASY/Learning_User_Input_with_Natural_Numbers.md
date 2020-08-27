## Description
```
```
## Python
```python
print( sum(i for i in range(1, int(input())+1)) )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int n = sc.nextInt();

		int sum = 0;
		for (int i=1; i<=n; i++) { sum += i; }

		System.out.println(sum);
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int n;
	scanf("%d", &n);

	int sum = 0;
	for (int i=1; i<=n; i++) { sum += i; }

	printf("%d\n", sum);

}

```