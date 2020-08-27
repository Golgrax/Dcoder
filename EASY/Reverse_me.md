## Description
```
Take input and reverse it..
reverse = 0
while (input > 0)
    reverse = reverse*10 + input%10
    input = input/10
```
## Python
```python
number = input()

print( int("".join(reversed(number))) )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int number = sc.nextInt();

		int rev = 0;
		while (number > 0) {
			rev = rev*10 + number%10;
			number /= 10;
		}

		System.out.println(rev);
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	int number;
	scanf("%d", &number);

	int rev = 0;
	while (number > 0) {
		rev = rev*10 + number%10;
		number /= 10;
	}

	printf("%d\n",rev);

}

```