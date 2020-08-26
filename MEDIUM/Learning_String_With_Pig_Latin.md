## Description
```
First, check if first charecter of string is vowel of not,
	if NO,
		print 'string'+'way'
	else,
		print (string except 1st char)+(1st char of string)+'ay'
```


## Python
```python
s = input()

print(s+"way" if s[0] in "aeiou" else s[1:]+s[0]+"ay")
```


## Java
```java
import java.util.Scanner;
public class template {

	private static boolean isNotVowel (char c) {
		if (c=='a' || c=='e' || c=='i' || c=='o' || c=='u')
			return true;
		return false;
	}
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String s = sc.nextLine();

		if ( isNotVowel(s.charAt(0)) ) {
			System.out.println(s+"way");
		} else {
			System.out.println(s.substring(1)+s.charAt(0)+"ay");
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int isNotVowel (char c) {
	if (c=='a' || c=='e' || c=='i' || c=='o' || c=='u')
		return 1;
	return 0;
}

void main() {

	char s[30];
	fgets(s, 30, stdin);
	s[strlen(s)-1] = '\0';

	if (isNotVowel(s[0])) {
		printf("%sway\n", s);
	} else {
		for(int i=1; i<strlen(s); i++){ printf("%c", s[i]); }
		printf("%cay\n", s[0]);
	}

}
```
