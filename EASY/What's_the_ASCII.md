## Description
```
Print ascii of value of given lateral....
```
## Python
```python
literal = input()

print( ord(literal) )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		char literal = sc.nextLine().charAt(0);

		System.out.println( (int)literal );
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	char literal;

	literal = getchar();

	printf("%d\n", literal);
}
```