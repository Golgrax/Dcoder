## Description
```
Check for each string,
	if only digits, give 'Number'
	if only alphaber, give 'String'
	if combination of both, print 'Variable'
```


## Python
```python
test = int(input())
for i in range(test):
	_,s = input().split()
	if s.isdigit():
		print("Number")
	elif s.isalpha():
		print("String")
	else:
		print("Variable") 
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();
		for (int i=0; i<test; i++) {

			String[] stringArray = sc.nextLine().split(" ");
			char[] s = stringArray[1].toCharArray();
			
			int j=0, S=0, N=0;
			while (j < s.length) {
				if ( Character.isAlphabetic(s[j]) ) { S=1; }
				if ( Character.isDigit(s[j]) ) { N=1; }
				if (S==1 && N==1) {
					System.out.println("Variable");
					break;
				}
				j++;
			}
			if (S==1 && N==0) { System.out.println("String"); }
			if (S==0 && N==1) { System.out.println("Number"); }

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void main() {

	int test;
	scanf("%d ", &test);

	for (int t=0; t<test; t++) {

		char string[30];
		fgets(string, 30, stdin);

		int i=0;
		while (string[i] != ' ') { i++; }

		int S=0, N=0;
		for (; i<strlen(string); i++) {
			if ( isalpha(string[i]) )	{ S=1; }
			if ( isdigit(string[i]) )	{ N=1; }
			if (S && N) { printf("Variable\n"); break; }
		}
		if (S && !N)	{ printf("String\n"); }
		if (!S && N)	{ printf("Number\n"); }

	}

}
```
