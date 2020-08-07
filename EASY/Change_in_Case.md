## Description
```
Here, you have swap case of string at given index x, y
```
## Python
```python
length = int(input())
string = input()
a, b = map(int, input().split())

swapcase = lambda x: x.lower() if x.isupper() else x.upper()

print(string[:a]+swapcase(string[a])+string[a+1:b]+swapcase(string[b])+string[b+1:])
```
## Java
```java
import java.util.Scanner;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		sc.nextLine();
		String s = sc.nextLine();
		int x = sc.nextInt(), y = sc.nextInt();

		char[] stringArray = s.toCharArray();

		for (int i=0; i<length; i++) {
			if (i==x || i==y) {
				if ( Character.isLowerCase(stringArray[i]) ) {
					stringArray[i] = Character.toUpperCase( stringArray[i] );
				} else {
					stringArray[i] = Character.toLowerCase( stringArray[i] );
				}
			}
		}

		s = String.valueOf(stringArray);

		System.out.println(s);
	}
}
```
## C
```c
#include <stdio.h>
#include <ctype.h>

void main() {
	
	int length;
	scanf("%d ", &length);
	
	char string[20];
	fgets(string, 20, stdin);

	int x, y;
	scanf("%d", &x);
	scanf("%d", &y);

	for (int i=0; i<length; i++) {
		if (i==x || i==y) {
			if ( islower(string[i]) )
				string[i] = toupper(string[i]);
			else
				string[i] = tolower(string[i]);
		}
	}

	printf("%s", string);
}
```