## Description
```
take input
    and print each character only once....
```
## Python
```python
string = input()
char_dictionary = {}

for char in string:
	char_dictionary.setdefault(char, 0)

print("".join(char_dictionary.keys()))
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		String output = "";

		for (int i=0; i<input.length(); i++) {
			char chr = input.charAt(i);
			if (output.indexOf(chr) == -1) {
				output += chr;
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

void main() {

	char binary[32];

	fgets(binary, 32, stdin);

	for (int i=0; i<strlen(binary)-1; i++) {
		if (binary[i] != '/') {
			printf("%c", binary[i]);
			for (int j=i+1; j<strlen(binary); j++) {
				if (binary[i]==binary[j]) {
					binary[j] = '/';
				}
			}
		}
	}
	printf("\n");

}

```