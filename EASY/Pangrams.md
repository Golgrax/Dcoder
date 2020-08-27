## Description
```
Take input and convert it to lower to reduce no. of comparision..
Make a panagram string will all alphabet from a to z...
Traverse through input and 
	compare each char with panagram string string
	if matched then removed from it.
finally check if lenth of panagram string is 0
	then TRUE, else FALSE
```
## Python
```python
string = input().lower()
panagram = "abcdefghijklmnopqrstuvwxyz"

for i in string:
	if i in panagram:
		panagram = panagram.replace(i, "")
print("YES" if len(panagram)==0 else "NO")
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String S = sc.nextLine().toLowerCase();
		
		String panagram = "abcdefghijklmnopqrstuvwxyz";

		for (int i=0; i<S.length(); i++) {
			String temp = String.valueOf(S.charAt(i));
			if (panagram.contains(temp) ) {
				panagram = panagram.replace( temp, "");
			}
		}

		System.out.println( (panagram.length()==0) ? "YES" : "NO" );
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {
	
	char string[40];
	fgets(string, 40, stdin);

	for (int i=0; i<strlen(string); i++)
		if (isalpha(string[i]))
			string[i] = tolower(string[i]);

	char panagram[26] = "abcdefghijklmnopqrstuvwxyz";
	int base = 'a';

	for (int i=0; i<strlen(string); i++)
		if (isalpha(string[i]))
		panagram[string[i] - base] = '1';

	for (int i=0; i<26; i++) {
		if (panagram[i] != '1') {
			printf("NO\n");
			return;
		}
	}

	printf("YES\n");
}
```