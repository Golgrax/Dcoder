## Description
```
Given temp in Farenhiet (F)
Convert to Celsius (C)

	C = ( 1.8 * F ) + 32
```
## Python
```python
F = int(input())
C = round(1.8*F) + 32
print(C)
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int F = sc.nextInt();
		
		int C = (int)Math.round(1.8F*F) + 32;

		System.out.println(C);
	}
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {
	
	int F;

	scanf("%d", &F);

	int C = (int)round(1.8*F) + 32;

	printf("%d\n", C);
}

```