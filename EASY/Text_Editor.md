## Description
```
Just convert input to upper case..```
## Python
```python
test = int(input())

l = [input() for i in range(test)]

for i in map(lambda x: x.upper(), l):
	print(i)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();
		sc.nextLine();

		String[] S = new String[test];
		for (int i=0; i<test; i++)
			S[i] = sc.nextLine();

		for (int i=0; i<test; i++)
			System.out.println(S[i].toUpperCase());
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {

	int test;
	scanf("%d ", &test);

	char S[test][10];
	for (int i=0; i<test; i++) {
		fgets(S[i], 10, stdin);
	}
	

	for (int i=0; i<test; i++)
		for (int j=0; j<strlen(S[i]); j++)
			printf("%c", toupper(S[i][j]));
}

```