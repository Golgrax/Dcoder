## Description
```
Replace consecative repeated character with count of it, not count is not 1.
```


## Python
```python
s = input()

o = ""
i = 0
while i<len(s):
	o += s[i]
	j = i+1
	while j<len(s) and s[i]==s[j]:
		j += 1
	if j > i+1:
		o += str(j-i)
	i = j

if len(s) <= len(o):
	print(s)
else:
	print(o)
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		char[] s = sc.nextLine().toCharArray();
		String o = "";

		int i = 0;
		while (i < s.length ) {
			
			o += s[i];
			
			int j = i+1;
			while ( j<s.length && s[i]==s[j] ) { j++; }

			if (j > i+1) { o += String.valueOf(j-i); }
			i = j;

		}

		System.out.println( s.length<=o.length() ? String.valueOf(s) : o );

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char s[30], o[30];
	fgets(s, 30, stdin);
	int e = 0;

	int i = 0;
	while ( i < strlen(s)-1 ) {
		
		o[e++] = s[i];
		
		int j = i+1;
		while (j<strlen(s)-1 && s[i]==s[j]) { j++; }

		if (j > i+1) {
			int t = j-i;
			while (t) { o[e++] = t%10+'0'; }
		}
		i = j;

	}
	o[e] = '\0';

	printf("%s\n", strlen(s)<=strlen(o) ? s : o );

}
```
