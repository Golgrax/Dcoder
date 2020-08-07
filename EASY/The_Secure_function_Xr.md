## Description
```
Print reminder of input divvided by 7....
```
## Python
```python
print ( int(input()) % 7 )
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int x = sc.nextInt();

		System.out.println( x%7 );
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int x;
	scanf("%d", &x);

	printf( "%d\n", x%7 );

}

```