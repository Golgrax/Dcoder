## Description
```
Take n and split in half in such way,
    that if n is odd,
    then first half will be less then second half..
```
## Python
```python
test = int(input())

for i in range(test):
	num = int(input())
	print(num//2, num-num//2)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {
			int num = sc.nextInt();
			System.out.println(num/2+" "+(num-num/2));
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	int test;
	scanf("%d", &test);

	for (int i=0; i<test; i++) {
		int num;
		scanf("%d", &num);
		printf("%d %d\n", num/2, num-num/2);
	}

}

```