## Description
```
if check if last charecter is 'e',
	then append 'r'
if string is ending with 'er',
	Then remove last 'r' and append 'st'
if string ends with 'est'
	the print as it is...
lastly,
	append 'er' in the string
```


## Python
```python
test = int(input())
for t in range(test):
	s = input()
	if s[-1] == "e":
		print(s+"r")
	elif s[-2:] == "er":
		print(s[:-1]+"st")
	elif s[-3:] == "est":
		print(s)
	else:
		print(s+"er")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();
		for (int t=0; t<test; t++) {

			String s = sc.nextLine();
			if (s.charAt(s.length()-1) == 'e') {
				System.out.println( s+"r" );
			} else if ( s.substring(s.length()-2).equals("er") ) {
				System.out.println( s.substring(0,s.length()-1)+"st" );
			} else if ( s.substring(s.length()-3).equals("est") ) {
				System.out.println(s);
			} else {
				System.out.println(s+"er");
			}

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

		char s[30];
		fgets(s, 30, stdin);
		s[strlen(s)-1] = '\0';
		int l = strlen(s);

		if ( s[l-1] == 'e' ) {
			printf("%sr", s);
		} else if ( s[l-2]=='e' && s[l-1]=='r' ) {
			s[l-1] = '\0';
			strcat(s,"st");
			printf("%s", s);
		} else if(s[l-3]=='e'&&s[l-2]=='s'&&s[l-1]=='t') {
			printf("%s", s);
		} else {
			printf("%ser", s);
		}

	}

}
```
