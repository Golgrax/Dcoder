## Description
```
Take a string, extract first and last digit from it...
	then add it..
```
## Python
```python
test = int(input())
for i in range(test):
    number = input()
    print( int(number[0]) + int(number[-1]) )

```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();
		sc.nextLine();

		for (int i=0; i<test; i++) {
			String num = sc.nextLine();
			System.out.println( num.charAt(0) + num.charAt(num.length()-1) - '0' - '0' );
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
	scanf("%d ", &test);


	for (int i=0; i<test; i++) {
		char num[10];
		fgets(num, 10, stdin);
		printf("%d\n", num[0]+num[strlen(num)-2]-'0'-'0' );
	}
}
```