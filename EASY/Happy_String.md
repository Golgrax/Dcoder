## Description
```
Let a be represented by 1
	and b be represented by 2
	and so on....
	So if input is 7
		  output will be gfedcba
```
## Python
```python
n = int(input())

base = ord("a")
output = ""
for i in range(n-1, -1, -1):
    output += chr(i+base)

print(output)
```
## Java
```java
import java.util.Scanner;

public class temp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num = sc.nextInt();
		
		String output = "";
		int base = (int)'a';

		for (int i=num-1; i>=0; i--)
			output += (char)(base+i);
		
		System.out.println(output);

	}
}
```
## C
```c
#include <stdio.h>

void main() {
	
	int num;

	scanf("%d", &num);

	int base = 'a';

	for (int i=num-1; i>=0; i--)
		printf("%c", i+base);

	printf("\n");
}
```