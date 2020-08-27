## Description
```
```
## Python
```python
a,b = map(int, input().split())
sum = a+b

if sum > 21:
	if a==11 or b==11:
		print( sum-10 )
	else:
		print( 0 )
else:
	print( sum )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int a = sc.nextInt();
		int b = sc.nextInt();

		int sum = a+b;
		if (sum > 21) {
			if (a==11 || b==11) {
				System.out.println( sum-10 );
			} else {
				System.out.println( 0 );
			}
		} else {
			System.out.println( sum );
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int a,b;
	scanf("%d", &a);
	scanf("%d", &b);

	int sum = a+b;
	if (sum > 21) {
		if (a==11 || b==11) {
			printf("%d\n", sum-10 );
		}
		else {
			printf("0\n");
		}
	} 
	else {
		printf("%d\n", sum );
	}

}

```