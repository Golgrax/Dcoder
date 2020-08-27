## Description
```
```
## Python
```python
l = list(map(int, input().split()))

if l[0] > l[1]:
	l[-1],l[0] = l[0],l[-1]
	if l[0] > l[1]:
		l[0],l[1] = l[1],l[0]
elif l[1] > l[2]:
	l[1],l[2] = l[2],l[1]
	if l[0] > l[1]:
		l[0],l[1] = l[1],l[0]

print(*l)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int[] l = new int[3];

		l[0] = sc.nextInt();
		l[1] = sc.nextInt();
		l[2] = sc.nextInt();

		int temp;
		if (l[0] > l[1]) {
			temp = l[0];
			l[0] = l[1];
			l[1] = temp;
			if (l[0] > l[1]) {
				temp = l[0];
				l[0] = l[1];
				l[1] = temp;
			}
		} else if (l[1] > l[2]) {
			temp = l[2];
			l[2] = l[1];
			l[1] = temp;
			if (l[0] > l[1]) {
				temp = l[0];
				l[0] = l[1];
				l[1] = temp;
			}
		}

		System.out.println(l[0]+" "+l[1]+" "+l[2]);
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int l[3];

	scanf("%d", &l[0]);
	scanf("%d", &l[1]);
	scanf("%d", &l[2]);

	int temp;
	if (l[0] > l[1]) {
		temp = l[0];
		l[0] = l[1];
		l[1] = temp;
		if (l[0] > l[1]) {
			temp = l[0];
			l[0] = l[1];
			l[1] = temp;
		}
	}
	else if (l[1] > l[2]) {
		temp = l[2];
		l[2] = l[1];
		l[1] = temp;
		if (l[0] > l[1]) {
			temp = l[0];
			l[0] = l[1];
			l[1] = temp;
		}
	}

	printf("%d %d %d\n", l[0], l[1], l[2]);

}

```