## Description
```
Traverse through each char in string,
	and check for digit and print it...
```
## Python
```python
length = int(input())
string = input()

output = ""

for i in string:
	if i.isdigit():
		output += i+" "
output = output[:-1]

print(output)
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		sc.nextLine();
		String S = sc.nextLine();
		
		String output = "";

		for (int i=0; i<S.length(); i++) {
			if (Character.isDigit(S.charAt(i))) {
				output += S.charAt(i)+" ";
			}
		}
		output = output.substring(0, output.length()-2);

		System.out.println(output);
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {
	
	int length;
	scanf("%d ", &length);
	
	char string[20];
	fgets(string, 20, stdin);

	char output[10];
	int p=0;

	for (int i=0; i<strlen(string); i++) {
		if (isdigit(string[i])) {
			output[p++] = string[i];
			output[p++] = ' ';
		}
	}
	output[--p] = '\0';

	printf("%s\n", output);

}
```