## Description
```
Check for space and convert next char to uppper..
	Convert the first char to upper, to it is not upper...
```


## Python
```python
s = input()
print (s.title())
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static String upper(String s) {

		if ( Character.isUpperCase(s.charAt(0)) ) {
			return s;
		} else {
			return Character.toUpperCase(s.charAt(0))
						+ s.substring(1);
		}

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String[] s = sc.nextLine().split(" ");

		for (int i=0; i<s.length; i++) {
			s[i] = upper(s[i]);
		}

		for (int i=0; i<s.length; i++) {
			System.out.print( i==s.length-1 ? s[i]+"\n" : s[i]+" ");
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {

	char s[30];
	fgets(s, 30, stdin);

	if ( !isupper(s[0]) ) { s[0] = toupper(s[0]); }

	for (int i=1; i<strlen(s); i++)
		if ( s[i] == ' ' )
			if ( !isupper(s[i+1]) )
				s[i+1] = toupper(s[i+1]);

	printf("%s", s);

}
```
