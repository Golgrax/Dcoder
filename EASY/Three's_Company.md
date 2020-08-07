## Description
```
Just print each char of string thrice(3)..
```
## Python
```python
length = int(input())

output = ""

for i in input():
    output += i*3

print(output)
```
## Java
```java
import java.util.Scanner;

public class temp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		sc.nextLine();				// Escape Char
		String s = sc.nextLine();

		String output = "";

		for (int i=0; i<s.length(); i++)
			for (int j=1; j<=3; j++)
				output += s.charAt(i);
			
		System.out.println(output);
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {
	
	int length;
	scanf("%d ", &length);
	
	char string[10];
	fgets(string, 10, stdin);

	
	for (int i=0; i<strlen(string); i++)
		for (int j=1; j<=3; j++)
			printf("%c", string[i]);
}
```