## Description
```
Check if value of square root is perfactly integer..
```
## Python
```python
number = int(input())

print( "YES" if number**0.5==int(number**0.5)
			else "NO" )
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int number = sc.nextInt();

		float sqrt = (float)Math.sqrt(number);
		if ( sqrt==(int)sqrt ) {
			System.out.println("YES");
		} else {
			System.out.println("NO");
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	int number;
	scanf("%d", &number);

	float sqrt = pow( number, 0.5 );
	if ( sqrt == (int)sqrt ) {
		printf("YES\n");
	}
	else {
		printf("NO\n");
	}

}

```