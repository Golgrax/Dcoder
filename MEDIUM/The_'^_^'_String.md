## Description
```
Check if every character is sorunded by, '^' character
```


## Python
```python
test = int(input())
c = 0
for t in range(test):
	s = input()
	i = 0
	while i < len(s):
		if s[i].isalpha():
			if not(i>0 and i<len(s)-1 and [i-1]=="^" and s[i+1]=="^"):
				break
		i += 1
	if i==len(s):
		c += 1
print(c)
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int count = 0;
		int test = sc.nextInt();
		sc.nextLine();
		for (int t=0; t<test; t++) {

			char[] s = sc.nextLine().toCharArray();
			int i=0;
			while ( i < s.length ) {
				if ( Character.isAlphabetic(s[i]) )
					if ((i>0 && i<s.length-1 && s[i-1]=='^' && s[i+1]=='^') == false) 
						break;
				i++;
			}
			if ( i == s.length ) { count++; }

		}

		System.out.println(count);

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {

	int count = 0;
	int test;
	scanf("%d ", &test);
	for (int t=0; t<test; t++) {

		char s[30];
		fgets(s, 30, stdin);
		
		int i=0;
		while ( i < strlen(s)-1 ) {
			if ( isalpha(s[i]) )
				if ((i>0 && i<strlen(s)-2 && s[i-1]=='^' && s[i+1]=='^') == 0) 
						break;
				i++;
			}
			if ( i == strlen(s)-1 ) { count++; }

		}

		printf("%d\n", count);

}
```
