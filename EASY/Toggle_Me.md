## Description
```
Toggle only alphabatic charecters....
```
## Python
```python
string = input()

output = ""
for i in string:
	if i.isalpha():
		if i.islower():
			output += i.upper()
		else:
			output += i.lower()
	else:
		output += i

print(output)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.nextLine();

		String output = "";
		for (int i=0; i<str.length(); i++) {
			char c = str.charAt(i);
			if (Character.isAlphabetic(c)) {
				if (Character.isUpperCase(c)) {
					output += Character.toLowerCase(c);
				} else {
					output += Character.toUpperCase(c);
				}
			}
			else {
				output += c;
			}
		}

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

	char str[30];
	fgets(str, 30, stdin);

	for (int i=0; i<strlen(str)-1; i++) {
		if (isalpha(str[i])) {
			if (isupper(str[i])) {
				str[i] = tolower(str[i]);
			}
			else {
				str[i] = toupper(str[i]);
			}
		}
	}

	printf("%s", str);

}

```