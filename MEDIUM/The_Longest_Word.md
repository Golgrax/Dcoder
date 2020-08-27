## Description
```
Split the string at spaces,
	The take out the string with max len after removing symbols...
```


## Python
```python
s = input().split()

l = 0
S = ""
for i in s:
	a = "".join([k for k in i if k.isalnum()])
	if len(a) > l:
		S = a
		l = len(a)

print(S)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static String alnum(String s) {

		String o = "";
		for (int i=0; i<s.length(); i++)
			if(Character.isLetterOrDigit(s.charAt(i)))
				o += s.charAt(i);

		return o;

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String[] s = sc.nextLine().split(" ");

		int len = 0;
		String o = "";
		for (int i=0; i<s.length; i++) {
			String temp = alnum(s[i]);
			if (temp.length() > len) {
				o = temp;
				len = temp.length();
			}
		}

		System.out.println(o);

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

char* alpha(char s[]) {

	char *o = (char *)malloc((strlen(s))*sizeof(char));

	int i = 0;
	for (int j=0; j<strlen(s); j++)
		if ( isalnum(s[j]) )
			o[i++] = s[j];
	o[i] = '\0';

	return o;

}

void main() {

	char s[30], o[20]="";
	fgets(s, 30, stdin);

	char* token = strtok(s, " ");
	while (token != NULL) {
		char* temp = alpha(token);
		if (strlen(temp) > strlen(o)) {
			strcpy(o, temp);
		}
		token = strtok(NULL, " ");
	}

	printf("%s\n", o);

}
```
