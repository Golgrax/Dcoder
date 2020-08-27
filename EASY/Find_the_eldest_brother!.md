## Description
```
Take 5 inputs
    and print max of it....
```
## Python
```python
brothers_age = list( map(int, input().split()) )

print(max(brothers_age))
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int[] brothers = new int[5];
		int eldest = 1;

		for (int i=0; i<5; i++) {
			brothers[i] = sc.nextInt();
			if (eldest < brothers[i]) { eldest=brothers[i]; }
		}

		System.out.println(eldest);
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int brothers[5];
	int eldest = 1;

	for (int i=0; i<5; i++) {
		scanf("%d", &brothers[i]);
		if (eldest < brothers[i]) { eldest=brothers[i]; }
	}

	printf("%d\n",eldest);

}

```